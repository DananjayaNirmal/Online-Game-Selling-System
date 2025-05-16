package com.gamezone.controller;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.gamezone.dao.gameDao;

import java.io.IOException;

@WebServlet("/deleteGameServlet")
public class deleteGameServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int gameID = Integer.parseInt(request.getParameter("id"));
        
        boolean isDeleted = gameDao.deleteGame(gameID);

        if (isDeleted) {
          
            response.sendRedirect("viewUploadedGamesServlet"); 
        } else {
            
            request.setAttribute("errorMessage", "Failed to delete the game.");
            request.getRequestDispatcher("viewUploadedGamesServlet").forward(request, response);
        }
    }
}
