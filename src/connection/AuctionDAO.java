package connection;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONObject;

import model.bean.Auction;


public class AuctionDAO implements QueryAuctionInterface {
	
	@Override
	public void addAuction(final Auction auction) {
		try {
			final String query ="INSERT into auction(itemId,startDate,endDate,state) values(?,?,?,?)";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setInt(1, auction.getItemId());
			ps.setDate(2, auction.getStartDate());
			ps.setDate(3, auction.getEndDate());
			ps.setString(4, auction.getState());
			
			ps.executeUpdate();			
			
			connection.close();
			System.out.println("Auction inserted");
		} catch (SQLException e) {
			System.out.println("Impossible to add new Auction!!");
		}
	}

	@Override
	public void removeAuction(int id) {
		try {
			final String query = "DELETE FROM my_db.auction WHERE itemId=?";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setInt(1, id);
			
			ps.execute();
			
			connection.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Impossible to delete Auction!!");
		}
	}

	@Override
	public JSONObject getAllAuctions() {
		JSONObject json = new JSONObject();
		JSONArray auctions = new JSONArray();

		try {
			final String query = "select * from my_db.auction ;";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			final ResultSet mResultSet = ps.executeQuery();
			
			if(mResultSet != null) {
				while (mResultSet.next()) {
					JSONObject auction = new JSONObject();
					auction.put("itemId", mResultSet.getInt("itemId"));
					auction.put("startDate", mResultSet.getDate("startDate"));
					auction.put("endDate", mResultSet.getDate("endDate"));
					auction.put("state", mResultSet.getString("state"));
					auctions.put(auction);
				}
			}
			
			json.put("auctions", auctions);
			connection.close();
		}catch(Exception e){
			System.out.println("Impossible to get All Auctions!!");
		}
		
		return json;
	}

	@Override
	public JSONObject getAllAuctionsByUsername(String username){
		return null;
	}
	
	@Override
	public JSONObject getAllAuctionsByCategory(String category) {
		return null;
	}

	@Override
	public JSONObject getAuction(int id) {

		JSONObject json = new JSONObject();
		JSONArray auctions = new JSONArray();
		try {
			final String query = "SELECT * FROM auction WHERE itemId=?";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				JSONObject auction = new JSONObject();
				auction.put("itemId", rs.getInt("itemId"));
				auction.put("startDate", rs.getDate("startDate"));
				auction.put("endDate", rs.getDate("endDate"));
				auction.put("state", rs.getString("state"));
				auctions.put(auction);
			}
			json.put("auction", auctions);
			
			connection.close();
		} catch (Exception e) {
			System.out.println("Impossible to get Auction!!");
		}
		
		return json;
	}
	
	
}
