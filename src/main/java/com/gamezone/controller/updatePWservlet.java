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


@WebServlet("/developer/updatePWservlet")
public class updatePWservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CustomerModel cus =  new CustomerModel();
		//cus.setEmail(request.getParameter("email"));  // ADD THIS LINE

		cus.setCurrentPassword(request.getParameter("currentPassword"));
	    cus.setNewPassword(request.getParameter("newPassword"));
		//cus.setConfirmNewPassword(request.getParameter("confirmNewPassword"));
		
		
		customerService service = new customerService();
		
		service.updatePassword(cus);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("userDash.jsp");  //singleDataButton
		dispatcher.forward(request, response);
		
			}

}
