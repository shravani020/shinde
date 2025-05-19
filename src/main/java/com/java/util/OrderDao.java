package com.java.util;

import java.sql.Connection;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import com.java.model.Medicine;
import com.java.model.Order;

import projectpackage1.DBconnection;


public class OrderDao {
	
	private Connection con;

	private String query;
    private PreparedStatement pst;
    private ResultSet rs;
    
    

	public OrderDao(Connection con) {
		super();
		this.con = con;
	}

	public boolean insertOrder(Order model) {
        boolean result = false;
        try {
            query = "insert into omos.orders (m_id, u_id, o_quantity, o_date) values(?,?,?,?)";
            pst = this.con.prepareStatement(query);
            pst.setInt(1, model.getId());
            pst.setInt(2, model.getUid());
            pst.setInt(3, model.getQunatity());
            pst.setString(4, model.getDate());
            pst.executeUpdate();
            result = true;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return result;
    }
	

    public List<Order> userOrders(int id) {
        List<Order> list = new ArrayList<>();
        try {
            query = "select * from omos.orders where u_id=? order by orders.o_id desc";
            pst = this.con.prepareStatement(query);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            while (rs.next()) {
                Order order = new Order();
                //ProductDao productDao = new ProductDao(this.con);
                int mId = rs.getInt("m_id");
                
                //Product product = productDao.getSingleProduct(pId);
                Medicine medicine = MedicineDBUtil.getSingleProduct(mId);
                order.setOrderId(rs.getInt("o_id"));
                order.setId(mId);
                order.setMedName(medicine.getMedName());
                order.setManufacturer(medicine.getManufacturer());
                order.setPrice(medicine.getPrice()*rs.getInt("o_quantity"));
                order.setQunatity(rs.getInt("o_quantity"));
                order.setDate(rs.getString("o_date"));
                list.add(order);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return list;
    }

    public void cancelOrder(int id) {
        //boolean result = false;
        try {
            query = "delete from omos.orders where o_id=?";
            pst = this.con.prepareStatement(query);
            pst.setInt(1, id);
            pst.execute();
            //result = true;
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.print(e.getMessage());
        }
        //return result;
    }
    
    public int countOrd() {
    	int count =0;
		try {

			query  = "select count(*) from omos.orders";
			pst = this.con.prepareStatement(query);
			rs  = pst.executeQuery();
			
			if(rs.next()) {
				count =  rs.getInt(1);
			}
			
		}catch (Exception e){
			e.printStackTrace();
		}
		
		return count;
    }
}
