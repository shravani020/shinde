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
import com.java.util.MedicineDBUtil;

/**
 * Servlet implementation class updateMedServlet
 */
@WebServlet("/updateMedServlet")
public class updateMedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateMedServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//get parametrs from the updte form 
		String medCode = request.getParameter("medcode");
		String medName = request.getParameter("fname");
		String indication = request.getParameter("ind");
		int qty = Integer.parseInt(request.getParameter("qty"));
		String expDate = request.getParameter("exp");
		double price = Double.parseDouble(request.getParameter("price"));
		String manufacturer = request.getParameter("manuf");
		
		boolean isSuccess;
		//calling the update med function
		isSuccess = MedicineDBUtil.updateMed(medCode, medName, indication, qty, expDate, price, manufacturer);
		
		if(isSuccess== true) {
			response.sendRedirect("ManageMedicine.jsp");
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
		
	}

}
