package connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;


import model.bean.Bid;

public class BidDAO implements QueryBidInterface {

	@Override
	public void insertBid(Bid bid) {
		try {			
			final String query = "INSERT INTO bid(username,itemId,price,bidDate) values(?,?,?,?)";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setString(1, bid.getUsername());
			ps.setInt(2, bid.getItemId());
			ps.setDouble(3, bid.getPrice());
			ps.setDate(4, bid.getBidDate());
			ps.executeUpdate();
			
			connection.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public JSONObject getBid() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JSONObject getJsonMaxBid(int itemId) {
		JSONObject json = new JSONObject();
		JSONArray bids = new JSONArray();
		
		try {
			final String query = "SELECT max(b.price) FROM my_db.bid as b WHERE b.itemId = ? GROUP BY b.itemId;";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			ps.setInt(1, itemId);
			
			final ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				JSONObject bid = new JSONObject();
				bid.put("price",rs.getDouble("max(b.price)"));
				
				bids.put(bid);
			}
			
			json.put("bids", bids);
		} catch (SQLException | JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return json;
	}
	
	@Override
	public double getMaxPrice(int itemId) {
		double price = 0;
		try {
			final String query = "SELECT max(b.price) FROM my_db.bid as b WHERE b.itemId = ? GROUP BY b.itemId;";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			ps.setInt(1, itemId);
			
			final ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				price = rs.getDouble("max(b.price)");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return price;
	}

	@Override
	public boolean getBid(int itemId,String username) {
		try {
			final String query = "SELECT itemId,username FROM my_db.bid WHERE itemId = ? and username = ?;";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			ps.setInt(1, itemId);
			ps.setString(2, username);
			
			final ResultSet rs = ps.executeQuery();
			
			if(rs.next())
				return true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public void updateBid(Bid bid) {
		try {			
			final String query = "UPDATE my_db.bid SET price=?,bidDate=? WHERE itemId=? and username=?;";
			final Connection connection = ConnectionDAO.getInstance().createConnection();
			final PreparedStatement ps = connection.prepareStatement(query);
			
			ps.setDouble(1, bid.getPrice());
			ps.setDate(2, bid.getBidDate());
			ps.setInt(3, bid.getItemId());
			ps.setString(4, bid.getUsername());
			
			ps.executeUpdate();
			
			connection.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void addBid(Bid bid) {
		if(getBid(bid.getItemId(),bid.getUsername()))
			updateBid(bid);
		else
			insertBid(bid);
		
	}

}
