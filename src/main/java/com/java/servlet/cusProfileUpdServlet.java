package com.java.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.Medicine;
import com.java.util.*;

/**
 * Servlet implementation class cusProfileUpdServlet
 */
@WebServlet("/cusProfileUpdServlet")
public class cusProfileUpdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cusProfileUpdServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String address = request.getParameter("address");
		String dob = request.getParameter("dob");
		String phone = request.getParameter("phone");
		String password = request.getParameter("password");
		
		
		boolean isTrue;
		
		isTrue = UserDBUtil.updateUser(username, email, firstName, lastName, address, dob, phone, password);
		
		if(isTrue==true) {
			List <Medicine> med = MedicineDBUtil.getMedicineDetails();
			RequestDispatcher dis = request.getRequestDispatcher("customerProfile.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
