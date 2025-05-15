package com.gamezone.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gamezone.dao.gameDao;
import com.gamezone.model.gameModel;

@WebServlet("/viewApprovedGamesServlet")
public class viewApprovedGamesServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get only approved games
        List<gameModel> approvedGames = gameDao.getApprovedGames();
        request.setAttribute("approvedGames", approvedGames);  // Set approved games as a request attribute

        // Forward to the appropriate JSP page to display approved games
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewApprovedGames.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);  // Call doGet method for POST requests as well
    }
}
