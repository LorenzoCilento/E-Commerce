package connection;

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

public class AdminDAO extends ConnectionDAO implements QueryAdminInterface {

	public AdminDAO(){
		super();
	}

	@Override
	public void addUser(User user) {
		try {
			final String query ="INSERT into user(username,password) values(?,?)";
			PreparedStatement ps = createConnection().prepareStatement(
					query);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			
			ps.executeUpdate();			
	
			closeConnection();
			
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Impossible to add new User in AdminDAO.java!!");
		}		
	}

	@Override
	public void addAdmin(Admin admin) {
		try {
			final String query ="INSERT into admin(username,password) values(?,?)";
			PreparedStatement ps = createConnection().prepareStatement(
					query);
			ps.setString(1, admin.getUsername());
			ps.setString(2, admin.getPassword());
			
			ps.executeUpdate();			
	
			closeConnection();
			
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Impossible to add new Admin in AdminDAO.java!!");
		}		
		
	}

	@Override
	public JSONObject getAllUsers() {
		JSONObject json = new JSONObject();
		JSONArray users = new JSONArray();
		final String query = "select * from my_db.user ;";

		try {
			PreparedStatement ps = null;
			ResultSet mResultSet = null;
			ps = createConnection().prepareStatement(query);
			mResultSet = ps.executeQuery();
			
			if(mResultSet != null) {
				while (mResultSet.next()) {
					JSONObject user = new JSONObject();
					user.put("username", mResultSet.getString("username"));
					user.put("password", mResultSet.getString("password"));
					users.put(user);
				}
			}
			
			json.put("users", users);
			closeConnection();
		}catch(Exception e){}
		
		return json;
	}

	@Override
	public JSONObject getAllAdmins() {
		JSONObject json = new JSONObject();
		JSONArray admins = new JSONArray();
		final String query = "select * from my_db.admin ;";

		try {
			PreparedStatement ps = null;
			ResultSet mResultSet = null;
			ps = createConnection().prepareStatement(query);
			mResultSet = ps.executeQuery();
			
			if(mResultSet != null) {
				while (mResultSet.next()) {
					JSONObject admin = new JSONObject();
					admin.put("username", mResultSet.getString("username"));
					admin.put("password", mResultSet.getString("password"));
					admins.put(admin);
				}
			}
			
			json.put("admins", admins);
			closeConnection();
		}catch(Exception e){}
		
		return json;
	}
	
	@Override
	public JSONObject getAllComments(){
		JSONObject json = new JSONObject();
		JSONArray comments = new JSONArray();
		final String query = "select * from my_db.comment ;";

		try {
			PreparedStatement ps = null;
			ResultSet mResultSet = null;
			ps = createConnection().prepareStatement(query);
			mResultSet = ps.executeQuery();
			
			if(mResultSet != null) {
				while (mResultSet.next()) {
					JSONObject comment = new JSONObject();
					comment.put("date", mResultSet.getDate("date"));
					comment.put("username", mResultSet.getString("username"));
					comment.put("itemId", mResultSet.getString("itemId"));
					comment.put("text", mResultSet.getString("text"));
					comments.put(comment);
				}
			}
			
			json.put("comments", comments);
			closeConnection();
		}catch(Exception e){}
		
		return json;
	}
	
	@Override
	public JSONObject getAllOffers(){
		JSONObject json = new JSONObject();
		JSONArray offers = new JSONArray();
		final String query = "select * from my_db.bid ;";

		try {
			PreparedStatement ps = null;
			ResultSet mResultSet = null;
			ps = createConnection().prepareStatement(query);
			mResultSet = ps.executeQuery();
			
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
			closeConnection();
		}catch(Exception e){}
		
		return json;
	}
	
	@Override
	public JSONObject getUser(String username) {
		
		JSONObject json = new JSONObject();
		JSONArray user = new JSONArray();
		try {
			final String query = "SELECT * FROM user WHERE username=?";
			PreparedStatement ps = createConnection().prepareStatement(
					query);
			
			ps.setString(1, username);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				JSONObject us = new JSONObject();
				us.put("id", rs.getString("id"));
				us.put("name", rs.getString("name"));

				user.put(us);
			}
			json.put("user", user);
			
			closeConnection();
		} catch (Exception e) {
			System.out.println("User non trovato in AdminDao -> getUser(username)");
		}
		
		return json;
	}

	@Override
	public JSONObject getAdmin(String username) {
		JSONObject json = new JSONObject();
		JSONArray admin = new JSONArray();
		try {
			final String query = "SELECT * FROM admin WHERE username=?";
			PreparedStatement ps = createConnection().prepareStatement(
					query);
			
			ps.setString(1, username);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				JSONObject ad = new JSONObject();
				ad.put("id", rs.getString("id"));
				ad.put("name", rs.getString("name"));

				admin.put(ad);
			}
			json.put("admin", admin);
			
			closeConnection();
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
			PreparedStatement ps = createConnection().prepareStatement(
					query);
			
			ps.setString(1, username);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				JSONObject comment = new JSONObject();
				comment.put("date", rs.getDate("date"));
				comment.put("username", rs.getString("username"));
				comment.put("itemId", rs.getString("itemId"));
				comment.put("text", rs.getString("text"));

				comments.put(comment);
			}
			json.put("comments", comments);
			
			closeConnection();
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
			PreparedStatement ps = createConnection().prepareStatement(
					query);
			
			ps.setString(1, username);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				JSONObject bid = new JSONObject();
				bid.put("username", rs.getString("username"));
				bid.put("itemId", rs.getString("itemId"));
				bid.put("price", rs.getDouble("price"));
				bid.put("bidDate", rs.getDate("bidDate"));

				bids.put(bid);
			}
			json.put("bids", bids);
			
			closeConnection();
		} catch (Exception e) {
			System.out.println("Bids Of User non trovato in AdminDao -> getBidsOfUser(username)");
		}
		
		return json;
	}
	
	@Override
	public void removeUser(String username) {
		try {
			final String query = "DELETE FROM my_db.user WHERE username=?";
			PreparedStatement ps = createConnection().prepareStatement(
					query);
			
			ps.setString(1, username);
			
			ps.execute();
			
			closeConnection();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Impossible to delete in AdminDAO -> removeuser(username) the user: " + username);
		}
	}

	@Override
	public void removeAdmin(String username) {
		try {
			final String query = "DELETE FROM my_db.admin WHERE username=?";
			PreparedStatement ps = createConnection().prepareStatement(
					query);
			
			ps.setString(1, username);
			
			ps.execute();
			
			closeConnection();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Impossible to delete in AdminDAO -> removeAdmin(username) the admin: " + username);
		}
	}

	@Override
	public void updateUser(String username, String password) {
		try {
			final String query = "UPDATE my_db.user SET username=?,password=? WHERE username=?";
			PreparedStatement ps = createConnection().prepareStatement(
					query);
			
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, username);
			
			ps.executeUpdate();
			
			closeConnection();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Impossible to update the user: " + username);
		}
	}

	@Override
	public void updateAdmin(String username, String password) {
		try {
			final String query = "UPDATE my_db.admin SET username=?,password=? WHERE username=?";
			PreparedStatement ps = createConnection().prepareStatement(
					query);
			
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, username);
			
			ps.executeUpdate();
			
			closeConnection();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Impossible to update the admin: " + username);
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
	public void addCommentItem(Comment comment, String itemId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addItem(Item item) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addBid(Item item, User user, double price, Date date) {
		// TODO Auto-generated method stub
		
	}
	
	
	
}
