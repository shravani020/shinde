package com.java.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.java.util.PaymentDBUtil;

@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String paymentMethod = request.getParameter("paymentMethod");
        double amount = Double.parseDouble(request.getParameter("amount"));
        String cardNo = request.getParameter("cardNo");
        
        boolean isTrue;
        
		isTrue = PaymentDBUtil.newPayment(paymentMethod, amount, cardNo);
		
		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("ContactUs.jsp");
			dis.forward(request, response);
			
		}
		
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		         
        
        
        
	}

}
