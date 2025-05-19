package com.java.model;

public class ManagerOrder{
	private int id;
	private String managerID;
	private String orderDate;
	private String itemAndqty;
	private String itemDesc;
	private String orderStatus;
	
	public ManagerOrder(int id, String managerID, String orderDate, String itemAndqty, String itemDesc, String orderStatus) {
		this.id = id;
		this.managerID = managerID;
		this.orderDate = orderDate;
		this.itemAndqty = itemAndqty;
		this.itemDesc = itemDesc;
		this.orderStatus = orderStatus;
	}

	public int getId() {
		return id;
	}

	public String getManagerID() {
		return managerID;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public String getItemAndqty() {
		return itemAndqty;
	}

	public String getItemDesc() {
		return itemDesc;
	}

	public String getOrderStatus() {
		return orderStatus;
	}
	

}
