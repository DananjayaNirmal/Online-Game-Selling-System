package com.gamezone.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.gamezone.dao.gameDao;

import java.io.IOException;

@WebServlet("/developer/updateGameServlet")
public class updateGameServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int gameID = Integer.parseInt(request.getParameter("gameID"));
        String gamename = request.getParameter("gamename");
        String gametype = request.getParameter("gametype");
        double gameprice = Double.parseDouble(request.getParameter("gameprice"));
        String gamedescription = request.getParameter("gamedescription");
       // String gameimagepath = request.getParameter("gameimagepath");

        gameDao.updateGame(gameID, gamename, gametype, gameprice, gamedescription);

            
        request.setAttribute("successMessage", "Game updated successfully!");

        response.sendRedirect("viewUploadedGamesServlet");  // Adjust destination as needed
    }
}
