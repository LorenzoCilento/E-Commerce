package connection;

import java.util.Date;
import org.codehaus.jettison.json.JSONObject;

import model.bean.Admin;
import model.bean.Comment;
import model.bean.Item;
import model.bean.User;

public interface QueryAdminInterface {

	public void addUser(final User user);
	public void addAdmin(final Admin admin);
	public void addCommentItem(final Comment comment,final String itemId);
	public void addItem(final Item item);
	public void addBid(final Item item,User user,final double price,final Date date);
	
	public JSONObject getAllUsers();
	public JSONObject getAllAdmins();
	public JSONObject getAllComments();
	public JSONObject getAllOffers();
	
	public JSONObject getUser(final String username);
	public JSONObject getAdmin(final String username);
	public JSONObject getCommentsOfUser(final String username);
	public JSONObject getBidsOfUser(final String username);
	
	public void removeUser(final String username);
	public void removeAdmin(final String username);
	
	public void updateUser(final String username, final String password);
	public void updateAdmin(final String username, final String password);
	
	public boolean removeAllCommentsUser(String username);
	public boolean removeCommentsItem(String item);
	public boolean removeCommentsUserItem(String username,String item);
	
/*
 * public void addItem(Item item){}
 * public Item getItem(final String item){}
 * 
 * public void addComment(Comment comment){}
 * public Comment getComment(final String idComment){}	
 * 
 */
	
}
