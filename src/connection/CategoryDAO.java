package connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

public class CategoryDAO extends ConnectionDAO implements QueryCategoryInterface {

	@Override
	public void addCategory(String category) {
		try {
			final String query = "INSERT into category(name) values(?)";
			PreparedStatement ps = createConnection().prepareStatement(query);
			ps.setString(1, category);
			ps.executeUpdate();
		
			closeConnection();

		} catch (SQLException e) {
			System.out.println("SQLException:" + e.getSQLState());
			System.out.println("Insert Failed -> duplicated Key!!");
		}
		
	}

	@Override
	public void removeCategory(String category) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public JSONObject getAllCategory() {
		JSONObject json = new JSONObject();
		JSONArray categories = new JSONArray();
		try {

			final String query = "select * from my_db.category ;";
			final PreparedStatement ps = createConnection().prepareStatement(query);
			final ResultSet mResultSet = ps.executeQuery();
			while (mResultSet.next()) {
				JSONObject category = new JSONObject();
				category.put("name", mResultSet.getString("name"));
				
				categories.put(category);
			}
			json.put("categories", categories);
			
			closeConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		}

		return json;

	}

	@Override
	public JSONObject getCategory(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modifyCategory() {
		// TODO Auto-generated method stub
		
	}

}
