package com.gamezone.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;

import com.gamezone.dao.AdminDAO;
import com.gamezone.model.Game;

//@WebServlet("/")

@WebServlet({"manageGames", "sampleLogin"})

public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AdminController() {
        super();
       
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String spath = request.getServletPath();
		
		switch(spath) {
			
		case "manageGames":
		showSubmittedGames(request, response);	
		
		case "sampleLogin":
			System.out.println("Login clicked" + spath);
			checkLogin(request, response);
			break;
			
		}
		
		
	}

	private void showSubmittedGames(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Game> gameList = new ArrayList<>();
		
		AdminDAO dao = new AdminDAO();
		
		gameList = dao.getSubmittedGames();
		
		request.setAttribute("gList", gameList);
		RequestDispatcher rd = request.getRequestDispatcher("manageGames.jsp");
		rd.forward(request, response);
		
	}
	
	
	
	private void checkLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String un = request.getParameter("uname");
		String up = request.getParameter("upass");
		
		System.out.println(un);
		AdminDAO dao = new AdminDAO();
		
		if(dao.checkUser(un, up)) {
			
			System.out.println("Login success");
			response.sendRedirect("manageGames");
			
		}else {
			
			System.out.println("Login failed");
			response.sendRedirect("sampleLogin.jsp");
			
		}
		
	}

}
