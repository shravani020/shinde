package com.java.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.util.UserDBUtil;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Uname = request.getParameter("Uname");
		String email = request.getParameter("email");
		String fname = request.getParameter("Fname");
		String lname = request.getParameter("Lname");
		String address = request.getParameter("address");
		String gender = request.getParameter("gender");
		String birthdate = request.getParameter("birthdate");
		String phone = request.getParameter("phone-number");
		String pwd = request.getParameter("psw");
		
		
		boolean isTrue;
		
		isTrue = UserDBUtil.createUser(Uname, email, fname, lname, address, gender, birthdate, phone, pwd);
		
		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	
	}

}
