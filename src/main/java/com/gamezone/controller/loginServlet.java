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
            session.setMaxInactiveInterval(60); 

            // Role-based redirection
            String role = user.getRole();
            if ("developer".equalsIgnoreCase(role)) {
                response.sendRedirect("developerDashboard.jsp?login=success");
            } else if ("customer".equalsIgnoreCase(role)) {
                response.sendRedirect("Customer/userDash.jsp?login=success");
            } else if ("moderator".equalsIgnoreCase(role)) {
                response.sendRedirect("moderator/moderatorDashboard.jsp?login=success");
            } else if ("admin".equalsIgnoreCase(role)) {
                response.sendRedirect("admin/adminDashboard.jsp?login=success");
            } else {
                // Default if no known role
                response.sendRedirect("dashboard.jsp?login=success");
            }
        } else {
            response.sendRedirect("login.jsp?error=invalid");
        }
    }
}
