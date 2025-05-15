<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - Gamezone</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: transparent;
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(135deg, #800000, #4b0000);
        }

        .form-container {
            background: rgba(0, 0, 0, 0.7);
            border-radius: 10px;
            padding: 20px 40px;
            width: 100%;
            max-width: 500px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            line-height: 1.5;
        }

        h2 {
            text-align: center;
            color: #fff;
            margin-bottom: 20px;
            font-size: 22px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 4px;
            color: #ddd;
        }

        input {
            width: 100%;
            padding: 8px;
            margin: 6px 0 12px;
            border: 1px solid #444;
            border-radius: 5px;
            background-color: #333;
            color: #fff;
            font-size: 14px;
        }

        input[type="checkbox"] {
            width: auto;
            margin-right: 8px;
        }

        .login-btn {
            background-color: #800000;
            color: #fff;
            border: none;
            padding: 12px 25px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            display: block;
            margin: 20px auto 10px auto;
            transition: background-color 0.3s;
        }

        .login-btn:hover {
            background-color: #b22222;
        }

        button[type="button"] {
            background-color: #800000;
            color: #fff;
            border: none;
            padding: 8px 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            margin-left: 10px;
            transition: background-color 0.3s;
        }

        button[type="button"]:hover {
            background-color: #b22222;
        }

        .link-buttons {
            margin-top: 30px;
            font-size: 14px;
            color: #bbb;
        }

        .link-row {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 15px;
        }

        @media (max-width: 480px) {
            .form-container {
                padding: 15px;
                width: 90%;
            }

            h2 {
                font-size: 18px;
            }

            .link-row {
                flex-direction: column;
                gap: 8px;
            }

            button {
                margin-left: 0;
            }
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Login to Gamezone</h2>
        <form action="loginservlet" method="POST">

            <label for="userName">User Name:</label>
            <input type="text" name="userName" id="userName" placeholder="User Name" required>

            <label for="password">Password:</label>
            <input type="password" name="password" id="password" placeholder="Password" required>

            <label>
                <input type="checkbox" name="remember"> Remember Me
            </label>

            <button type="submit" class="login-btn">Login</button>
        
            <div class="link-buttons">
                <div class="link-row">
                    <span>Don’t have an account?</span>
                    <button type="button" onclick="window.location.href='register.jsp'">Sign Up</button>
                    <button type="button" onclick="window.location.href='home.jsp'">Go Back</button>
                </div>
            </div>

        </form>
    </div>
    
    <%
    if (request.getParameter("error") != null) {
%>
    <script>alert("Invalid credentials. Please try again.");</script>
<%
    } else if (request.getParameter("login") != null && request.getParameter("login").equals("success")) {
%>
    <script>alert("Login successful!");</script>
<%
    }
%>
    
    
    <script>
    
    const urlParams = new URLSearchParams(window.location.search);
    const error = urlParams.get("error");
    const login = urlParams.get("login");

    if (error === "invalid") {
        alert("Login failed: Invalid credentials");
    }

    if (login === "success") {
        alert("Login successful!");
    }
</script>

</body>
</html>
