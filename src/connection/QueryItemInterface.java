package connection;

import org.codehaus.jettison.json.JSONObject;

import model.bean.Item;

interface QueryItemInterface {

	public void addItem(Item item);
	
	public void removeItem(Item item);
	
	public JSONObject getAllItems();
	
	public JSONObject getAllItemsByCategory(String category);
	
	public JSONObject getItem(int id);
	
	public void modifyItem();
	
	public void getLastItems();
	
}
