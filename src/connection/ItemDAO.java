
package connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import model.bean.Bid;
import model.bean.Item;

public class ItemDAO implements QueryItemInterface {

	@Override
	public void addItem(Item item) {
		try {
			final String query = "INSERT into item(name,category,price,description,path,username) values(?,?,?,?,?,?)";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			

			ps.setString(1, item.getName());
			ps.setString(2, item.getCategory());
			ps.setDouble(3, item.getPrice());
			ps.setString(4, item.getDescription());
			ps.setString(5, item.getPath());
			ps.setString(6, item.getUsername());
			ps.executeUpdate();

			connection.close();

		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Insert Item Failed!!!");
		}

	}

	@Override
	public void removeItem(int id) {
		try {
			final String query = "DELETE FROM my_db.item WHERE id=?;";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);

			ps.setInt(1, id);
			ps.executeUpdate();

			connection.close();

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Impossible to delete the item:" + id);
		}
	}


	@Override
	public JSONObject getAllItems() {
		JSONObject json = new JSONObject();
		JSONArray items = new JSONArray();
		try {
				final String query = "select * from my_db.item ;";
				final Connection connection = ConnectionDAO.getInstance().createConnection();
				final PreparedStatement ps = connection.prepareStatement(query);
				final ResultSet mResultSet = ps.executeQuery();
				
				while (mResultSet.next()) {
					JSONObject item = new JSONObject();
					
					item.put("id", mResultSet.getInt("id"));
					item.put("name", mResultSet.getString("name"));
					item.put("category", mResultSet.getString("category"));
					item.put("price", mResultSet.getDouble("price"));
					item.put("vote", mResultSet.getInt("vote"));
					item.put("description", mResultSet.getString("description"));
					item.put("path", mResultSet.getString("path"));
	
					items.put(item);
				}
			
			connection.close();
			json.put("items", items);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		}

		return json;
	}

	@Override
	public JSONObject getItem(int id) {

		JSONObject json = new JSONObject();
		JSONArray item = new JSONArray();
		try {
			final String query = "select * from my_db.item where id=?";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			ps.setString(1, "" + id);
			final ResultSet mResultSet = ps.executeQuery();

			while (mResultSet.next()) {
				JSONObject it = new JSONObject();
				it.put("id", mResultSet.getInt("id"));
				it.put("name", mResultSet.getString("name"));
				it.put("category", mResultSet.getString("category"));
				it.put("price", mResultSet.getDouble("price"));
				it.put("vote", mResultSet.getInt("vote"));
				it.put("description", mResultSet.getString("description"));
				it.put("path", mResultSet.getString("path"));

				item.put(it);
			}
			json.put("item", item);

			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		}

		return json;
	}
	
	@Override
	public JSONObject getAllItemsByCategory(String category) {
		JSONObject json = new JSONObject();
		JSONArray items = new JSONArray();
		try {
			final String query = "select * from my_db.item where category=?";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			ps.setString(1, category);
			final ResultSet mResultSet = ps.executeQuery();

			while (mResultSet.next()) {
				JSONObject item = new JSONObject();
				item.put("id", mResultSet.getInt("id"));
				item.put("name", mResultSet.getString("name"));
				item.put("category", mResultSet.getString("category"));
				item.put("price", mResultSet.getDouble("price"));
				item.put("vote", mResultSet.getInt("vote"));
				item.put("description", mResultSet.getString("description"));
				item.put("path", mResultSet.getString("path"));

				items.put(item);
			}
			json.put("item", items);

			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		}

		return json;
	}

	@Override
	public void updateBidItem(Item item, Bid bid) {
		// TODO Auto-generated method stub

	}

	@Override
	public int getLastItemId() {
		int id = 0;
		try {
			final String query = "SELECT max(Id) FROM my_db.item; ";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement pStatement = connection.prepareStatement(query);
			
			final ResultSet rs= pStatement.executeQuery();
			while(rs.next()){
				id = rs.getInt("max(id)");
			}
		} catch (Exception e) {
			
		}
		return id;
	}

	@Override
	public JSONObject getAllUserItems(String username) {
		JSONObject json = new JSONObject();
		JSONArray items = new JSONArray();
		try {
				final String query = "select * from my_db.item WHERE username = ? ;";
				final Connection connection = ConnectionDAO.getInstance().createConnection();
				final PreparedStatement ps = connection.prepareStatement(query);
				ps.setString(1, username);
				final ResultSet mResultSet = ps.executeQuery();
				
				while (mResultSet.next()) {
					JSONObject item = new JSONObject();
					
					item.put("id", mResultSet.getInt("id"));
					item.put("name", mResultSet.getString("name"));
					item.put("category", mResultSet.getString("category"));
					item.put("price", mResultSet.getDouble("price"));
					item.put("vote", mResultSet.getInt("vote"));
					item.put("description", mResultSet.getString("description"));
					item.put("path", mResultSet.getString("path"));
					item.put("username", mResultSet.getString("username"));
	
					items.put(item);
				}
			
			connection.close();
			json.put("items", items);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		}

		return json;
	}


}