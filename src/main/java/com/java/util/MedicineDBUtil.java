package com.java.util;

import java.sql.Connection;



import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import projectpackage1.DBconnection;
import com.java.model.*;
import java.sql.PreparedStatement;

public class MedicineDBUtil {
		private static boolean isSuccess;
		
		//for db connection
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		// Method for adding new medicines
		public static boolean addMed(String code, String name, String ind, int qty, String expD, int price, String manuf) {
		    boolean isSuccess = false;
		    Connection con = null;
		    Statement stmt = null;

		    try {
		        // Step 1: Establish connection (DBconnection is your method to get the connection)
		        con = DBconnection.getConnection();
		        if (con == null) {
		            System.out.println("Database connection failed");
		            return false;
		        }
		        
		        // Step 2: Create Statement object
		        stmt = con.createStatement();

		        // Step 3: Prepare the SQL query
		        String sql = "INSERT INTO omos.medicines (code, name, ind, qty, expD, price, manuf) VALUES ('"
		                     + code + "', '"
		                     + name + "', '"
		                     + ind + "', "
		                     + qty + ", '"
		                     + expD + "', "
		                     + price + ", '"
		                     + manuf + "')";

		        // Log the SQL query for debugging
		        System.out.println("Executing query: " + sql);

		        // Step 4: Execute the query
		        int rs = stmt.executeUpdate(sql);

		        // Step 5: Check if the insert was successful
		        if (rs > 0) {
		            isSuccess = true;
		        } else {
		            System.out.println("No rows were inserted.");
		        }
		    } catch (SQLException e) {
		        // Print SQL exception
		        System.out.println("SQL Error: " + e.getMessage());
		        e.printStackTrace();
		    } catch (Exception e) {
		        // Catch any other exceptions
		        System.out.println("Error: " + e.getMessage());
		        e.printStackTrace();
		    } finally {
		        // Close resources to avoid leaks
		        try {
		            if (stmt != null) stmt.close();
		            if (con != null) con.close();
		        } catch (SQLException e) {
		            System.out.println("Error closing resources: " + e.getMessage());
		        }
		    }

		    return isSuccess;
		}
		
		// Method for retrieving medicine details
		public static List<Medicine> getMedicineDetails(){
			
			ArrayList<Medicine> medDets = new ArrayList<>() ;
			
			try {
				//for db connection
				con = DBconnection.getConnection();
				stmt = con.createStatement();
				
				String sql = "select * from omos.medicines";
				
				rs = stmt.executeQuery(sql);
				int counter =1;
				while(rs.next()) {
//					int id= rs.getInt(1);
					int id = counter++; 
					String medCode = rs.getString(2);
					String medName = rs.getString(3);
					String indic = rs.getString(4);
					int qty = rs.getInt(5);
					String expDate = rs.getString(6);
					int unitPrice = rs.getInt(7);
					String manuf = rs.getString(8);
					
					Medicine m = new Medicine(id, medCode, medName, indic, qty, expDate, unitPrice,manuf);
					medDets.add(m);
					
				}
				
				
				
			}catch(Exception e){
				e.printStackTrace();
			}
			
			
			return medDets;
			
			
		}
		
