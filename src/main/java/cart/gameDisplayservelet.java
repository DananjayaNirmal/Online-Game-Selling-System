package cart;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/gameDisplayservelet")
public class gameDisplayservelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		gameDao service = new gameDao();
		
		ArrayList<gameModel> game = service.getAllGames();
		
		request.setAttribute("game", game); // games is the list

		
		RequestDispatcher dispatcher = request.getRequestDispatcher("gameView.jsp");
		
		  
		
		dispatcher.forward(request, response);
	}

}

