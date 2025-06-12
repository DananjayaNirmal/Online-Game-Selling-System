package com.gamezone.cart.customer;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/gameInsertServelet")
public class gameInsertServelet extends HttpServlet {
    private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

  
        gameModel game = new gameModel();
        game.setGameName(request.getParameter("gameName"));
        game.setGameDescription(request.getParameter("gameDescription"));
        game.setPrice(request.getParameter("price"));

        
        gameDao dao = new gameDao(); 
        dao.insertCart(game);

    
        RequestDispatcher dispatcher = request.getRequestDispatcher("gameView.jsp"); // or userDash.jsp
        dispatcher.forward(request, response);
    }
}
