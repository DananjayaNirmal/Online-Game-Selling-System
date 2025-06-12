/*package com.gamezone.controller;

import com.gamezone.dao.profileDao;
import com.gamezone.model.userModel;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

@SuppressWarnings("serial")
public class profileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        userModel user = (userModel) session.getAttribute("user");

        if (user != null) {
            // Get updated values
            String userName = request.getParameter("userName");
            String dob = request.getParameter("dob");
            int age = Integer.parseInt(request.getParameter("age"));
            String gender = request.getParameter("gender");

            // Update model
            user.setUserName(userName);
            user.setDob(dob);
            user.setAge(age);
            user.setGender(gender);

            // Update in DB
            profileDao dao = new profileDao();
            dao.updateUser(user);

            // Update session & redirect
            session.setAttribute("user", user);
            response.sendRedirect("profile.jsp");
        } else {
            response.sendRedirect("profile.jsp");
        }
    }
}*/


/*package com.gamezone.controller;

import com.gamezone.dao.profileDao;
import com.gamezone.model.userModel;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

@SuppressWarnings("serial")
public class profileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        userModel user = (userModel) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        // Get updated values
        String userName = request.getParameter("userName");
        String dob = request.getParameter("dob");
        int age;
        try {
            age = Integer.parseInt(request.getParameter("age"));
        } catch (NumberFormatException e) {
            age = user.getAge(); // Retain original age if parsing fails
        }
        String gender = request.getParameter("gender");

        // Update model
        user.setUserName(userName);
        user.setDob(dob);
        user.setAge(age);
        user.setGender(gender);

        // Update in DB
        profileDao dao = new profileDao();
        boolean isUpdated = dao.updateUser(user);

        if (isUpdated) {
            session.setAttribute("user", user);
            response.sendRedirect("moderator/profile.jsp");
        } else {
            request.setAttribute("errorMessage", "Failed to update profile.");
            request.getRequestDispatcher("moderator/moderatorDashboard.jsp").forward(request, response);
        }
    }
}*/



package com.gamezone.controller;

import com.gamezone.dao.profileDao;
import com.gamezone.model.userModel;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

@SuppressWarnings("serial")
public class profileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null) {
            response.sendRedirect(request.getContextPath() + "/moderatorDashboard.jsp");
            return;
        }

        userModel user = (userModel) session.getAttribute("user");
        if (user != null) {
            // Get updated values
            String userName = request.getParameter("userName");
            String dob = request.getParameter("dob");
            int age = Integer.parseInt(request.getParameter("age"));
            String gender = request.getParameter("gender");

            // Update model
            user.setUserName(userName);
            user.setDob(dob);
            user.setAge(age);
            user.setGender(gender);

            // Update in DB
            profileDao dao = new profileDao();
            dao.updateUser(user);

            // Update session & redirect to dashboard
            session.setAttribute("user", user);
            response.sendRedirect(request.getContextPath() + "/moderator/dashboard.jsp");  // <-- redirect to dashboard page
        } else {
            response.sendRedirect(request.getContextPath() + "/developer/login.jsp");
        }
    }
}

