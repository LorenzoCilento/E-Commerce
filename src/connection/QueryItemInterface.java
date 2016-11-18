package connection;

import org.codehaus.jettison.json.JSONObject;

import model.bean.Bid;
import model.bean.Item;


interface QueryItemInterface {

	public void addItem(Item item);
	
	public void removeItem(int id);
	
	public JSONObject getAllItems();
	
	public JSONObject getAllItemsByCategory(String category);
	
	public JSONObject getItem(int id);
	
	public void updateBidItem(Item item, Bid bid);
	
	public int getLastItemId();
	
	public JSONObject getAllUserItems(String username);
	
}
