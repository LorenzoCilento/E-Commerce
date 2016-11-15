package connection;

import org.codehaus.jettison.json.JSONObject;

import model.bean.Auction;


public interface QueryAuctionInterface {

	public void addAuction(Auction auction);

	public void removeAuction(int id);

	public JSONObject getAllAuctions();

	public JSONObject getAllAuctionsByUsername(String username);
	
	public JSONObject getAllAuctionsByCategory(String category);

	public JSONObject getAuction(int id);

}
