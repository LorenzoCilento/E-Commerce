package connection;

import org.codehaus.jettison.json.JSONObject;

import model.bean.User;


public interface QueryUserInterface {

	public void addUser(final User user);
	
	public JSONObject getAllUsers();
	public User getUser(final String username);
	
	public void updateUser(final String username, final String password);
	
	public void removeUser(String username);	
	
}
