package connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONObject;

import model.bean.Admin;
import model.bean.Comment;
import model.bean.Item;
import model.bean.User;
import util.PasswordCript;

public class AdminDAO implements QueryAdminInterface {

	@Override
	public void addUser(final User user){
		try {
			final String query ="INSERT into user(username,password,name,surname,email) values(?,?,?,?,?)";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			
			final String pass=user.getPassword();
			
			ps.setString(1, user.getUsername());
			ps.setString(2, PasswordCript.encrypt(pass));
			ps.setString(3, user.getName());
			ps.setString(4, user.getSurname());
			ps.setString(5, user.getEmail());
			
			ps.executeUpdate();			
	
			connection.close();
			System.out.println("User inserito");
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("SQLException:" + e.getSQLState());
			System.out.println("Impossible to add new User in AdminDAO!!");
		}
	}

	@Override
	public void addAdmin(final Admin admin) {
		try {
			final String query ="INSERT into admin(username,password,name,surname,email) values(?,?,?,?,?)";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			
			final String pass=admin.getPassword();
			
			ps.setString(1, admin.getUsername());
			ps.setString(2, PasswordCript.encrypt(pass));
			ps.setString(3, admin.getName());
			ps.setString(4, admin.getSurname());
			ps.setString(5, admin.getEmail());
			
			ps.executeUpdate();			
	
			connection.close();
			
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Impossible to add new Admin in AdminDAO.java!!");
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
			
			
				while (mResultSet.next()) {
					JSONObject user = new JSONObject();
					user.put("username", mResultSet.getString("username"));
					user.put("password", mResultSet.getString("password"));
					user.put("name", mResultSet.getString("name"));
					user.put("surname", mResultSet.getString("surname"));
					user.put("email", mResultSet.getString("email"));
					users.put(user);
				}
			
			
			json.put("users", users);
			connection.close();
		}catch(Exception e){
			System.out.println("Impossible to get All users in AdminDAO.java -> getAllUsers()!!");
		}
		
		return json;
	}

	@Override
	public JSONObject getAllAdmins() {
		JSONObject json = new JSONObject();
		JSONArray admins = new JSONArray();

		try {
			final String query = "select * from my_db.admin ;";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			final ResultSet mResultSet = ps.executeQuery();
			
			if(mResultSet != null) {
				while (mResultSet.next()) {
					JSONObject admin = new JSONObject();
					admin.put("username", mResultSet.getString("username"));
					admin.put("password", mResultSet.getString("password"));
					admin.put("name", mResultSet.getString("name"));
					admin.put("surname", mResultSet.getString("surname"));
					admin.put("email", mResultSet.getString("email"));
					admins.put(admin);
				}
			}
			
			json.put("admins", admins);
			connection.close();
		}catch(Exception e){
			System.out.println("Impossible to get All Admins in AdminDAO.java -> getAllAdmins()!!");
		}
		
		return json;
	}
	
	@Override
	public JSONObject getAllComments(){
		JSONObject json = new JSONObject();
		JSONArray comments = new JSONArray();

		try {
			final String query = "select * from my_db.comment ;";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			final ResultSet mResultSet = ps.executeQuery();
			
			if(mResultSet != null) {
				while (mResultSet.next()) {
					JSONObject comment = new JSONObject();
					comment.put("date", mResultSet.getDate("date"));
					comment.put("username", mResultSet.getString("username"));
					comment.put("itemId", mResultSet.getString("itemId"));
					comment.put("text", mResultSet.getString("text"));
					comment.put("vote", mResultSet.getInt("vote"));
					comments.put(comment);
				}
			}
			
			json.put("comments", comments);
			connection.close();
		}catch(Exception e){
			System.out.println("Impossible to get All Comments in AdminDAO.java -> getAllComments()!!");
		}
		
		return json;
	}
	
	@Override
	public JSONObject getAllBids(){
		JSONObject json = new JSONObject();
		JSONArray offers = new JSONArray();

		try {
			final String query = "select * from my_db.bid;";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			final ResultSet mResultSet = ps.executeQuery();
			
			if(mResultSet != null) {
				while (mResultSet.next()) {
					JSONObject offer = new JSONObject();
					offer.put("user", mResultSet.getString("user"));
					offer.put("itemId", mResultSet.getString("itemId"));
					offer.put("price", mResultSet.getDouble("price"));
					offer.put("bidDate", mResultSet.getDate("bidDate"));
					offers.put(offer);
				}
			}
			
			json.put("offers", offers);
			connection.close();
		}catch(Exception e){
			System.out.println("Impossible to get All Bids in AdminDAO.java -> getAllBids()!!");
		}
		
		return json;
	}
	
