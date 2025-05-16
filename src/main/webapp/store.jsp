<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="com.gamezone.util.DBConnection" %> <!-- Adjust import based on your project -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Game Store</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            padding: 30px;
        }
        .game-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr); /* Show exactly 4 per row */
            gap: 20px;
        }
        .game-card {
            background-color: #fff;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
            text-align: center;
        }
        .game-card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 6px;
        }
        .game-card h3 {
            margin: 10px 0;
            color: #333;
        }
        .view-btn {
            background-color: #800000;
            color: #fff;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
            display: inline-block;
            margin-top: 10px;
            transition: background-color 0.3s;
        }
        .view-btn:hover {
            background-color: #b22222;
        }
    </style>
</head>
<body>
    <h2>Game Store</h2>
    <div class="game-grid">
        <%
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            try {
                conn = DBConnection.getConnection();
                String sql = "SELECT gameID, gamename, gameimagepath FROM games WHERE status = 'approved'";
                ps = conn.prepareStatement(sql);
                rs = ps.executeQuery();

                while (rs.next()) {
                    int gameID = rs.getInt("gameID");
                    String name = rs.getString("gamename");
                    String image = rs.getString("gameimagepath");
        %>
<div class="game-card">
    <img src="<%= image %>" alt="<%= name %>">
    <h3><%= name %></h3>
    <a class="view-btn" href="viewGameDetailsServlet?id=<%= gameID %>">View Details</a>
</div>

        <%
                }
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
            } finally {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            }
        %>
    </div>
</body>
</html>
