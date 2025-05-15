package com.gamezone.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.gamezone.dao.gameDao;
import com.gamezone.model.gameModel;


@WebServlet("/loadUpdateGameServlet")
public class loadUpdateGameServlet extends HttpServlet {
 
	private static final long serialVersionUID = 1L;

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     String id = request.getParameter("id");
     List<gameModel> gameList = gameDao.getByID(id);

     if (!gameList.isEmpty()) {
         request.setAttribute("game", gameList.get(0));
         request.getRequestDispatcher("updateGame.jsp").forward(request, response);
     } else {
         response.sendRedirect("errorPage.jsp");
     }
 }
}
