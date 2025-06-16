<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <style>
        /* Global Styles */
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
            background:#141414;
        }

        .form-container {
            background:#212121;
            border-radius: 10px;
            padding: 20px 40px;
            width: 100%;
            max-width: 500px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            line-height: 1.2;
        }

        h2 {
            text-align: center;
            color: #fff;
            margin-bottom: 15px;
            font-size: 20px;
        }

        label {
            font-weight: bold;
            margin-bottom: 4px;
            display: block;
            color: #ddd;
        }

        input, select {
            width: 100%;
            padding: 8px;
            margin: 6px 0 12px;
            border: 1px solid #444;
            border-radius: 5px;
            background-color: #333;
            color: #fff;
            font-size: 14px;
        }

        input[type="submit"] {
            background-color:#0b6ef8;
            color: #fff;
            border: none;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color:#0b6ef8;
        }

        .form-footer {
            text-align: center;
            font-size: 14px;
            color: #bbb;
        }

        .form-footer a {
            color: #ff6347;
            text-decoration: none;
        }

        .form-footer a:hover {
            text-decoration: underline;
        }

        @media (max-width: 480px) {
            .form-container {
                padding: 15px;
                width: 90%;
            }

            h2 {
                font-size: 18px;
            }
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Register for Gamezone</h2>
        <form action="registerServlet" method="POST">

            <label for="userName">User Name:</label>
            <input type="text" id="userName" name="userName" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="dob">Date of Birth:</label>
           <input type="date" id="dob" name="dob" required>

            <label for="age">Age:</label>
            <input type="number" id="age" name="age" required>     
           
			<label for="gender">Gender:</label>
			<select id="gender" name="gender" required>
			    <option value="">-- Select Gender --</option>
			    <option value="Male">Male</option>
			    <option value="Female">Female</option>
			</select>

            <label for="Password">Password:</label>
            <input type="password" id="password" name="password"  required>

            <label for="role">Role:</label>
            <select id="role" name="role" required>
            	<option value="">-- Select Role --</option>
                <option value="developer">Developer</option>
                <option value="customer">Customer</option>
            </select>

            <input type="submit" value="Submit">
        </form>
        <div class="form-footer">
            <p>Already have an account? <a href="login.jsp">Login here</a></p>
        </div>
    </div>
</body>
</html>