package com.gamezone.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gamezone.dao.customerService;
import com.gamezone.model.CustomerModel;


@WebServlet("/updateServlet")
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		CustomerModel cus =  new CustomerModel();
		
		 	cus.setUserName(request.getParameter("userName"));
		    cus.setEmail(request.getParameter("email")); 
			cus.setDob(request.getParameter("dob"));
			cus.setAge(Integer.parseInt(request.getParameter("age")));
			cus.setGender(request.getParameter("gender"));
			cus.setCurrentPassword(request.getParameter("currentPassword"));
			cus.setNewPassword(request.getParameter("newPassword"));
			
			
			customerService service = new customerService();
			
			service.updateCustomer(cus);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("userDash.jsp");  //singleDataButton
			dispatcher.forward(request, response);
		
		
	}

}
