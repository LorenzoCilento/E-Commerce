package connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONObject;

import model.bean.User;
import util.Factories;



public class UserDAO implements QueryUserInterface {
	
	@Override
	public void addUser(final User user){
		try {
			final String query ="INSERT into user(username,password,name,surname,email) values(?,?,?,?,?)";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getName());
			ps.setString(4, user.getSurname());
			ps.setString(5, user.getEmail());
			
			ps.executeUpdate();			
	
			connection.close();
			System.out.println("User inserted");
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("SQLException:" + e.getSQLState());
			System.out.println("Impossible to add new User in UserDAO!!");
		}
	}

	@Override
	public JSONObject getAllUsers() {
		JSONObject json = new JSONObject();
		JSONArray users = new JSONArray();

		try {
			final String query = "select * from my_db.user ;";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			final ResultSet mResultSet = ps.executeQuery();
			
			if(mResultSet != null) {
				while (mResultSet.next()) {
					JSONObject user = new JSONObject();
					user.put("username", mResultSet.getString("username"));
					user.put("password", mResultSet.getString("password"));
					user.put("name", mResultSet.getString("name"));
					user.put("surname", mResultSet.getString("surname"));
					user.put("email", mResultSet.getString("email"));
					
					users.put(user);
				}
			}
			
			json.put("users", users);
			connection.close();
		}catch(Exception e){}
		
		return json;
	}

	@Override
	public User getUser(final String username){
		User user = Factories.getInstance().makeUser();
		
		try {
			final String query = "SELECT * FROM user WHERE username=?";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, username);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				user.setUsername(rs.getString(1));
				user.setPassword(rs.getString(2));
			}
			
			connection.close();
		} catch (Exception e) {
			System.out.println("User non presente nel DataBase!!!");
		}
		
		return user;
	} 
	public boolean validate(String username, String password){
		User user = getUser(username);
		
		if(user.getUsername() != null && user.getPassword().equals(password))
			return true;
		return false;
	}
	
	@Override
	public void removeUser(String username){
		try {
			final String query = "DELETE FROM my_db.user WHERE username=?";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, username);
			
			ps.execute();
			
			connection.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Impossible to delete the user: " + username);
		}
	}
		
	@Override
	public void updateUser(final String username, final String password){
		try {
			final String query = "UPDATE my_db.user SET username=?,password=? WHERE username=?";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, username);
			
			ps.executeUpdate();
			
			connection.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Impossible to update the user: " + username);
		}
	}
	
}