		//mthod to get a specific med details
		public static List<Medicine> getMedicine(int id){
			
			List <Medicine> singleMed = new ArrayList<>();
			
			try {
				//for db connection
				con = DBconnection.getConnection();
				stmt = con.createStatement();
				
				String sql = "select * from omos.medicines where id='"+id+"'";
				rs =stmt.executeQuery(sql);
				
				if(rs.next()) {
					int medid= rs.getInt(1);
					String medCode = rs.getString(2);
					String medName = rs.getString(3);
					String indic = rs.getString(4);
					int qty = rs.getInt(5);
					String expDate = rs.getString(6);
					int unitPrice = rs.getInt(7);
					String manuf = rs.getString(8);
					
					Medicine med = new Medicine(medid, medCode, medName,indic, qty, expDate, unitPrice, manuf);
					singleMed.add(med);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			return singleMed;
		}
		
		 // Method for updating medicine details
		public static boolean updateMed(String code, String name, String ind, int qty, String expD, double price, String manuf) {
			boolean isSuccess = false;
			try {
				//for db connection
				con = DBconnection.getConnection();
				stmt = con.createStatement();
				
				String sql = "update omos.medicines set  medName='"+name+"', indication='"+ind+"', qty='"+qty+"', expDate='"+expD+"', price='"+price+"', manufacturer='"+manuf+"' where medCode= '"+code+"'";
				
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
				
				
			}catch (Exception e){
				
			}
			
			return isSuccess;
			
		}
		

		// Method for deleting a medicine
		public static boolean deleteMed(int id) {
			
			boolean isSuccess = false;
			
			try {
				//for db connection
				con = DBconnection.getConnection();
				stmt = con.createStatement();
				
				String sql = "delete from omos.medicines where id='"+id+"'";
				
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
			}catch (Exception e){
				e.printStackTrace();
			}
			
			return isSuccess;
			
		}
		
		public static Medicine getSingleProduct(int id) {
			 Medicine row = null;
		        try {
		        	con = DBconnection.getConnection();
		            String sql = "select * from omos.medicines where id=? ";

		            PreparedStatement pst = con.prepareStatement(sql);
		            pst.setInt(1, id);
		            ResultSet rs = pst.executeQuery();

		            while (rs.next()) {
		            	row = new Medicine();
		                row.setId(rs.getInt("id"));
		                row.setMedName(rs.getString("medName"));
		                row.setManufacturer(rs.getString("manufacturer"));
		                row.setPrice(rs.getDouble("price"));
		                //row.setImage(rs.getString("image"));
		            }
		        } catch (Exception e) {
		            e.printStackTrace();
		            System.out.println(e.getMessage());
		        }

		        return row;
		    }
		
		
		public static double getTotalCartPrice(ArrayList<Cart> cartList) {
	        double sum = 0;
	        try {
	            if (cartList.size() > 0) {
	                for (Cart item : cartList) {
	                    String sql = "select price from omos.medicines where id=?";
	                    PreparedStatement pst = con.prepareStatement(sql);
	                    pst.setInt(1, item.getId());
	                    rs = pst.executeQuery();
	                    while (rs.next()) {
	                        sum+=rs.getDouble("price")*item.getQuantity();
	                    }

	                }
	            }

	        } catch (SQLException e) {
	            e.printStackTrace();
	            System.out.println(e.getMessage());
	        }
	        return sum;
	    }
		

		
		public static List<Cart> getCartProducts(ArrayList<Cart> cartList) {
	        List<Cart> product = new ArrayList<>();
	        try {
	            if (cartList.size() > 0) {
	                for (Cart item : cartList) {
	                	con = DBconnection.getConnection();
	                	String sql = "select * from omos.medicines where id=?";
	                    PreparedStatement pst = con.prepareStatement(sql);
	                    pst.setInt(1, item.getId());
	                    rs = pst.executeQuery();
	                    
	                    
	                    while (rs.next()) {
	                        Cart row = new Cart();
	                        row.setId(rs.getInt("id"));
	                        row.setMedName(rs.getString("name"));
	                        row.setManufacturer(rs.getString("manuf"));
	                        row.setPrice(rs.getDouble("price")*item.getQuantity());
	                        row.setQuantity(item.getQuantity());
	                        product.add(row);
	                    }

	                }
	            }

	        } catch (SQLException e) {
	            e.printStackTrace();
	            System.out.println(e.getMessage());
	        }
	        return product;
	    }
		
		//count all medicines
		public static int countMedi() {
			
			int count =0;
			try {
				con = DBconnection.getConnection();
				stmt = con.createStatement();
				
				String sql = "select count(*) from omos.medicines";
				
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					count =  rs.getInt(1);
				}
				
			}catch (Exception e){
				e.printStackTrace();
			}
			
			return count;
		}
		
		
}
