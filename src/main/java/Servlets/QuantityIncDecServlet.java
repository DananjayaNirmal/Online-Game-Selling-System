package Servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.gamezone.util.DBConnection;
import Dao.CartDao;
import Models.CartModel;
import Models.UserModel;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/quantity-inc-dec")
public class QuantityIncDecServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
	private static final DBConnection DBconnection = null;
    
    
/*    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	com.gamezone.model.CustomerModel auth = (com.gamezone.model.CustomerModel) request.getSession().getAttribute("auth");
        
        String action = request.getParameter("action");
        int gameId = Integer.parseInt(request.getParameter("id"));

        try {
            CartDao cartDao = new CartDao(DBconnection.getConnection());
            List<CartModel> cartItems = cartDao.getCartItems(auth.getId());
            for (CartModel c : cartItems) {
                if (c.getGameId() == gameId) {
                    int quantity = c.getQuantity();
                    if (action.equals("inc")) {
                        quantity++;
                        cartDao.updateCartItemQuantity(gameId, auth.getId(), quantity);
                    } else if (action.equals("dec") && quantity > 1) {
                        quantity--;
                        cartDao.updateCartItemQuantity(gameId, auth.getId(), quantity);
                    }
                    break;
                }
            }
            response.sendRedirect("cart-display");
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    
}
    
   */ 
    
    
    
    
    
    
    
    

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 String action = request.getParameter("action");
     int id = Integer.parseInt(request.getParameter("id"));
     com.gamezone.model.CustomerModel auth = (com.gamezone.model.CustomerModel) request.getSession().getAttribute("loginedcus");

     if (action != null && auth != null) {
         try {
             CartDao cartDao = new CartDao(DBconnection.getConnection());
             List<CartModel> cartItems = cartDao.getCartItems(auth.getId());

             for (CartModel c : cartItems) {
                 if (c.getGameId() == id) {
                     int quantity = c.getQuantity();
                     if (action.equals("inc")) {
                         quantity++;
                     } else if (action.equals("dec") && quantity > 1) {
                         quantity--;
                     }
                     cartDao.updateCartItemQuantity(id, auth.getId(), quantity);
                     break;
                 }
             }
         } catch (Exception e) {
             e.printStackTrace();
         }
     }
     response.sendRedirect("cart-display");
 
    }
}