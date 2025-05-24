<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Profile - Moderator</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h1>Edit Profile</h1>
    <form action="/moderator/updateProfile" method="post">
        <input type="hidden" name="userId" value="${sessionScope.userId}" />
        
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" name="username" id="username" value="${sessionScope.username}" required />
        </div>

        <div class="form-group">
            <label for="password">New Password:</label>
            <input type="password" name="password" id="password" required />
        </div>

        <div class="form-group">
            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" name="confirmPassword" id="confirmPassword" required />
        </div>

        <div class="form-group">
            <input type="submit" value="Update Profile" />
        </div>
    </form>

    <div class="back-link">
        <a href="moderatorDashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>
