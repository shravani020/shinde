package com.java.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import projectpackage1.DBconnection;

public class EmpDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insertEmp(String fname, String lname, String dob, String phone, String gender, String email, String pwd, String add, String job, String join, String insure, String zone, String username) {
		
		boolean isSuccess = false;
		
		//create database connection
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into emp values(0, '"+fname+"', '"+lname+"', '"+dob+"', '"+phone+"', '"+gender+"', '"+email+"', '"+pwd+"', '"+add+"', '"+job+"', '"+join+"', '"+insure+"', '"+zone+"', '"+username+"')";
			int rst = stmt.executeUpdate(sql);
			
			if(rst > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}	
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
		
	} //INSERT EMp CLOSE tag
	
	public static List<com.java.model.Employee> getEmpDetails(){
		

		
		ArrayList<com.java.model.Employee> emp = new ArrayList<>();
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from emp  ";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String dob =  rs.getString(4);
				String phone = rs.getString(5);
				String gender = rs.getString(6);
				String email = rs.getString(7);
				String pwd =  rs.getString(8);
				String add =  rs.getString(9);
				String job =  rs.getString(10);
				String join = rs.getString(11);
				String insure = rs.getString(12);
				String zone = rs.getString(13);
				String username = rs.getString(14);
				
				com.java.model.Employee e = new com.java.model.Employee(id, fname, lname, dob, phone, gender, email, pwd, add, job, join, insure, zone, username);
				emp.add(e);
				

				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return emp;
	}
	
	
	public static boolean updateEmp(String id, String fname, String lname, String dob, String phone, String gender, String email, String pwd, String add, String job, String join, String insure, String zone, String username) {
		
		boolean isSuccess = false;
		
		//create database connection
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE emp SET fname = '"+fname+"', lname = '"+lname+"', dob = '"+dob+"', phone = '"+phone+"', gender = '"+gender+"', email = '"+email+"', pwd = '"+pwd+"', `add` = '"+add+"', job = '"+job+"', `join` = '"+join+"', insure = '"+insure+"', zone = '"+zone+"', username = '"+username+"' WHERE id = '"+id+"'";

			int rst = stmt.executeUpdate(sql);
			
			if(rst > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}	
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	public static boolean deleteEmp(String id) {
		
		boolean isSuccess = false;
		
		//create database connection
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "DELETE FROM emp WHERE id = '"+id+"'";
					
			int rst = stmt.executeUpdate(sql);
			
			if(rst > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}	
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static String countemp() {
		
		String rst = null;
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT COUNT(*) FROM emp";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
	            int count = rs.getInt(1); // Assuming COUNT(*) is in the first column
	            rst = String.valueOf(count); // Convert the count to a String
	        }
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rst;
	}

	
	public static String countempDeliver() {
		
		String rst = null;
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT COUNT(*) FROM emp where job = 'deliver'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
	            int count = rs.getInt(1); // Assuming COUNT(*) is in the first column
	            rst = String.valueOf(count); // Convert the count to a String
	        }
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rst;
	}
	
	public static String countempSupp() {
		
		String rst = null;
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT COUNT(*) FROM emp where job = 'supplier'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
	            int count = rs.getInt(1); // Assuming COUNT(*) is in the first column
	            rst = String.valueOf(count); // Convert the count to a String
	        }
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rst;
	}
	
	public static String countempDriver() {
		
		String rst = null;
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT COUNT(*) FROM emp where job = 'driver'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
	            int count = rs.getInt(1); // Assuming COUNT(*) is in the first column
	            rst = String.valueOf(count); // Convert the count to a String
	        }
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rst;
	}
	
	
	public static String countZone() {
		
		String rst = null;
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT COUNT(*) FROM emp where zone = 'in'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
	            int count = rs.getInt(1); // Assuming COUNT(*) is in the first column
	            rst = String.valueOf(count); // Convert the count to a String
	        }
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rst;
	}
	
	public static String countMan() {
		
		String rst = null;
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT COUNT(*) FROM emp where job = 'manager'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
	            int count = rs.getInt(1); // Assuming COUNT(*) is in the first column
	            rst = String.valueOf(count); // Convert the count to a String
	        }
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return rst;
	}

}
