package util;

import model.bean.AbstractFactoryUser;
import model.bean.Admin;
import model.bean.FactoryUserCreator;
import model.bean.User;

public class Factories {

	private static Factories factories = new Factories();
	
	private FactoryUserCreator creator = new FactoryUserCreator();
	private AbstractFactoryUser abstractFactoryUser;
	
	private Factories(){}
	
	public static Factories getInstance(){
		return factories;
	}
	
	public User makeUser() {
		abstractFactoryUser = creator.getFatory(UserType.USER);
		User user = abstractFactoryUser.getUser();
		
		return user;
	}
	
	public Admin makeAdmin() {
		abstractFactoryUser = creator.getFatory(UserType.USER);
		Admin admin = abstractFactoryUser.getAdmin();
		
		return admin;
	}
}
