<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Approved Games</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #1c2b36;
            color: white;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 90%;
            margin: 50px auto;
            background-color: #2c3e50;
            padding: 20px;
            border-radius: 8px;
        }
        h1 {
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            color: white;
        }
        th, td {
            padding: 10px;
            border-bottom: 1px solid #444;
        }
        th {
            background-color: #34495e;
        }
        tr:hover {
            background-color: #3a4a5f;
        }
        img {
            width: 100px;
        }
        .btn {
            padding: 6px 12px;
            margin-right: 4px;
            text-decoration: none;
            color: white;
            border-radius: 4px;
        }
        .btn-view { background-color: #3498db; }
        .btn-update { background-color: #f39c12; }
        .btn-delete { background-color: #e74c3c; }
    </style>
</head>
<body>

<div class="container">
    <h1>Approved Games</h1>

    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Type</th>
                <th>Price</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="game" items="${approvedGames}">
                <tr>
                    <td>${game.gamename}</td>
                    <td>${game.gametype}</td>
                    <td>$${game.gameprice}</td>
                    <td>${game.status}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
