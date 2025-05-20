package Servlets;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.SQLException;
import com.gamezone.util.DBConnection;
import Dao.CartDao;

import Models.CartModel;
import Models.UserModel;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/remove-from-cart")
public class RemoveFromCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	com.gamezone.model.CustomerModel auth = (com.gamezone.model.CustomerModel) request.getSession().getAttribute("loginedcus");
        
        

        String gameId = request.getParameter("id");
       
          
        
        try {
        	
        	CartDao cartDao = new CartDao(DBConnection.getConnection());
            // cartDao = new CartDao(DBconnection.getConnection());
            cartDao.removeCartItem(Integer.parseInt(gameId), auth.getId());

			
		} catch (Exception e) {
		    e.printStackTrace();
		}
            	          
            response.sendRedirect("cart-display");
        }
        
    }  
    
    
    
    
    

    
    
    
    
    
    
   /* protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            String gameId = request.getParameter("id");
            
            if (gameId != null) 
            {
                ArrayList<CartModel> cartList = (ArrayList<CartModel>) request.getSession().getAttribute("cart-list");
                if (cartList != null) 
                {
                    for (CartModel c : cartList) {
                        if (c.getGameId() == Integer.parseInt(gameId)) 
                        {
                            cartList.remove(cartList.indexOf(c));
                            break;
                        }
                    }
                }
                response.sendRedirect("cart.jsp");
                
                
            } 
            
            else 
            {
                response.sendRedirect("cart.jsp");
            }
        }
    }
}*/