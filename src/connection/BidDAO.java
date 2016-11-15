package connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;


import model.bean.Bid;

public class BidDAO extends ConnectionDAO implements QueryBidInterface {

	@Override
	public void addBid() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public JSONObject getBid() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JSONObject getItemBid(int itemId) {
		JSONObject json = new JSONObject();
		JSONArray bids = new JSONArray();
		
		final String query = "SELECT * FROM my_db.bid WHERE itemId = ?;";
		try {
			PreparedStatement ps = createConnection().prepareStatement(query);
			ps.setInt(1, itemId);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				JSONObject bid = new JSONObject();
				bid.put("username",rs.getString("username"));
				bid.put("itemId",rs.getInt("itemID"));
				bid.put("price",rs.getDouble("price"));
				bid.put("bidDate",rs.getDate("bidDate"));
				
				bids.put(bid);
			}
			
			json.put("bids", bids);
		} catch (SQLException | JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return json;
	}

}
