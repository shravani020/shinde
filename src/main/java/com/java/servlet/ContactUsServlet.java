package com.java.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.util.ContactUsDBUtil;

@WebServlet("/ContactUsServlet")
public class ContactUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");
        String issue = request.getParameter("issue");
        
		boolean isTrue;
		
		isTrue = ContactUsDBUtil.createFeedback(name, email, message, issue);
		
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
