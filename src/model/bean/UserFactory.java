package model.bean;

public class UserFactory extends AbstractFactoryUser {

	@Override
	public User getUser() {
		return new User();
	}

	@Override
	public Admin getAdmin() {
		return null;
	}


}
