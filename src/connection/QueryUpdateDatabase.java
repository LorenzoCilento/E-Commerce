package connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class QueryUpdateDatabase {

	public void getItemInBid(){
		try {
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement("call myUpdate()");
			ps.executeQuery();
			connection.close();
		} catch (SQLException e) {
		}
	}
	
	public void deleteAllItemWithAuctionClosed(){
		
		try {
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			PreparedStatement ps=connection.prepareStatement("call myUpdate2()");
			ps.executeQuery();
			connection.close();
			System.out.println("Aggiornato il database");
		} catch (SQLException e) {
		}

		
	}
}
