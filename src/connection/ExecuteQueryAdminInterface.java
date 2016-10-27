package connection;

import java.util.List;

import model.bean.Admin;
import model.bean.User;

public interface ExecuteQueryAdminInterface {

	public void addUser(final User user);
	public void addAdmin(final Admin admin);
	
	public List<User> getAllUsers();
	public List<Admin> getAllAdmins();
	
	public User getUser(final String username);
	public User getAdmin(final String username);
	
	public void deleteUser(String username);
	public void deleteAdmin(final String username, final String password);
	
	public void updateUser(final String username, final String password);
	public void updateAdmin(final String username, final String password);
	
}
