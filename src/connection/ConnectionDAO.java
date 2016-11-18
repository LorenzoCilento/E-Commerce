package connection;

import java.io.IOException;
import java.sql.*;
import java.util.Properties;

public class ConnectionDAO {

	private final static ConnectionDAO connectionDAO = new ConnectionDAO();

	private static String dbPassword;

	private static String dbUrl;

	private static String dbUsername;

	protected ConnectionDAO() {
		loadDBProperties();
		new UpdateDatabase().start();
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

	public static synchronized ConnectionDAO getInstance() {
		return connectionDAO;
	}

	public Connection createConnection() {
		try {
			return DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
		} catch (final SQLException e) {
			throw new RuntimeException("Cannot create the connection", e);
		}
	}

}
