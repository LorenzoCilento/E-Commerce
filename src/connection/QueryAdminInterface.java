package connection;

import java.util.List;

import model.bean.Admin;
import model.bean.User;

public interface QueryAdminInterface {

	public void addUser(final User user);
	public void addAdmin(final Admin admin);
	
	public List<User> getAllUsers();
	public List<Admin> getAllAdmins();
	
	public User getUser(final String username);
	public Admin getAdmin(final String username);
	
	public void removeUser(String username);
	public void removeAdmin(final String username, final String password);
	
	public void updateUser(final String username, final String password);
	public void updateAdmin(final String username, final String password);
	
/*
 * public void addItem(Item item){}
 * public Item getItem(final String item){}
 * 
 * public void addComment(Comment comment){}
 * public Comment getComment(final String idComment){}	
 * 
 */
	
}
