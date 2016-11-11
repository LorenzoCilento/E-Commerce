package model.bean;

public class AdminFactory extends AbstractFactoryUser{

	@Override
	public Admin getAdmin() {
		return new Admin();
	}
	@Override
	public User getUser() {
		// TODO Auto-generated method stub
		return null;
	}


	

}
