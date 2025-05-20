package Servlets;

import com.gamezone.util.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import Dao.OrderDao;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/cancel-order")
public class CancelOrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            String id = request.getParameter("id");
            if (id != null) {
            	OrderDao orderDao = new OrderDao(DBConnection.getConnection());
               
                orderDao.cancelOrder(Integer.parseInt(id));
            }
            response.sendRedirect("cart.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}