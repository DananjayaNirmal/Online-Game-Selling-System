package com.gamezone.controller;

import com.gamezone.dao.gameDao;
import com.gamezone.model.gameModel;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/developer/storeServlet")
public class storeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<gameModel> games = gameDao.getApprovedGames();
        request.setAttribute("games", games);

        RequestDispatcher dispatcher = request.getRequestDispatcher("store.jsp");
        dispatcher.forward(request, response);
    }
}
