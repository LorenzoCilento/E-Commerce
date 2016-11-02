package connection;

import org.codehaus.jettison.json.JSONObject;

import model.bean.Item;

interface QueryItemInterface {

	public void addItem(Item item);
	
	public void removeItem(Item item);
	
	public JSONObject getAllItems();
	
	public JSONObject getItem();
	
	public void modifyItem();
	
	public void getLastItems();
	
}
