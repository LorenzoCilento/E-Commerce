package model.bean;

public class Comment {
	private String date;
	private String username;
	private String itemId;
	private String text;

	public Comment() {

	}

	public Comment(String date, String username, String itemId, String text) {

		this.date = date;
		this.username = username;
		this.itemId = itemId;
		this.text = text;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getUser() {
		return username;
	}

	public void setUser(String user) {
		this.username = user;
	}

	public String getItem() {
		return itemId;
	}

	public void setItem(String item) {
		this.itemId = item;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

}
