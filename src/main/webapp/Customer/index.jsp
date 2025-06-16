
<%@page import="com.gamezone.util.DBConnection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.gamezone.model.customer.UserModel, com.gamezone.model.customer.OrderModel, com.gamezone.model.customer.CartModel, com.gamezone.model.customer.GameModel" %>
<%@ page import="com.gamezone.dao.customer.OrderDao, com.gamezone.dao.customer.GameDao" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*, java.text.DecimalFormat" %>


<% 
List<GameModel> games = null;
try {
	GameDao gameDao = new GameDao(DBConnection.getConnection());
	
    games = gameDao.getAllGames();
} catch (Exception e) {
    e.printStackTrace();
    out.println("Error fetching games: " + e.getMessage());
}
UserModel auth = (UserModel) session.getAttribute("auth");
if (auth != null) {
    request.setAttribute("auth", auth);
}
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to GameZone</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            margin: 40px auto;
            background-color: #ffffff;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        p {
            text-align: center;
            font-size: 16px;
            color: #555;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 25px;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: black;
            color: white;
        }

        td {
            background-color: #fdfdfd;
        }

        a.button {
            display: inline-block;
            padding: 8px 14px;
            background-color: black;
            color: white;
            text-decoration: none;
            border-radius: 6px;
            transition: background-color 0.3s ease;
        }

       

        .view-cart {
            display: inline-block;
            margin-top: 20px;
            background-color: black;
            padding: 10px 16px;
            color: white;
            border-radius: 6px;
            text-decoration: none;
        }

        

        .no-games {
            text-align: center;
            padding: 20px;
            color: #999;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to GameZone!</h1>
        <p>Click below to start exploring and adding games to your cart.</p>

        <table>
            <thead>
                <tr>
                    <th>Game ID</th>
                    <th>Game Name</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            
                <% if (games != null && !games.isEmpty()) { 
                    for (GameModel game : games) { %>
                        <tr>
                            <td><%= game.getGameId() %></td>
                            <td><%= game.getGameName() %></td>
                            <td><%= game.getCategory() %></td>
                            <td>$<%= game.getPrice() %></td>
                            <td>
                             <a class="button" href="add-to-cart?id=<%= game.getGameId() %>">Add to Cart</a>
                            </td>
                        </tr> <%  } 
                    
                } 
                
                else { %>
                    <tr>
                        <td colspan="5" class="no-games">No games available</td>
                    </tr>
                <% } %>
            </tbody>
        </table>

        <div style="text-align: center;">
            <a class="view-cart" href="cart-display">View Cart</a>
        </div>
    </div>
</body>
</html>









