package com.java.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.util.MedicineDBUtil;
import com.java.model.Medicine;
import com.java.util.ManagerOrderDBUtil;

import com.java.util.ManagerOrderDBUtil;
/**
 * Servlet implementation class addMedServlet
 */
@WebServlet("/addMedServlet")
public class addMedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		//getting parameters that are passed from manageMedicine.jsp
		String medCode = request.getParameter("medcode");
		String medName = request.getParameter("fname");
		String indication = request.getParameter("ind");
		int qty = Integer.parseInt(request.getParameter("qty"));
		String expDate = request.getParameter("exp");
		int price = Integer.parseInt(request.getParameter("price"));
		String manufacturer = request.getParameter("manuf");
		
		
		boolean isTrue;
		//storing return values in a bool variable
		isTrue = MedicineDBUtil.addMed(medCode, medName, indication, qty, expDate, price, manufacturer);
		
		if(isTrue==true) {//store the medincne list that fetch from the database
			List <Medicine> med = MedicineDBUtil.getMedicineDetails();
			RequestDispatcher dis = request.getRequestDispatcher("ManageMedicine.jsp");//relaod the page
			dis.forward(request, response);
		}
		
		else {//if addmed function in meddbutil failt redirect to a unsuccess.jsp
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
