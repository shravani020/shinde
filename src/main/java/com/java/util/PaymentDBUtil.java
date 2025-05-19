package com.java.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


import projectpackage1.DBconnection;

public class PaymentDBUtil {

	//for DB connection
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	// Method for creating a Manager Order record
	// uses in ManagerOrderServlet
	public static boolean newPayment(String paymentMethod, double amount, String cardNo) {
		
		// Initialize the success status
		boolean isSuccess = false;
		
		try {
			//for DB connection
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			//SQL query for inserting inquiries for the contactus table
			String sql = "INSERT INTO payment VALUES(0,'"+paymentMethod+"', '"+amount+"', '"+cardNo+"')";
			
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
