package Servlets;

import com.gamezone.util.DBConnection;
import Dao.OrderDao;
import Dao.CartDao;
import Models.CartModel;
import Models.OrderModel;
import Models.UserModel;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet("/CheckoutServlet")
public class CheckoutServlett extends HttpServlet {
	
	
	private static final DBConnection DBconnection = null;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        try (PrintWriter out = response.getWriter()) 
        {
        	com.gamezone.model.CustomerModel auth = (com.gamezone.model.CustomerModel) request.getSession().getAttribute("auth");
            
        	
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            
            Date date = new Date();
            
            CartDao cartDao = new CartDao(DBconnection.getConnection());
            List<CartModel> cartList = cartDao.getCartItems(auth.getId());
            if (cartList != null && !cartList.isEmpty()) 
            {
                OrderDao orderDao = new OrderDao(DBconnection.getConnection());
                for (CartModel c : cartList) 
                {
                    OrderModel order = new OrderModel();
                    order.setGameId(c.getGameId());
                    order.setUserId(auth.getId());
                    order.setQuantity(c.getQuantity());
                    order.setOrderDate(formatter.format(date));
                    
                    boolean result = orderDao.insertOrder(order);
                    if (!result) {
                        out.println("<h3>Error saving order.</h3>");
                        return;
                    }
                }
                cartDao.clearCart(auth.getId());
                response.sendRedirect("payment.jsp");
            
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    
	
}
	
}
























/*
 * package Servlets;
 * 
 * import com.gamezone.util.DBconnection;
 * 
 * import javax.servlet.ServletException; import
 * javax.servlet.annotation.WebServlet; import javax.servlet.http.*;
 * 
 * import Dao.OrderDao; import Models.CartModel; import Models.OrderModel;
 * import Models.UserModel;
 * 
 * 
 * import java.io.IOException; import java.io.PrintWriter; import
 * java.sql.SQLException; import java.text.SimpleDateFormat; import
 * java.util.ArrayList; import java.util.Date;
 * 
 * 
 * import java.io.IOException; import javax.servlet.ServletException; import
 * javax.servlet.annotation.WebServlet; import javax.servlet.http.HttpServlet;
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 *//**
	 * Servlet implementation class CheckoutServlett
	 *//*
		 * @WebServlet("/CheckoutServlett") public class CheckoutServlett extends
		 * HttpServlet { private static final long serialVersionUID = 1L;
		 * 
		 * protected void doGet(HttpServletRequest request, HttpServletResponse
		 * response) throws ServletException, IOException { try (PrintWriter out =
		 * response.getWriter()) { SimpleDateFormat formatter = new
		 * SimpleDateFormat("yyyy-MM-dd"); Date date = new Date(); HttpSession session =
		 * request.getSession(); ArrayList<CartModel> cartList = (ArrayList<CartModel>)
		 * session.getAttribute("cart-list"); UserModel auth = (UserModel)
		 * session.getAttribute("auth");
		 * 
		 * if (cartList != null && auth != null) { OrderDao orderDao = new
		 * OrderDao(DBconnection.getConnection()); for (CartModel c : cartList) {
		 * OrderModel order = new OrderModel(); order.setGameId(c.getGameId());
		 * order.setUserId(auth.getId()); order.setQuantity(c.getQuantity());
		 * order.setOrderDate(formatter.format(date)); boolean result =
		 * orderDao.insertOrder(order); if (!result) break; } cartList.clear();
		 * session.setAttribute("cart-list", null);
		 * response.sendRedirect("payment.jsp"); } else { if (auth == null) {
		 * response.sendRedirect("login.jsp"); } else {
		 * response.sendRedirect("cart.jsp"); } }
		 * 
		 * } catch (SQLException | ClassNotFoundException e) { e.printStackTrace(); } }
		 * 
		 * protected void doPost(HttpServletRequest request, HttpServletResponse
		 * response) throws ServletException, IOException { doGet(request, response); }
		 * 
		 * }
		 */

    /*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            UserModel auth = (UserModel) request.getSession().getAttribute("auth");
            if (auth == null) {
                response.sendRedirect("login.jsp");
                return;
            }

            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            Date date = new Date();

            CartDao cartDao = new CartDao(DBconnection.getConnection());
            List<CartModel> cartList = cartDao.getCartItems(auth.getId());

            if (cartList != null && !cartList.isEmpty()) {
                OrderDao orderDao = new OrderDao(DBconnection.getConnection());
                for (CartModel c : cartList) {
                    OrderModel order = new OrderModel();
                    order.setGameId(c.getGameId());
                    order.setUserId(auth.getId());
                    order.setQuantity(c.getQuantity());
                    order.setOrderDate(formatter.format(date));
                    boolean result = orderDao.insertOrder(order);
                    if (!result) {
                        out.println("<h3>Error saving order.</h3>");
                        return;
                    }
                }
                cartDao.clearCart(auth.getId());
                response.sendRedirect("payment.jsp");
            } else {
                response.sendRedirect("cart-display");
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}*/