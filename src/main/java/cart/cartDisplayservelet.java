package cart;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/*import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//display available games
@WebServlet("/cartDisplay")
public class cartDisplay extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		gameDao service = new gameDao();
		
		ArrayList<gameModel> game = service.getAllGames();
		
		 

		
		request.setAttribute("game", game); // games is the list

		
		RequestDispatcher dispatcher = request.getRequestDispatcher("gameView.jsp");
		
		  
		
		dispatcher.forward(request, response);
	}

}*/


@WebServlet("/cartDisplayservelet")
public class cartDisplayservelet extends HttpServlet {
    private static final long serialVersionUID = 1L;

  /*  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int gameId = Integer.parseInt(request.getParameter("gameId"));

        gameDao service = new gameDao();
        gameModel game = service.getGameById(gameId); 

        if (game != null) {
            service.inserttoavailableGames(game);      
            request.setAttribute("game", game);       
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("cart.jsp");
        dispatcher.forward(request, response);
    }
}*/


  /*  @WebServlet("")
    public class CartDisplayServlet extends HttpServlet {
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            int gameId = Integer.parseInt(request.getParameter("gameId"));
            HttpSession session = request.getSession();
            int userId = (int) session.getAttribute("userId"); // You must set this on login

            // Dummy: fetch game info by ID from DB (use your DAO)
            gameDao dao = new gameDao();
            gameModel game = dao.getGameById(gameId);

            Statement DBUtil = null;
			// Insert into gamecart table
            try (Connection con = DBUtil.getConnection()) {
                String insertSQL = "INSERT INTO gamecart (userId, gameId, gameName, gameDescription, price) VALUES (?, ?, ?, ?, ?)";
                PreparedStatement ps = con.prepareStatement(insertSQL);
                ps.setInt(1, userId);
                ps.setInt(2, game.getGameId());
                ps.setString(3, game.getGameName());
                ps.setString(4, game.getGameDescription());
                ps.setString(5, game.getPrice());
                ps.executeUpdate();
            } catch (Exception e) {
                e.printStackTrace();
            }

            // Fetch updated cart for this user
            List<gameModel> cartGames = dao.getGamesInCartByUser(userId);
            request.setAttribute("cartGames", cartGames);

            // Forward to cart.jsp
            RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
            rd.forward(request, response);
        }
    }
*/
    
}

