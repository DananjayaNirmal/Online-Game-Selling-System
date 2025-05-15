package com.gamezone.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.gamezone.dao.gameDao;
import com.gamezone.model.gameModel;

@WebServlet("/viewGameDetailsServlet")
public class viewGameDetailsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String gameIdParam = request.getParameter("id");

            if (gameIdParam != null && !gameIdParam.trim().isEmpty()) {
                List<gameModel> gameList = gameDao.getByID(gameIdParam);

                if (!gameList.isEmpty()) {
                    gameModel game = gameList.get(0); // Get the first item from the list
                    request.setAttribute("game", game);
                    RequestDispatcher dispatcher = request.getRequestDispatcher("viewGameDetails.jsp");
                    dispatcher.forward(request, response);
                } else {
                    response.getWriter().println("Game not found.");
                }

            } else {
                response.getWriter().println("Missing or invalid game ID.");
            }

        } catch (NumberFormatException e) {
            response.getWriter().println("Invalid game ID format.");
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred: " + e.getMessage());
        }
    }
}
