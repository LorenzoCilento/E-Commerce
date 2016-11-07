package util;

public class Validate {

	/** check whether email and password are valid */
	public boolean validateParameters(final String... params) {
		for (String string : params) {
			if (string == null || string.equals(""))
				return false;
		}
		return true;
	}

	/** check whether both password are equals */
	public boolean controlEqualsPasswords(String password1, String password2) {
		return password1.equals(password2);
	}

}
