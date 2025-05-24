package com.gamezone.controller;

import com.gamezone.dao.loginDao;
import com.gamezone.model.userModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/loginservlet")
public class loginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private loginDao loginDao;

    @Override
    public void init() {
        loginDao = new loginDao();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userName = request.getParameter("userName");
        String password = request.getParameter("password");

        userModel user = loginDao.validateUser(userName, password);

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            session.setMaxInactiveInterval(60); // Session timeout in seconds

            // Role-based redirection
            String role = user.getRole();
            switch (role.toLowerCase()) {
                case "developer":
                    response.sendRedirect("developerDashboard.jsp?login=success");
                    break;
                case "customer":
                    response.sendRedirect("Customer/userDash.jsp?login=success");
                    break;
                case "moderator":
                    response.sendRedirect("moderator/moderatorDashboard.jsp?login=success");
                    break;
                case "admin":
                    response.sendRedirect("admin/adminDashboard.jsp?login=success");
                    break;
                default:
                    response.sendRedirect("dashboard.jsp?login=success");
                    break;
            }
        } else {
            response.sendRedirect("login.jsp?error=invalid");
        }
    }
}
