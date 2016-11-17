package model.bean;

import java.sql.Date;

public class Item {

	private int id;
	private String name;
	private String category;
	private double price;
	private int vote;
	private String description;
	private String path;
	private String username;
	

	public Item() {
	}

	public Item(int id, String name, String category, double price, int vote, 
			String description,String path, Date startDate) {
		this.id = id;
		this.name = name;
		this.category = category;
		this.price = price;
		this.vote = vote;
		this.description = description;
		this.path = path;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getVote() {
		return vote;
	}

	public void setVote(int vote) {
		this.vote = vote;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}
