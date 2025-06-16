<%@ page import="com.gamezone.model.gameModel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    gameModel game = (gameModel) request.getAttribute("game");
%>

<div class="container">
    <% if (game != null) { %>
        <h2><%= game.getGamename() %></h2>
        <div class="image-box">
            <img height ="500" width ="1200" src="images/<%= game.getGameimagepath() %>" alt="Game Image">
        </div>
        <div class="details">
            <p><strong>Type:</strong> <%= game.getGametype() %></p>
            <p><strong>Price:</strong> $<%= game.getGameprice() %></p>
            <p><strong>Description:</strong> <%= game.getGamedescription() %></p>
        </div>
    <% } else { %>
        <div class="error">Game details not available. Please try again.</div>
    <% } %>

    <!-- Buttons -->
    <div class="button-group">
        <button onclick="window.history.back()">Go Back</button>
        <button>Add to Cart</button>
    </div>
</div>

<style>
    body {
        background-color: #121212;
        color: #e0e0e0;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 80%;
        margin: 30px auto;
        padding: 30px;
        border-radius: 15px;
        background-color: #1e1e1e;
        box-shadow: 0 0 30px rgba(0, 0, 0, 0.8);
    }

    .image-box img {
        max-width: 100%;
        border-radius: 12px;
        margin-bottom: 25px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.6);
    }

    h2 {
        color:white;
        margin-bottom: 20px;
        text-align: center;
        font-size: 28px;
    }

    .details {
        font-size: 18px;
        line-height: 1.7;
        padding: 10px;
    }

    .details strong {
        color:#0a6ffa;
    }

    .error {
        color: #ff6b6b;
        font-weight: bold;
        font-size: 20px;
        text-align: center;
        margin-top: 30px;
    }

    .button-group {
        display: flex;
        gap: 15px;
        margin-top: 30px;
    }

    button {
        padding: 12px 24px;
        background-color:#333333;
        color: #fff;
        border: none;
        font-size: 16px;
        cursor: pointer;
        border-radius: 8px;
        transition: background-color 0.3s;
    }

    button:hover {
        background-color:#333333;
    }
</style>
