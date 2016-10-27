package model.bean;

import java.util.Date;

public class Bid {

	private User user;
	private Item item;
	private double price;
	private Date bidDate;
	
	public Bid(User user, Item item, double price) {
		super();
		this.user = user;
		this.item = item;
		this.price = price;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
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
