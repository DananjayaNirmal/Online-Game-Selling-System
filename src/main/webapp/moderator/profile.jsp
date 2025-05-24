<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.gamezone.model.userModel" %>
<%
    userModel user = (userModel) session.getAttribute("user");
    String updateStatus = request.getParameter("updateStatus");

    if (user == null) {
    	response.sendRedirect(request.getContextPath() + "/login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #800000, #4b0000);
            color: #fff;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .form-container {
            background: rgba(0, 0, 0, 0.7);
            border-radius: 10px;
            padding: 20px 40px;
            width: 100%;
            max-width: 500px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }
        h2 {
            text-align: center;
            margin-bottom: 15px;
        }
        .status-message {
            text-align: center;
            margin-bottom: 10px;
            color: #b0e57c;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
            color: #ddd;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            background: #333;
            color: #fff;
            border: 1px solid #555;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #800000;
            margin-top: 20px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #b22222;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h2>Update Profile</h2>

    <% if (updateStatus != null) { %>
        <div class="status-message"><%= updateStatus %></div>
    <% } %>

    <form action="profileServlet" method="post">
        <label for="userName">Name:</label>
        <input type="text" name="userName" value="<%= user.getUserName() %>" required>

        <label for="email">Email:</label>
        <input type="email" name="email" value="<%= user.getEmail() %>" readonly>

        <label for="dob">Date of Birth:</label>
        <input type="date" name="dob" value="<%= user.getDob() %>" required>

        <label for="age">Age:</label>
        <input type="number" name="age" value="<%= user.getAge() %>" required>

        <label for="gender">Gender:</label>
        <select name="gender" required>
            <option value="Male" <%= "Male".equals(user.getGender()) ? "selected" : "" %>>Male</option>
            <option value="Female" <%= "Female".equals(user.getGender()) ? "selected" : "" %>>Female</option>
        </select>

        <input type="submit" value="Update">
    </form>
</div>
</body>
</html>
