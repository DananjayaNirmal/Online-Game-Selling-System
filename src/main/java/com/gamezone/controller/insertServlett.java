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


@WebServlet("/developer/insertServlett")
public class insertServlett extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CustomerModel cus =  new CustomerModel(); 
		
	    
	    
	    cus.setUserName(request.getParameter("userName"));
	    cus.setEmail(request.getParameter("email"));
		cus.setDob(request.getParameter("dob"));
		cus.setAge(Integer.parseInt(request.getParameter("age")));
		cus.setGender(request.getParameter("gender"));
		cus.setType(request.getParameter("role"));
		cus.setCurrentPassword(request.getParameter("currentPassword"));
		//cus.setPassword(request.getParameter("password"));
		cus.setNewPassword(request.getParameter("newPassword"));
		cus.setConfirmNewPassword(request.getParameter("confirmNewPassword"));
		
		
		customerService service = new customerService(); 
		
		
		service.customerService(cus);//the data saved inside customerEprofmodel class object (cus) sending the (pass the value)
		//value inside cus to service class using calling editProfileCustomer method then can send to DB  
		    
		//we are sending the data where we want to display using request Dispatcher
		RequestDispatcher dispatcher = request.getRequestDispatcher("developer/login.jsp");
		dispatcher.forward(request, response);
		
		
		
	}

}
