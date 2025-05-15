package com.gamezone.controller;

import com.gamezone.dao.loginDao ;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.gamezone.model.userModel;

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

        // Get login details from request
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");

        // Validate user credentials and fetch the user object
        userModel user = loginDao.validateUser(userName, password);

        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);  // Store the user object in session

            // Redirect based on role
            if ("developer".equalsIgnoreCase(user.getRole())) {
                response.sendRedirect("developerDashboard.jsp?login=success");
            } else if ("customer".equalsIgnoreCase(user.getRole())) {
                response.sendRedirect("Customer/userDash.jsp?login=success");
            } else if ("moderator".equalsIgnoreCase(user.getRole())) {
                response.sendRedirect("moderator/moderatorDashboard.jsp?login=success");
            } else if ("admin".equalsIgnoreCase(user.getRole())) {
                response.sendRedirect("admin/adminDashboard.jsp?login=success");
            } else {
                response.sendRedirect("home.jsp?login=success");
            }
        } else {
            response.sendRedirect("login.jsp?error=1");  // Redirect to login with error message if credentials are incorrect
        }
    }
}
