<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #001f3d, #000000); /* Dark blue to black gradient */
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .profile-container {
            background: linear-gradient(135deg, #003366, #000000); /* Dark blue to black gradient for inner container */
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
            text-align: center;
            width: 100%;
            max-width: 400px;
        }

        .profile-picture {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            overflow: hidden;
            margin-bottom: 20px;
            display: inline-block;
            background-color: #f4f4f4;
            text-align: center;
            line-height: 150px;
            border: 5px solid #800000; /* Added border around the image */
            position: relative; /* Allow overlay on top */
        }

        .profile-picture img {
            width: 100%;
            height: 100%;
            object-fit: cover; /* Ensure the image covers the whole area */
        }

        .profile-picture .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.4); /* Dark overlay with 40% opacity */
            border-radius: 50%;
        }

        .profile-picture i {
            font-size: 70px;
            color: #800000;
        }

        .profile-name {
            font-size: 22px;
            font-weight: bold;
            color: #fff;  /* White text color for profile name */
            margin-bottom: 30px;
        }

        .profile-buttons {
            display: flex;
            justify-content: space-around;
            width: 100%;
        }

        .profile-buttons button {
            padding: 12px 30px;
            margin: 10px 0;
            background-color: #28a745;  /* Green button */
            color: #fff;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .profile-buttons button:hover {
            background-color: #218838; /* Darker green on hover */
        }
    </style>
    <!-- Load Font Awesome for the profile icon -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</head>
<body>

<%
    // Retrieve user data from the session
    String userName = (String) session.getAttribute("userName"); // Assuming userName is stored in session after login
    String profileImage = (String) session.getAttribute("profileImage"); // This should be set in the session when the user logs in

    // If no user is logged in, default to "Guest"
    if (userName == null) {
        userName = "Profile";  // Default to "Guest" if not logged in
    }
%>

<div class="profile-container">
    <div class="profile-picture">
        <!-- If no profile image, display a profile icon (Font Awesome) -->
        <i class="fas fa-user-alt"></i>
        <div class="overlay"></div> <!-- Dark overlay added on top of the image -->
    </div>

    <div class="profile-name">
        <%= userName %>  <!-- Display the logged-in user's name -->
    </div>

    <div class="profile-buttons">
        <!-- Buttons to view and edit the profile -->
        <button onclick="location.href='viewProfile.jsp'">View Profile</button>
        <button onclick="location.href='editProfile.jsp'">Edit Profile</button>
    </div>
</div>

</body>
</html>
