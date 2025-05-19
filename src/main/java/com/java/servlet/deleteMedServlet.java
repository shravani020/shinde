package com.java.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.util.MedicineDBUtil;

/**
 * Servlet implementation class deleteMedServlet
 */
@WebServlet("/deleteMedServlet")
public class deleteMedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteMedServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//taking the id and convert to a int
		int id = Integer.parseInt(request.getParameter("id"));
		//call th deletmed function and stor the bool value in a bool variables
		boolean isSuccess = MedicineDBUtil.deleteMed(id);
		
		if(isSuccess) {// if success redirect to the same page
			response.sendRedirect("ManageMedicine.jsp");
		}
		
	}

	

}
