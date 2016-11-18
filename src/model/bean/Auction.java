package model.bean;

import java.sql.Date;

public class Auction {

	private int itemId;
	private Date startDate;
	private Date endDate;

	public Auction(){
		this.itemId=0;
		this.startDate=null;
		this.endDate=null;
	}
	
	public Auction(int itemId, Date startDate, Date endDate) {
		this.itemId = itemId;
		this.startDate = startDate;
		this.endDate = endDate;
	}

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public Date getStartDate() {
		return startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}


}
