package connection;

import java.util.List;

import model.bean.User;

public interface QueryUserInterface {

	public void addUser(final User user);
	public List<User> getAllUsers();
	public User getUser(final String username);
	public void deleteUser(String username);
	public void updateUser(final String username, final String password);
	
}
