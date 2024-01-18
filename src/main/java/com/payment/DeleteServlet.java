package com.payment;



import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteCustomerServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// doPost method to handle post requests
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Getting the 'id' parameter from the request	
		String id = request.getParameter("id");
		boolean isTrue;
		
		// Calling the 'deleteCustomer' method from 'UserDBUtil' to delete the customer
		isTrue = UserDBUtil.deleteCustomer(id);
		
		// Checking if the deletion was successful
		if (isTrue == true) {
			
			// If successful, displaying an alert and redirecting to Insert.jsp
			String alertMessage = "Details Delete Successful";
		    response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='Insert.jsp';</script>");

		}
		else {
			// If deletion was not successful, getting customer details and forwarding to Profile.jsp
			List<User> cusDetails = UserDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Profile.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}
