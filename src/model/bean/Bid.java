package model.bean;

import java.util.Date;

public class Bid {

	private String username;
	private String itemId;
	private double price;
	private Date bidDate;
	
	public Bid(String username, String item, double price) {
		super();
		this.username = username;
		this.itemId = item;
		this.price = price;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String user) {
		this.username = user;
	}

	public String getItem() {
		return itemId;
	}

	public void setItem(String item) {
		this.itemId = item;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Date getBidDate() {
		return bidDate;
	}

	public void setBidDate(Date bidDate) {
		this.bidDate = bidDate;
	}
	
}
