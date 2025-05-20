<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>



<title>Warning - GameZone</title>
    <style>
        body {
            background-color: #ffffff; /* changed from #FFE0B2 to white */
    		color: #000000; /* ensures text is readable on white */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .warning-box {
            width: 360px;
             background-color: #f9f9f9; /* subtle light background */
    border: 1px solid #ddd; /* adds light border for visibility */
            border-radius: 20px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .warning-header {
            background-color: #E53935; /* bold red warning */
            color: white;
            padding: 20px 0;
        }

        .warning-header i {
            font-size: 36px;
        }

        .warning-content {
            padding: 20px;
        }
        .warning-content h2 {
    color: #000000; /* black title */
}

.warning-content p {
    color: #333333; /* dark gray text */
}

       

        .close-btn {
            background-color: #E53935;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 50px;
            margin: 20px auto;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        .close-btn:hover {
            background-color: #c62828;
        }
    </style>
</head>
</head>
<body>
<div class="warning-box">
    <div class="warning-header">
        <img src="assets/icons/warning-icon.png" alt="Warning Icon">
        <%-- Make sure you have a warning icon at this path or update accordingly --%>
    </div>
    <div class="warning-content">
        <h2>Warning!</h2>
        <p>No warnings were found for this user.</p>
        <form action="userDash.jsp">
            <button class="close-btn">CLOSE</button>
        </form>
    </div>
</div>


</body>
</html>


