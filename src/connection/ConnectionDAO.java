package connection;

import java.sql.*;
import javax.swing.JOptionPane;

public class ConnectionDAO {
	
	private final static ConnectionDAO connectionDAO = new ConnectionDAO();
	private static Connection con;
	
	public ConnectionDAO(){
	}
	
	public static synchronized ConnectionDAO getInstanceConnectionDAO(){
		return connectionDAO;
	}
	
	public Connection createConnection() {
		con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//("jdbc:mysql://nomedominio.altervista.org:3306/my_nomedominio", "nomedominio", "password");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_db","root","root");
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
