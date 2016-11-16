package connection;

import org.codehaus.jettison.json.JSONObject;

import model.bean.Bid;

public interface QueryBidInterface {
	
	public void addBid(Bid bid);
	public JSONObject getBid();
	public JSONObject getItemBid(int itemId);
	
}
