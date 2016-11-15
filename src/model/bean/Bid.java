package model.bean;

import java.sql.Date;

public class Bid {

	private String username;
	private int itemId;
	private double price;
	private Date bidDate;
	
	public Bid(String username, int item, double price) {
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

	public int getItem() {
		return itemId;
	}

	public void setItem(int item) {
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
