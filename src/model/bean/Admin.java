package model.bean;

import util.UserType;

public class Admin {

	private String username, password;
	private static UserType type=UserType.ADMIN;
	private String name;
	private String surname;
	private String email;
	
	public Admin(){	
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public static UserType getType() {
		return type;
	}

	
}
