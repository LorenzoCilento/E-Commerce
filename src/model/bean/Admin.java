package model.bean;

public class Admin implements UserInterface {

	private String username, password;
	
	
	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	@Override
	public UserInterface getUser() {
		return this;
	}

}
