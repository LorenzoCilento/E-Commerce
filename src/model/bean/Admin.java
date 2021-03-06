package model.bean;

import util.UserType;

public class Admin implements UserInterface {

	private String username, password;
	private static UserType type=UserType.ADMIN;;
	
	public Admin(){
		this.username=null;
		this.password=null;		
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
	public UserType getType() {
		return type;
	}

}
