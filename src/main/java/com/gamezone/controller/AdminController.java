package com.gamezone.controller;

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gamezone.dao.AdminDAO;
import com.gamezone.model.User;


import javax.servlet.RequestDispatcher;

//@WebServlet("/")

@WebServlet(urlPatterns = {"/adminLogin", "/manageUsers", "/admin/addNewUser", "/manageGames", "/adminDashboard"})

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
					
					
				case "/manageUsers":
					showManageUsers(request, response);
					break;
					
				case "/admin/addNewUser" :
					addNewUser(request, response);
					break;	
					
						
					
				}
			}

	private void addNewUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String userName = request.getParameter("uname");
		String email = request.getParameter("uemail");
		int phoneNo = Integer.parseInt(request.getParameter("phoneno"));
		String password = request.getParameter("upass");
		String roll = request.getParameter("roll");
		int age = Integer.parseInt(request.getParameter("uage"));
		String gender = request.getParameter("ugender");
		
		
		System.out.println("this is the name: " + userName);
		
		User usr = new User(userName, email, phoneNo, password, roll, age, gender);
		dao.insertUser(usr);
		System.out.println("patient added to system");
		//response.sendRedirect("./manageUsers.jsp");
		
	}

	private void showManageUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
				List<User> userList = new ArrayList<>();
				
				userList = dao.getAllUsers();
				
				System.out.println("Dana" + userList);
				
				request.setAttribute("usr", userList);
				RequestDispatcher rd = request.getRequestDispatcher("manageUsers.jsp");
				rd.forward(request, response);
		
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
