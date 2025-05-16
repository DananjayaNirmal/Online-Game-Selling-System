package com.gamezone.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.gamezone.dao.registerDao;
import com.gamezone.model.userModel;

import java.io.IOException;

@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form data
        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        String password = request.getParameter("password");
        String role = request.getParameter("role");

        // Create a RegisterModel object and populate it with form data
        userModel user = new userModel(0, userName, email, dob, age, gender, password, role);
        user.setUserName(userName);
        user.setEmail(email);
        user.setDob(dob);
        user.setAge(age);
        user.setGender(gender);
        user.setPassword(password);
        user.setRole(role);

        // Create RegisterDao object to handle database operations
        registerDao dao = new registerDao();

        // Call registerUser method to insert data into the database
        boolean registered = dao.registerUser(user);

        // Check registration status
        if (registered) {
           
            response.sendRedirect("login.jsp");  // Or you can show a success page
        } else {
            // Registration failed, display error message
            response.getWriter().println("Registration failed. Please try again.");
        }
    }
}

