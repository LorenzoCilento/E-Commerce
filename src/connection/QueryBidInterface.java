package connection;

import org.codehaus.jettison.json.JSONObject;

import model.bean.Bid;

public interface QueryBidInterface {
	
	public void insertBid(Bid bid);
	public void addBid(Bid bid);
	public void updateBid(Bid bid);
	public JSONObject getBid();
	public boolean getBid(int itemId,String username);
	public double getMaxPrice(int itemId);
	JSONObject getJsonMaxBid(int itemId);
	
}
