package Servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.gamezone.util.DBConnection;

import Dao.GameDao;
import Dao.CartDao;
import Models.CartModel;
import Models.UserModel;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/add-to-cart")
public class AddToCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
	private static final DBConnection DBconnection = null;
    
    
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
response.setContentType("text/html; charset=UTF-8");

        try (PrintWriter out = response.getWriter()) 
        {
        	com.gamezone.model.CustomerModel auth = (com.gamezone.model.CustomerModel) request.getSession().getAttribute("loginedcus");
        	
        	if (auth == null) 
        	{
        	    response.sendRedirect("login.jsp");
        	    return;
        	}
           

            int gameId = Integer.parseInt(request.getParameter("id"));
            GameDao gameDao = new GameDao(DBconnection.getConnection());
            CartModel cart = gameDao.getSingleGame(gameId);
            
            if (cart == null)
            {
                out.println("<h3>Game not found.</h3>");
                return;
            }

            CartDao cartDao = new CartDao(DBconnection.getConnection());
            List<CartModel> cartItems = cartDao.getCartItems(auth.getId());
            boolean exist = false;
            for (CartModel c : cartItems) {
               
            	if (c.getGameId() == gameId) 
                {
                    exist = true;
                    out.println("<h3>Item already in cart. <a href='cart-display'>Go to Cart</a></h3>");
                    break;
                }
            }

            if (!exist) {
                cartDao.insertCartItem(cart, auth.getId());
                response.sendRedirect("index.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    /*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	
        response.setContentType("text/html;charset=UTF-8");
        
        
        try (PrintWriter out = response.getWriter()) 
        {
            int id = Integer.parseInt(request.getParameter("id"));
            
            HttpSession session = request.getSession();
            
            ArrayList<CartModel> cartList = (ArrayList<CartModel>) session.getAttribute("cart-list");

            if (cartList == null) {
                cartList = new ArrayList<>();
                CartModel cm = new CartModel();
                cm.setGameId(id);
                cm.setQuantity(1);
                cartList.add(cm);
                
                session.setAttribute("cart-list", cartList);
                response.sendRedirect("index.jsp");
            } 
            
            else 
            
            {
                boolean exist = false;
                for (CartModel c : cartList) 
                {
                    if (c.getGameId() == id)
                    {
                        exist = true;
                        out.println("<h3>Item Already in Cart. <a href='cart.jsp'>Go to Cart Page</a></h3>");
                        break;
                    }
                }
                
                
                if (!exist) 
                {
                    CartModel cm = new CartModel();
                    cm.setGameId(id);
                    cm.setQuantity(1);
                    cartList.add(cm);
                    response.sendRedirect("index.jsp");
                }
            }
            
            
 }

    }
    
}*/