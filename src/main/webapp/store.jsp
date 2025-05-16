<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<%@ page import="com.gamezone.util.DBConnection" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Game Store</title>
    <style>
        body {
            margin: 0;
            padding: 30px;
            background: linear-gradient(145deg, #1c1c1c, #232323);
            color: #f0f0f0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        h2 {
            text-align: center;
            font-size: 36px;
            color: #00fff7;
            margin-bottom: 40px;
            text-shadow: 0 0 10px #00fff7;
        }

        .game-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 25px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .game-card {
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 16px;
            padding: 20px;
            text-align: center;
            box-shadow: 0 4px 20px rgba(0, 255, 255, 0.1);
            backdrop-filter: blur(6px);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .game-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 10px 30px rgba(0, 255, 255, 0.25);
        }

        .game-card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
            border-radius: 12px;
            margin-bottom: 15px;
            border: 1px solid #444;
        }

        .game-card h3 {
            font-size: 20px;
            color: #ffffff;
            margin: 10px 0;
        }

        .view-btn {
            background: linear-gradient(90deg, #00fff7, #00c3ff);
            color: #000;
            padding: 10px 18px;
            font-weight: bold;
            text-decoration: none;
            border-radius: 30px;
            transition: background 0.3s, transform 0.2s;
        }

        .view-btn:hover {
            background: linear-gradient(90deg, #00c3ff, #00fff7);
            transform: scale(1.05);
        }

        @media (max-width: 600px) {
            body {
                padding: 15px;
            }
        }
    </style>
</head>
<body>
    <h2>🔥 Explore the Game Store</h2>
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
                out.println("<div style='color:red; text-align:center;'>Error: " + e.getMessage() + "</div>");
            } finally {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            }
        %>
    </div>
</body>
</html>
