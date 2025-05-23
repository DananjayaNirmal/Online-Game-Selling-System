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

	@WebServlet(urlPatterns = {"/moderator/manageNews", "/moderator/displayNews", "/moderator/feedbacks", "/moderator/showUpdateNews", "/giveFeedbacks", "/moderator/updateNews", "/moderator/deleteNews", "/moderator/giveFeedbacks","/moderator/NewsHome","/moderator/updateProfile"})

	public class ModeratorController extends HttpServlet {
		private static final long serialVersionUID = 1L;
		
		ModeratorDAO dao = new ModeratorDAO();   	

		protected void doPost(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {
					
					String path = request.getServletPath();
					
					switch(path) {
					
					case "/moderator/manageNews":
						System.out.println("create news clicked" + path);
						createNews(request, response);
						break;	
						
					case "/moderator/updateNews":
						updateNews(request, response);
						break;
						
					case "/moderator/giveFeedbacks":
						insertFeedbacks(request, response);
						break;	
						
					case "/moderator/NewsHome":
						NewsHome(request, response);
						break;		
							
						
					}
				}


  // INSERT TO THE FEEDBACK

		private void insertFeedbacks(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
			
			
			String email = request.getParameter("email");
			String description = request.getParameter("description");
			
			LocalDate today = LocalDate.now();
			String date = Date.valueOf(today).toString();

			 if (email == null || email.trim().isEmpty()) {
			        request.setAttribute("error", "Email is required.");
			        request.getRequestDispatcher("giveFeedbacks.jsp").forward(request, response);
			        return;
			    }

			    if (description == null || description.trim().isEmpty()) {
			        request.setAttribute("error", "Feedback description is required.");
			        request.getRequestDispatcher("giveFeedbacks.jsp").forward(request, response);
			        return;
			    }
			
			Feedbacks fb = new Feedbacks(email, description, date);
	
			
			dao.insertFeedback(fb);
			response.sendRedirect("giveFeedbacks.jsp");
			
		}
			




		//------------------------------
		
		




		protected void doGet(HttpServletRequest request, HttpServletResponse response) 
				throws ServletException, IOException {
					
					String path = request.getServletPath();
					System.out.println(path);
					
					switch(path) {
					
					case "/moderator/displayNews":
						showNews(request, response);
						break;
						
					case "/moderator/feedbacks":
						showFeedbacks(request, response);
						break;	
						
					case "/moderator/showUpdateNews":
						showUpdateNews(request, response);
						break;	
						
					case "/moderator/deleteNews":
						deleteNews(request, response);
						break;	
						
						
					case "/moderator/NewsHome":
						NewsHome(request, response);
						break;		
								
						
					}
				}
		
		
		//---------------------------------
		
		
		
		
			private void deleteNews(HttpServletRequest request, HttpServletResponse response) throws IOException {
					 
				int id = Integer.parseInt(request.getParameter("id"));
					
				dao.deleteNews(id);
					
				response.sendRedirect ("displayNews");
					
				}
		
		
			private void showFeedbacks(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
					
				List<Feedbacks> flist = new ArrayList<>();
				
				flist = dao.getFeedbacks();
				
				request.setAttribute("feedbacklist", flist);
				RequestDispatcher rd = request.getRequestDispatcher("feedbacks.jsp");
				rd.forward(request, response);
				
			
		}


		
			
			//-----------------------
			
		private void showUpdateNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			 
			 
				
				int id = Integer.parseInt(request.getParameter("id"));
				
				News nws = dao.selectNews(id);
				RequestDispatcher rd = request.getRequestDispatcher("showUpdateNews.jsp");
				request.setAttribute("ns", nws); 
				rd.forward(request, response);
		}
		
		
		
		private void updateNews(HttpServletRequest request, HttpServletResponse response) throws IOException {
			int id = Integer.parseInt(request.getParameter("id"));
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String date = request.getParameter("date");
			
			News unws = new News(id, title, content, date);
			
			dao.updateNews(unws);
			
			response.sendRedirect("displayNews");
		}
		
		
		//------------------------------------------------------
		
		

		private void showNews(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
					
			List<News> nl = new ArrayList<>();
			
			nl = dao.getStoredNews();
			
			request.setAttribute("newslist", nl);
			RequestDispatcher rd = request.getRequestDispatcher("displayNews.jsp");
			rd.forward(request, response);
			
		}
		
		private void NewsHome(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			List<News> nl = new ArrayList<>();
			
			nl = dao.getStoredNews();
			
			request.setAttribute("newslist", nl);
			RequestDispatcher rd = request.getRequestDispatcher("NewsHome.jsp");
			rd.forward(request, response);
			
		}
		
		

		private void createNews(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
			
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			
			LocalDate today = LocalDate.now();
			String date = Date.valueOf(today).toString();

			
			if (title == null || title.trim().isEmpty()) {
		        request.setAttribute("error", "Title is required.");                        // validation for the title and content 
		        request.getRequestDispatcher("manageNews.jsp").forward(request, response);
		        return;
		    }
			
			
			News news = new News(title,content, date);
	
			
			dao.storeNews(news);
			response.sendRedirect("manageNews.jsp");
			
		}
		
		
		 
		
	}


