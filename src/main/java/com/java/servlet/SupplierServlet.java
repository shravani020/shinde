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

@WebServlet("/SupplierServlet")
public class SupplierServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<ManagerOrder> dataForSupplier = ManagerOrderDBUtil.getAllOrders();
		request.setAttribute("dataForSupplier", dataForSupplier);
		
		RequestDispatcher dis = request.getRequestDispatcher("SupplierUi.jsp");
		dis.forward(request, response);
		
	}

}
