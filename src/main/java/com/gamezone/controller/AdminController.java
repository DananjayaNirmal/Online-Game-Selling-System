package com.gamezone.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gamezone.dao.AdminDAO;

//@WebServlet("/")

@WebServlet(urlPatterns = {"/adminLogin", "/manageGames", "/adminDashboard"})

public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AdminDAO dao = new AdminDAO();   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
				
				String act = request.getServletPath();
				
				switch(act) {
				
				case "/adminLogin":
					System.out.println("Login clicked" + act);
					checkLogin(request, response);
					break;
					
				case "/adminDashboard":
					showAdminDashboard(request, response);
					break;
					
					
				}
			}

	private void showAdminDashboard(HttpServletRequest request, HttpServletResponse response) {
		
		
		
	}

	private void checkLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String un = request.getParameter("uname");
		String up = request.getParameter("upass");
		
		System.out.println(un);
		System.out.println(un);
		
		if(dao.checkAdmin(un, up)) {
			
			System.out.println("Login success");
			response.sendRedirect("manageGames.jsp");
			
		}else {
			
			System.out.println("Login failed");
			response.sendRedirect("adminLogin.jsp");
			
		}
		
	}
	
}
