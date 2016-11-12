package connection;

import java.io.IOException;
import java.sql.*;
import java.util.Properties;

import javax.swing.JOptionPane;

public class ConnectionDAO {

	private final static ConnectionDAO connectionDAO = new ConnectionDAO();
	private static Connection con;

	private static String dbPassword;

	private static String dbUrl;

	private static String dbUsername;

	protected ConnectionDAO() {
		loadDBProperties();
	}

	private static Properties getProperties() {
		final Properties properties = new Properties();
		try {
			properties.load(ConnectionDAO.class.getClassLoader().getResourceAsStream("db.properties"));
		} catch (final IOException e) {
			throw new RuntimeException("Cannot load db properties file", e);
		}
		return properties;
	}

	private static void loadDriver(final String dbDriver) {
		try {
			Class.forName(dbDriver);
		} catch (final ClassNotFoundException e) {
			throw new RuntimeException("Cannot load the driver class", e);
		}
	}

	protected static void loadDBProperties() {
		final Properties properties = getProperties();
		final String dbDriver = properties.getProperty("db.driver");
		dbUrl = properties.getProperty("db.url");
		dbUsername = properties.getProperty("db.username");
		dbPassword = properties.getProperty("db.password");
		loadDriver(dbDriver);
	}

	public static synchronized ConnectionDAO getInstanceConnectionDAO() {
		return connectionDAO;
	}

	public Connection createConnection() {
		con = null;
		try {
			con = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
		} catch (final SQLException e) {
			throw new RuntimeException("Cannot create the connection", e);

			// Class.forName("com.mysql.jdbc.Driver");
			// ("jdbc:mysql://nomedominio.altervista.org:3306/my_nomedominio",
			// "nomedominio", "password");


		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, e.getMessage());
		}
		return con;
	}

	public void closeConnection() {

		try {
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

}
