package com.payment;



import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CustomerInsert")
public class InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Retrieving parameters from the request
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String section = request.getParameter("section");
		String method = request.getParameter("method");
		String amount = request.getParameter("amount");
		
		// Inserting customer data and getting the status of the operation
		boolean isTrue;
		
		isTrue = UserDBUtil.insertcustomer(name, email, phone, section, method, amount);
		
		// Forwarding the request to the appropriate JSP based on the insertion status
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Search.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
