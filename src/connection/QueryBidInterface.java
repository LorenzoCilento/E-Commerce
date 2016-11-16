package connection;

import org.codehaus.jettison.json.JSONObject;

import model.bean.Bid;

public interface QueryBidInterface {
	
	public void insertBid(Bid bid);
	public void addBid(Bid bid);
	public void updateBid(Bid bid);
	public JSONObject getBid();
	public JSONObject getItemBid(int itemId);
	public boolean getBid(int itemId);
	
}
