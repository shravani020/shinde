package com.java.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EmpInsertServlet")
public class EmpInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public EmpInsertServlet() {
        super();
 
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String fname = request.getParameter("first_name");
		String lname = request.getParameter("last_name");
		String dob = request.getParameter("DOB");
		String phone = request.getParameter("mobile_no");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");
		String add = request.getParameter("address");
		String job = request.getParameter("title");
		String join = request.getParameter("join_date");
		String insure = request.getParameter("insure");
		String zone = request.getParameter("zone");
		String username = request.getParameter("user_name");
		
		boolean isTrue;
		
		isTrue = com.java.util.EmpDBUtil.insertEmp(fname, lname, dob, phone, gender, email, pwd, add, job, join, insure, zone, username);
		
		if(isTrue == true) {
			
			
			RequestDispatcher dis = request.getRequestDispatcher("Employee.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
