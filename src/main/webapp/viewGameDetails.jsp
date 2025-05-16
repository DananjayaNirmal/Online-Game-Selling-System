<%@ page import="com.gamezone.model.gameModel" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    gameModel game = (gameModel) request.getAttribute("game");
%>

<div class="container">
    <% if (game != null) { %>
        <h2><%= game.getGamename() %></h2>
        <div class="image-box">
            <img src="<%= game.getGameimagepath() %>" alt="Game Image">
        </div>
        <div class="details">
            <p><strong>Type:</strong> <%= game.getGametype() %></p>
            <p><strong>Price:</strong> $<%= game.getGameprice() %></p>
            <p><strong>Description:</strong> <%= game.getGamedescription() %></p>
            
        </div>
    <% } else { %>
        <div class="error">Game details not available. Please try again.</div>
    <% } %>

    <!-- Go Back Button -->
    <button onclick="window.history.back()">Go Back</button>
    <button>Add to Cart</button>
</div>

<style>
    .container {
        width: 80%;
        margin: 20px auto;
        padding: 20px;
        border-radius: 15px;
        box-shadow: 0 0 20px rgba(0,0,0,0.2);
        background-color: white;
        font-family: Arial, sans-serif;
    }
    .image-box img {
        max-width: 100%;
        border-radius: 10px;
        margin-bottom: 20px;
    }
    .details {
        margin-top: 20px;
    }
    h2 {
        color: #2e6da4;
        margin-bottom: 15px;
    }
    p {
        line-height: 1.6;
        font-size: 16px;
    }
    .error {
        color: red;
        font-weight: bold;
        font-size: 18px;
        text-align: center;
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
