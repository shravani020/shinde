package com.java.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.java.model.ManagerOrder;

import projectpackage1.DBconnection;

//for managing Manager Orders in a database
public class ManagerOrderDBUtil {
	
	//for DB connection
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	// Method for creating a Manager Order record
	// uses in ManagerOrderServlet
	public static boolean createMOrder(String managerId, String FcurrentDate, String itemAndqty, String itemDesc) {
		
		// Initialize the success status
		boolean isSuccess = false;
		
		
		try {
			//for DB connection
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			//SQL query for inserting orders for the managerorders table
			String sql = "INSERT INTO managerorders VALUES(0,'"+managerId+"', '"+FcurrentDate+"', '"+itemAndqty+"', '"+itemDesc+"', 'Pending')";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess; //return boolean value
		
	}
	
	//Method for retrieving Manager Orders based on manager ID(username of the manager)
	//uses in ManagerOrderServlet
	//uses in ManagerOrderViewServlet
	//uses in UpdateManagerOrderServlet
	//uses in DeleteOrderServlet
	public static List<ManagerOrder> getMOrder(String managerID){
		
		ArrayList<ManagerOrder> mangerOrd = new ArrayList<>();
		
		try {
			//for DB connection
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			//SQL query for retrieving data from managerorders table
			String sql = "SELECT * FROM managerorders WHERE managerID = '"+managerID+"'";
			
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int Oid = rs.getInt(1);
				String Mid = rs.getString(2);
				String ordDate = rs.getString(3);
				String itemQty = rs.getString(4);
				String ordDescrip = rs.getString(5);
				String ordStatus = rs.getString(6);
				
				ManagerOrder mngOrd = new ManagerOrder(Oid, Mid, ordDate, itemQty, ordDescrip, ordStatus);
				
				mangerOrd.add(mngOrd);
				
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return mangerOrd; //return boolean value
	}
	
	// Method for retrieving all Manager Orders
	//uses in SupplierServlet
	public static List<ManagerOrder> getAllOrders(){
		
		ArrayList<ManagerOrder> allOrd = new ArrayList<>();
		
		try {
			//for DB connection
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM managerorders";
			
			rs = stmt.executeQuery(sql);
			
			// Retrieve values from the ResultSet for each column
			while (rs.next()) {
				int Oid = rs.getInt(1);
				String Mid = rs.getString(2);
				String ordDate = rs.getString(3);
				String itemQty = rs.getString(4);
				String ordDescrip = rs.getString(5);
				String ordStatus = rs.getString(6);
				
				 // Create a ManagerOrder object with the retrieved values
				ManagerOrder aOrd = new ManagerOrder(Oid, Mid, ordDate, itemQty, ordDescrip, ordStatus);
				
				//add to the list
				allOrd.add(aOrd);
				
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return allOrd;
	}
	
	//Method for updating the status of a Manager Order
	//uses in UpdateOrderStatusServlet
    public static boolean updateOrderStatus(int orderId, String newStatus) {
        boolean isSuccess = false;

        try {
        	//for DB connection
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			//update query to update the orderStatus column in the managerorders table
            String sql = "UPDATE managerorders SET orderStatus = '"+newStatus+"' WHERE mOrderID = '"+orderId+"'";

			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess; //return boolean value
		
    }
	
    // Method for updating the details of a Manager Order
    // uses in UpdateManagerOrderServlet
    public static boolean updateOrder(int id, String itemAndqty, String itemDesc, String FcurrentDate) {
    	boolean isSuccess = false;
    	try {
    		//for DB connection
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			//SQL query to update details in the managerorders table
            String sql = "UPDATE managerorders SET itemQty = '"+itemAndqty+"' , orderDescription = '"+itemDesc+"' , orderDate = '"+FcurrentDate+"'  WHERE mOrderID = '"+id+"'";

			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
    	
    	return isSuccess; //return boolean value
    }
	
    // Method for deleting a Manager Order
    //uses in DeleteOrderServlet
    public static boolean deleteOrder(int id) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		//for DB connection
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			//delete query to delete the relevant record from the managerorders table
            String sql = "DELETE FROM managerorders WHERE mOrderID = '"+id+"'";

			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
    	
    	return isSuccess; //return boolean value
    }
	 
	
	
}












