<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Update Game</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #1c2b36;
            color: white;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: 50px auto;
            background-color: #2c3e50;
            padding: 20px;
            border-radius: 8px;
        }
        h1 {
            text-align: center;
        }
        label {
            font-size: 16px;
            display: block;
            margin-top: 10px;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            background-color: #34495e;
            border: 1px solid #7f8c8d;
            color: white;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #3498db;
            margin-top: 20px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #2980b9;
        }
        
            button {
        padding: 10px 20px;
        background-color: #1abc9c;
        color: #fff;
        border: none;
        font-size: 16px;
        cursor: pointer;
        border-radius: 5px;
        margin-top: 20px;
    }
    button:hover {
        background-color: #16a085;
    }
        
    </style>
</head>
<body>
<div class="container">
    <h1>Update Game</h1>
    <form action="updateGameServlet" method="post">
        <input type="hidden" name="gameID" value="${game.gameID}" />
        
        <label>Game Name:</label>
        <input type="text" name="gamename" value="${game.gamename}" required />

        <label>Game Type:</label>
        <input type="text" name="gametype" value="${game.gametype}" required />

        <label>Game Price:</label>
        <input type="number" name="gameprice" value="${game.gameprice}" required />

        <label>Description:</label>
        <textarea name="gamedescription" required>${game.gamedescription}</textarea>

        <input type="submit" value="Update Game" />
        
        <button onclick="window.history.back()">Go Back</button>
    </form>
</div>
</body>
</html>
