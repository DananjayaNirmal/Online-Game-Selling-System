package Servlets;

import com.gamezone.util.DBConnection;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import Dao.CartDao;
import Dao.GameDao;
import Models.CartModel;
import Models.UserModel;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/cart-display")
public class CartDisplayServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
	private static final DBConnection DBconnection = null;
    
    
    
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	com.gamezone.model.CustomerModel auth = (com.gamezone.model.CustomerModel) request.getSession().getAttribute("loginedcus");
        
        

        try {
            CartDao cartDao = new CartDao(DBconnection.getConnection());
            List<CartModel> cartItems = cartDao.getCartItems(auth.getId());
            double total = cartDao.getTotalCartPrice(auth.getId());

            request.setAttribute("cartGames", cartItems);
            request.setAttribute("total", total);

            RequestDispatcher dispatcher = request.getRequestDispatcher("cart.jsp");
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
}   
    
    
    
    

    /*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ArrayList<CartModel> cartList = (ArrayList<CartModel>) session.getAttribute("cart-list");
        List<CartModel> cartGames = null;
        double total = 0;

        if (cartList != null) {
            GameDao gameDao = null;
			try {
				gameDao = new GameDao(DBconnection.getConnection());
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
            cartGames = gameDao.getCartGames(cartList);
            total = gameDao.getTotalCartPrice(cartList);
            request.setAttribute("cartGames", cartGames);
            request.setAttribute("total", total);
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("cart.jsp");
        dispatcher.forward(request, response);
    }
}*/