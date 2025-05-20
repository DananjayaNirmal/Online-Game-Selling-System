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
import com.gamezone.model.Game;
import com.gamezone.model.User;
import com.gamezone.model.gameModel;
import com.gamezone.util.PasswordUtil;

import javax.servlet.RequestDispatcher;

//@WebServlet("/")

@WebServlet(urlPatterns = {"/admin/adminLogin", "/admin/showUsers",
		"/admin/addNewUser", "/admin/updateUserForm", "/admin/manageGames",
		"/admin/adminDashboard", "/admin/updateUser", "/admin/deleteUser", "/admin/showGames", "/admin/approve"})

public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AdminDAO dao = new AdminDAO();   

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
				
				String act = request.getServletPath();
				
				switch(act) {
				
				case "/admin/adminLogin":
					System.out.println("Login clicked" + act);
					checkLogin(request, response);
					break;
					
				case "/admin/adminDashboard":
					showAdminDashboard(request, response);
					break;
					
					
				case "/admin/showUsers":
					showUsers(request, response);
					break;
					
				case "/admin/addNewUser" :
					addNewUser(request, response);
					break;	
				
				case "/admin/updateUserForm":
					showUpdateForm(request, response);
					break;	
					
				case "/admin/deleteUser":
					deleteUser(request, response);
					break;		
				
				case "/admin/showGames":
					showListedGames(request, response);
					break;	
				
				//case "/admin/approve":
					//approveGames(request, response);
					//break;	
					
				}
			}
	
	
	
	
	//private void approveGames(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 
		//int gameID = Integer.parseInt(request.getParameter("id"));
		
		//Game agame = dao.findGameById(gameID);
		
		
	//}




	private void showListedGames(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		List<Game> gameList = new ArrayList<>();
		System.out.println("Games list start value: ");
		
		gameList = dao.getAllGames();
		
		System.out.println("Games" + gameList);
		
		request.setAttribute("gList", gameList);
		RequestDispatcher rd = request.getRequestDispatcher("showGames.jsp");
		rd.forward(request, response);

		
	}





	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
				
				String act = request.getServletPath();
				
				switch(act) {
				
				case "/admin/updateUser":
					
					updateUser(request, response);
					break;
					
				
						
					
				}
			}
	
	

	private void updateUser(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		 
		
		
		int userID = Integer.parseInt(request.getParameter("uid"));
		String userName = request.getParameter("uname");
		String email = request.getParameter("uemail");
		int age = Integer.parseInt(request.getParameter("uage"));
		String gender = request.getParameter("ugender");
		String phoneNo = request.getParameter("phoneno");
		String password = request.getParameter("upass");
		String roll = request.getParameter("roll");
		String confirmPassword = request.getParameter("uconpass");
		
		
		//
		
		if (password.length() < 9) {
		    request.setAttribute("error", "Password must be 8 characters long");
		    request.getRequestDispatcher("addNewUser.jsp").forward(request, response);
		    return;
		}
		

		
		


		
		if (confirmPassword == null || !password.equals(confirmPassword)) {
		    request.setAttribute("error", "Password and Confirm Password do not match");
		    request.getRequestDispatcher("addNewUser.jsp").forward(request, response);
		    return;
		}
		
		if (phoneNo == null || !phoneNo.matches("\\d{10,15}")) {
		    request.setAttribute("error", "Phone number must contain only digits (10 to 15 digits)");
		    request.getRequestDispatcher("addNewUser.jsp").forward(request, response);
		    return;
		}

		
		if (age < 16) {
		    request.setAttribute("error", "Age must be 16 or older");
		    request.getRequestDispatcher("addNewUser.jsp").forward(request, response);
		    return;
		}

		
		
		//
		
		
		String hashedPassword = PasswordUtil.hashPassword(password);
		
		password = hashedPassword;
		
		
		User uusr = new User(userID, userName, email, phoneNo, password, roll, age, gender);
		
		System.out.println("Sage name: " + userName);
		dao.updateUser(uusr);
		
		response.sendRedirect("showUsers");
		
		
	}




	private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		dao.deleteUser(id);
			
		response.sendRedirect ("showUsers");
		 
		
	}
	

	private void showUpdateForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		User usr = dao.findUserById(id);
		//System.out.println("XXXXX" + usr);	
		
		RequestDispatcher rd = request.getRequestDispatcher("updateUserForm.jsp");
		request.setAttribute("cUser", usr); 
		rd.forward(request, response);
		
		
	}
	

	private void addNewUser(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String userName = request.getParameter("uname");
		String email = request.getParameter("uemail");
		String phoneNo = request.getParameter("phoneno");
		String password = request.getParameter("upass");
		String confirmPassword = request.getParameter("uconpass");
		String roll = request.getParameter("roll");
		int age = Integer.parseInt(request.getParameter("uage"));
		String gender = request.getParameter("ugender");
		
		//___validations_____________________________________________________
		

		if (password.length() < 9) {
		    request.setAttribute("error", "Password must be 8 characters long");
		    request.getRequestDispatcher("addNewUser.jsp").forward(request, response);
		    return;
		}
		

		
		if (email == null || !email.matches("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$")) {
		    request.setAttribute("error", "Invalid email format");
		    request.getRequestDispatcher("addNewUser.jsp").forward(request, response);
		    return;
		}


		
		if (confirmPassword == null || !password.equals(confirmPassword)) {
		    request.setAttribute("error", "Password and Confirm Password do not match");
		    request.getRequestDispatcher("addNewUser.jsp").forward(request, response);
		    return;
		}
		
		if (phoneNo == null || !phoneNo.matches("\\d{10,15}")) {
		    request.setAttribute("error", "Phone number must contain only digits (10 to 15 digits)");
		    request.getRequestDispatcher("addNewUser.jsp").forward(request, response);
		    return;
		}

		
		if (age < 16) {
		    request.setAttribute("error", "Age must be 16 or older");
		    request.getRequestDispatcher("addNewUser.jsp").forward(request, response);
		    return;
		}

		
		
		

		// ___validation end___________________________________________________

		
		String hashedPassword = PasswordUtil.hashPassword(password);
		password = hashedPassword;
		
		System.out.println("this is the hashed pass: " + password);
		
		User usr = new User(userName, email, phoneNo, password, roll, age, gender);
		dao.insertUser(usr);
		System.out.println("User added to system");
		response.sendRedirect("./showUsers");
		
	}

	private void showUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
				List<User> userList = new ArrayList<>();
				
				userList = dao.getAllUsers();
				
				System.out.println("Dana" + userList);
				
				request.setAttribute("usr", userList);
				RequestDispatcher rd = request.getRequestDispatcher("showUsers.jsp");
				rd.forward(request, response);
		
	}
	
	
	

	private void showAdminDashboard(HttpServletRequest request, HttpServletResponse response) {
		
		
		
	}
	
	

	private void checkLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String un = request.getParameter("uname");
		String up = request.getParameter("upass");
		
		//System.out.println(un);
		//System.out.println(un);
		
		if(dao.checkAdmin(un, up)) {
			
			System.out.println("Login success");
			response.sendRedirect("manageGames.jsp");
			
		}else {
			
			System.out.println("Login failed");
			response.sendRedirect("adminLogin.jsp");
			
		}
		
	}
	
}