	@Override
	public JSONObject getUser(final String username) {
		
		JSONObject json = new JSONObject();
		JSONArray users = new JSONArray();
		try {
			final String query = "SELECT * FROM user WHERE username=?";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, username);
			
			final ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				JSONObject user = new JSONObject();
				user.put("username", rs.getString("username"));
				user.put("password", rs.getString("password"));
				user.put("name", rs.getString("name"));
				user.put("surname", rs.getString("surname"));
				user.put("email", rs.getString("email"));
				users.put(user);
			}
			json.put("user", users);
			
			connection.close();
		} catch (Exception e) {
			System.out.println("User non trovato in AdminDao -> getUser(username)");
		}
		
		return json;
	}

	@Override
	public JSONObject getAdmin(final String username) {
		JSONObject json = new JSONObject();
		JSONArray admin = new JSONArray();
		try {
			final String query = "SELECT * FROM admin WHERE username=?";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, username);
			
			final ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				JSONObject ad = new JSONObject();
				ad.put("username", rs.getString("username"));
				ad.put("password", rs.getString("password"));
				ad.put("name", rs.getString("name"));
				ad.put("surname", rs.getString("surname"));
				ad.put("email", rs.getString("email"));
				admin.put(ad);
			}
			json.put("admin", admin);
			
			connection.close();
		} catch (Exception e) {
			System.out.println("Admin non trovato in AdminDao -> getAdmin(username)");
		}
		
		return json;
	}

	@Override
	public JSONObject getCommentsOfUser(final String username){
		JSONObject json = new JSONObject();
		JSONArray comments = new JSONArray();
		try {
			final String query = "SELECT * FROM comment WHERE username=?";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, username);
			
			final ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				JSONObject comment = new JSONObject();
				comment.put("date", rs.getDate("date"));
				comment.put("username", rs.getString("username"));
				comment.put("itemId", rs.getString("itemId"));
				comment.put("text", rs.getString("text"));
				comment.put("vote", rs.getInt("vote"));

				comments.put(comment);
			}
			json.put("comments", comments);
			
			connection.close();
		} catch (Exception e) {
			System.out.println("CommentOfUser non trovato in AdminDao -> getCommentsOfUser(username)");
		}
		
		return json;
	}
	
	@Override
	public JSONObject getBidsOfUser(final String username){
		JSONObject json = new JSONObject();
		JSONArray bids = new JSONArray();
		try {
			final String query = "SELECT * FROM comment WHERE username=?";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, username);
			
			final ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				JSONObject bid = new JSONObject();
				bid.put("username", rs.getString("username"));
				bid.put("itemId", rs.getString("itemId"));
				bid.put("price", rs.getDouble("price"));
				bid.put("bidDate", rs.getDate("bidDate"));

				bids.put(bid);
			}
			json.put("bids", bids);
			
			connection.close();
		} catch (Exception e) {
			System.out.println("Bids Of User non trovato in AdminDao -> getBidsOfUser(username)");
		}
		
		return json;
	}
	
	@Override
	public void removeUser(final String username) {
		try {
			final String query = "DELETE FROM my_db.user WHERE username=?";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, username);
			
			ps.execute();
			
			connection.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Impossible to delete in AdminDAO -> removeuser(username) the user: " + username);
		}
	}

	@Override
	public void removeAdmin(final String username) {
		try {
			final String query = "DELETE FROM my_db.admin WHERE username=?";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, username);
			
			ps.execute();
			
			connection.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Impossible to delete in AdminDAO -> removeAdmin(username) the admin: " + username);
		}
	}

	@Override
	public void updateUser(final String username,final String password) {
		try {
			final String query = "UPDATE my_db.user SET username=?,password=? WHERE username=?";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
						
			ps.setString(1, username);
			ps.setString(2, PasswordCript.encrypt(password));
			ps.setString(3, username);
			
			ps.executeUpdate();
			
			connection.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Impossible to update the user in AdminDAO -> updateUser(user,pass): " + username);
		}
	}

	@Override
	public void updateAdmin(final String username,final String password) {
		try {
			final String query = "UPDATE my_db.admin SET username=?,password=? WHERE username=?";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, username);
			ps.setString(2, PasswordCript.encrypt(password));
			ps.setString(3, username);
			
			ps.executeUpdate();
			
			connection.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Impossible to update the admin in AdminDAO -> updateAdmin(user,pass): " + username);
		}
	}

	@Override
	public boolean removeAllCommentsUser(String user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean removeCommentsItem(String item) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean removeCommentsUserItem(String username, String item) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void addCommentItem(final Comment comment,final String itemId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addItem(final Item item) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addBid(final Item item,final User user,final double price,final Date date) {
		// TODO Auto-generated method stub
		
	}
		
}
