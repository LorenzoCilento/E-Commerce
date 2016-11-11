
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

	public class ItemDAO extends ConnectionDAO implements QueryItemInterface {
		public ItemDAO() {
			super();
	}

	@Override
	public void addItem(Item item) {
		try {
			final String query = "INSERT into item(id,name,category,price,vote,description,duration,startDate) values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps = createConnection().prepareStatement(query);
			// ps.setString(1, user.getUsername());
			// ps.setString(2, user.getPassword());

			ps.executeUpdate();

			closeConnection();

		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("SQLException:" + e.getSQLState());
			System.out.println("Insert Failed -> duplicated Key!!");
		}

	}

	@Override
	public void removeItem(String id) {
		try {
			final String query = "DELETE FROM my_db.item WHERE id=?";
			PreparedStatement ps = createConnection().prepareStatement(query);

			ps.setString(1, id);

			ps.execute();

			closeConnection();

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Impossible to delete the item: " + id);
		}
	}

	public void removeItem(Item item) {
		// TODO Auto-generated method stub

	}

	@Override
	public JSONObject getAllItems() {
		JSONObject json = new JSONObject();
		JSONArray items = new JSONArray();
		final String query = "select * from my_db.item ;";
		PreparedStatement ps = null;
		ResultSet mResultSet = null;
		try {
			ps = createConnection().prepareStatement(query);
			mResultSet = ps.executeQuery();
			
			if(mResultSet != null) {
				while (mResultSet.next()) {
					JSONObject item = new JSONObject();
					item.put("id", mResultSet.getString("id"));
					item.put("name", mResultSet.getString("name"));
					item.put("category", mResultSet.getString("category"));
					item.put("price", mResultSet.getString("price"));
					item.put("vote", mResultSet.getString("vote"));
					item.put("description", mResultSet.getString("description"));
					item.put("duration", mResultSet.getString("duration"));
					item.put("path", mResultSet.getString("path"));
	
					items.put(item);
				}
			}
			json.put("items", items);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		}
		finally {
			try {
				
				ps.close();
				mResultSet.close();
				closeConnection();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return json;
	}

	@Override
	public JSONObject getItem(int id) {

		JSONObject json = new JSONObject();
		JSONArray items = new JSONArray();
		try {
			final String query = "select * from my_db.item where id=?";
			final PreparedStatement ps = createConnection().prepareStatement(query);
			ps.setString(1, "" + id);
			ResultSet mResultSet = ps.executeQuery();

			while (mResultSet.next()) {
				JSONObject item = new JSONObject();
				item.put("id", mResultSet.getString("id"));
				item.put("name", mResultSet.getString("name"));
				item.put("category", mResultSet.getString("category"));
				item.put("price", mResultSet.getString("price"));
				item.put("vote", mResultSet.getString("vote"));
				item.put("description", mResultSet.getString("description"));
				item.put("duration", mResultSet.getString("duration"));
				item.put("path", mResultSet.getString("path"));

				items.put(item);
			}
			json.put("item", items);

			closeConnection();

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
			final PreparedStatement ps = createConnection().prepareStatement(query);
			ps.setString(1, category);
			ResultSet mResultSet = ps.executeQuery();

			while (mResultSet.next()) {
				JSONObject item = new JSONObject();
				item.put("id", mResultSet.getString("id"));
				item.put("name", mResultSet.getString("name"));
				item.put("category", mResultSet.getString("category"));
				item.put("price", mResultSet.getString("price"));
				item.put("vote", mResultSet.getString("vote"));
				item.put("description", mResultSet.getString("description"));
				item.put("duration", mResultSet.getString("duration"));
				item.put("path", mResultSet.getString("path"));

				items.put(item);
			}
			json.put("item", items);

			closeConnection();

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
	public void getLastItems() {
		// TODO Auto-generated method stub

	}


}