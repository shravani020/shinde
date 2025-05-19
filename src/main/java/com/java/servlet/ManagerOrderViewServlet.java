package com.java.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.ManagerOrder;
import com.java.util.ManagerOrderDBUtil;

@WebServlet("/ManagerOrderViewServlet")
public class ManagerOrderViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String managerId = request.getParameter("username");
		
		List<ManagerOrder> mOrderDetails = ManagerOrderDBUtil.getMOrder(managerId);
		request.setAttribute("mOrderDetails", mOrderDetails);
		
		System.out.println("Number of orders: " + mOrderDetails.size()); // Debugging statement
		for (ManagerOrder order : mOrderDetails) {
		    System.out.println("Order ID: " + order.getId() + ", Status: " + order.getOrderStatus());
		}

		RequestDispatcher dis = request.getRequestDispatcher("manageOrders.jsp");
		dis.forward(request, response);
	}

}
