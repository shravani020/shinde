package com.java.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.model.ManagerOrder;
import com.java.util.ManagerOrderDBUtil;

@WebServlet("/ManagerOrderServlet")
public class ManagerOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String itemAndqty = request.getParameter("itemAndqty");
		String itemDesc = request.getParameter("item_description");
		
		HttpSession session = request.getSession();
		String managerId = (String) session.getAttribute("username");
		
		Date currentDate = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String FcurrentDate = dateFormat.format(currentDate);
		
		boolean isTrue;
		
		isTrue = ManagerOrderDBUtil.createMOrder(managerId, FcurrentDate, itemAndqty, itemDesc);
		
		if(isTrue==true) {
			List<ManagerOrder> mOrderDetails = ManagerOrderDBUtil.getMOrder(managerId);
			request.setAttribute("mOrderDetails", mOrderDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("manageOrders.jsp");
			dis.forward(request, response);
			
		}
		
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
