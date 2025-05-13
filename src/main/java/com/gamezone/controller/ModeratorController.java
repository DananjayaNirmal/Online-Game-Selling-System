package com.gamezone.controller;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
//import java.util.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gamezone.dao.ModeratorDAO;
import com.gamezone.model.Feedbacks;
import com.gamezone.model.News;


	//@WebServlet("/")

	@WebServlet(urlPatterns = {"/moderator/manageNews", "/moderator/createdNews", "/moderator/feedbacks"})

	public class ModeratorController extends HttpServlet {
		private static final long serialVersionUID = 1L;
		
		ModeratorDAO dao = new ModeratorDAO();   	

		protected void doPost(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {
					
					String path = request.getServletPath();
					System.out.println(path);
					
					switch(path) {
					
					case "/moderator/manageNews":
						System.out.println("create news clicked" + path);
						createNews(request, response);
						break;	
						
					/*case "/moderator/createdNews":
						showNews(request, response);
						break;	*/
						
					}
				}
		
		
		
		
		//------------------------------
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {
					
					String path = request.getServletPath();
					System.out.println(path);
					
					switch(path) {
					
					/*case "/moderator/manageNews":
						System.out.println("create news clicked" + path);
						createNews(request, response);
						break;	*/
						
					case "/moderator/createdNews":
						showNews(request, response);
						break;
						
					case "/moderator/feedbacks":
						showFeedbacks(request, response);
						break;	
						
					case "/moderator/updateNews":
						updateNews(request, response);
						break;	
						
						
					}
				}
		
		
			private void showFeedbacks(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
					
				List<Feedbacks> flist = new ArrayList<>();
				
				flist = dao.getFeedbacks();
				
				request.setAttribute("feedbacklist", flist);
				RequestDispatcher rd = request.getRequestDispatcher("feedbacks.jsp");
				rd.forward(request, response);
				
			
		}




			//---------------------------------
		
		
		private void updateNews(HttpServletRequest request, HttpServletResponse response) {
			 
			 
				
				int id = Integer.parseInt(request.getParameter("id"));
				
				//News oldUser = dao.selectNews(id);
				 
	
			
		}
		
		

		private void showNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
					
			List<News> nl = new ArrayList<>();
			
			nl = dao.getStoredNews();
			
			System.out.println("News List" + nl);
			
			request.setAttribute("newslist", nl);
			RequestDispatcher rd = request.getRequestDispatcher("createdNews.jsp");
			rd.forward(request, response);
			
		}

		private void createNews(HttpServletRequest request, HttpServletResponse response) throws IOException {
			
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			LocalDate today = LocalDate.now();
			String date = Date.valueOf(today).toString();

			System.out.println(title);
			//System.out.println(date);
			
			
			News news = new News(title,content, date);
			//System.out.println("The converted Date is:" + news.getDate());
			//dao.storeNews(news);
			//System.out.println("news added");
			//response.sendRedirect("/admin/manageUsers");
			
			dao.storeNews(news);
			//response.sendRedirect("manageNews.jsp");
			response.sendRedirect("createdNews");
			
		}

		 
		

		/*private void showUpdateForm(HttpServletRequest request, HttpServletResponse response) {
			
			int id = Integer.parseInt(request.getParameter("id"));
			
			User oldUser = dao.selectCurrentUser(id);
			 
			
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
			
			//System.out.println(un);
			//System.out.println(un);
			
			if(dao.checkAdmin(un, up)) {
				
				System.out.println("Login success");
				response.sendRedirect("manageGames.jsp");
				
			}else {
				
				System.out.println("Login failed");
				response.sendRedirect("adminLogin.jsp");
				
			}
			
		}*/
		
	}


