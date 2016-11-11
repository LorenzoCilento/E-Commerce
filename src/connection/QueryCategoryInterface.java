package connection;

import org.codehaus.jettison.json.JSONObject;

public interface QueryCategoryInterface {

	public void addCategory(String category);
	
	public void removeCategory(String category);
	
	public JSONObject getAllCategory();
	
	public JSONObject getCategory(int id);
	
	public void modifyCategory();
	
}
