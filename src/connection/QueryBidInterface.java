package connection;

import org.codehaus.jettison.json.JSONObject;

public interface QueryBidInterface {
	
	public void addBid();
	public JSONObject getBid();
	public JSONObject getItemBid(int itemId);
	
}
