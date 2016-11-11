package util;

import java.math.BigInteger;
import java.security.MessageDigest;
import model.bean.User;

public class PasswordCript {
	
    public static String encrypt(String message) {
        try{
            MessageDigest m = MessageDigest.getInstance("MD5");
            m.update(message.getBytes());
            return String.format("%032x",new BigInteger(1,m.digest()));
        }
        catch(Exception e){
            return null;
        }
    }
    
	public boolean checkPassword(final User user, String password) {
		return user.getPassword().equals(password);
	}
}
