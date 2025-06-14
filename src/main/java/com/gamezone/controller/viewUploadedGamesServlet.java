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

@WebServlet("/developer/viewUploadedGamesServlet")
public class viewUploadedGamesServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<gameModel> allGames = gameDao.getAllGames();
        request.setAttribute("allGames", allGames); 

        RequestDispatcher dispatcher = request.getRequestDispatcher("viewUploadedGames.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
