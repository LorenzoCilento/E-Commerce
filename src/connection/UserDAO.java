package connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.bean.FactoryUserCreator;
import model.bean.User;
import util.Factories;
import util.UserType;

public class UserDAO extends ConnectionDAO {

	public UserDAO() {
		super();
	}
	
	public void addUser(final User user){
		try {
			PreparedStatement ps = createConnection().prepareStatement(
					"INSERT into User(username,password) values(?,?");
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			
			ps.executeUpdate();
			
			closeConnection();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public User getUser(final String username){
		User user = Factories.getInstance().makeUser();
		
		try {
			PreparedStatement ps = createConnection().prepareStatement(
					"SELECT * FROM User WHERE username=?");
			
			ps.setString(1, username);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				user.setUsername(rs.getString(1));
				user.setPassword(rs.getString(2));
			}
			
			closeConnection();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return user;
	}
	
	public void removeUser(){
		
	}
	
	public void updateUser(final String username, final String oldPassword, final String newPassword){
		
	}
	
}
