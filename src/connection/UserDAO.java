package connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.bean.User;
import util.Factories;


public class UserDAO extends ConnectionDAO implements QueryUserInterface {

	public UserDAO() {
		super();
	}
	
	@Override
	public void addUser(final User user){
		try {
			final String query ="INSERT into user(username,password) values(?,?)";
			PreparedStatement ps = createConnection().prepareStatement(
					query);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			
			ps.executeUpdate();			
	
			closeConnection();
			System.out.println("USer inserito");
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("SQLException:" + e.getSQLState());
			System.out.println("Impossible to add new User!!");
		}
	}
	
	@Override
	public List<User> getAllUsers(){
		List<User> users = new ArrayList<>();
		final String query = "SELECT * FROM user";
		try {
			PreparedStatement ps = createConnection().prepareStatement(
					query);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){  
                User user = Factories.getInstance().makeUser();  
                user.setUsername(rs.getString(1));  
                user.setPassword(rs.getString(2));    
                users.add(user);  
            }  
			
			closeConnection();
		}catch(Exception e){}
		
		return users;
	}
	
	@Override
	public User getUser(final String username){
		User user = Factories.getInstance().makeUser();
		
		try {
			final String query = "SELECT * FROM user WHERE username=?";
			PreparedStatement ps = createConnection().prepareStatement(
					query);
			
			ps.setString(1, username);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				user.setUsername(rs.getString(1));
				user.setPassword(rs.getString(2));
			}
			
			closeConnection();
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
			PreparedStatement ps = createConnection().prepareStatement(
					query);
			
			ps.setString(1, username);
			
			ps.execute();
			
			closeConnection();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Impossible to delete the user: " + username);
		}
	}

	@Override
	public void updateUser(final String username, final String password){
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
	
}
