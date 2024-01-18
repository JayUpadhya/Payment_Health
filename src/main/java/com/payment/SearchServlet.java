package com.payment;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.List;

import javax.servlet.RequestDispatcher;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 // Retrieving parameters from the request
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		
		try {
			// Calling the UserDBUtil to fetch customer details based on name and email
			List<User> cusDetails = UserDBUtil.validate(name, email);
			request.setAttribute("cusDetails", cusDetails);
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		// Forwarding the request to the Details.jsp page
			RequestDispatcher dis = request.getRequestDispatcher("Details.jsp");
			dis.forward(request, response);
	}

}
