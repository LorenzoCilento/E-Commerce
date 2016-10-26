package model.bean;

import util.UserType;

public class User implements UserInterface {

	private String username, password;
	
	
	public User() {
		username = null;
		password = null;
	}
	
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
	public UserType getUser() {
		return UserType.USER;
	}

}
