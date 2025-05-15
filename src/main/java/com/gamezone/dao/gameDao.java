package com.gamezone.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.gamezone.model.gameModel;
import com.gamezone.util.DBConnection;

public class gameDao {

    // Insert a new game
    public static boolean insertGame(gameModel game) {
        boolean isSuccess = false;

        try {
            Connection con = DBConnection.getConnection();
            String sql = "INSERT INTO games (gamename, gametype, gameprice, gameimagepath, description, status) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, game.getGamename());
            ps.setString(2, game.getGametype());
            ps.setDouble(3, game.getGameprice());
            ps.setString(4, game.getGameimagepath());
            ps.setString(5, game.getGamedescription()); // maps to DB column 'description'
            ps.setString(6, "pending");

            int rows = ps.executeUpdate();
            isSuccess = rows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    
    
    
   //Get by ID 
    public static List<gameModel> getByID(String id) {
        List<gameModel> games = new ArrayList<>();

        try {
            int convertedID = Integer.parseInt(id);
            Connection con = DBConnection.getConnection();
            String sql = "SELECT * FROM games WHERE gameID = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, convertedID);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int gameID = rs.getInt("gameID");
                String gamename = rs.getString("gamename");
                String gametype = rs.getString("gametype");
                double gameprice = rs.getDouble("gameprice");
                String gameimagepath = rs.getString("gameimagepath");
                String gamedescription = rs.getString("description");
                String status = rs.getString("status");

                gameModel game = new gameModel(gameID, gamename, gametype, gameprice, gameimagepath, gamedescription, status);
                games.add(game);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return games;
    }
  
  
  	//Get all games
    public static List<gameModel> getAllGames() {
        List<gameModel> games = new ArrayList<>();

        try {
            Connection con = DBConnection.getConnection();
            String sql = "SELECT * FROM games";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int gameID = rs.getInt("gameID");
                String gamename = rs.getString("gamename");
                String gametype = rs.getString("gametype");
                double gameprice = rs.getDouble("gameprice");
                String gameimagepath = rs.getString("gameimagepath");
                String gamedescription = rs.getString("description");
                String status = rs.getString("status");

                gameModel game = new gameModel(gameID, gamename, gametype, gameprice, gameimagepath, gamedescription, status);
                games.add(game);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return games;
    }
    
    
  //Get approved games
    public static List<gameModel> getApprovedGames() {
        List<gameModel> games = new ArrayList<>();

        try {
            Connection con = DBConnection.getConnection();
            // Modify the SQL query to filter only approved games
            String sql = "SELECT * FROM games WHERE status = 'approved'";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int gameID = rs.getInt("gameID");
                String gamename = rs.getString("gamename");
                String gametype = rs.getString("gametype");
                double gameprice = rs.getDouble("gameprice");
                String gameimagepath = rs.getString("gameimagepath");
                String gamedescription = rs.getString("description");
                String status = rs.getString("status");

                gameModel game = new gameModel(gameID, gamename, gametype, gameprice, gameimagepath, gamedescription, status);
                games.add(game);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return games;
    }

    

    

    // Delete a game by ID
    public static boolean deleteGame(int gameId) {
        boolean isSuccess = false;

        try {
            Connection con = DBConnection.getConnection();
            String sql = "DELETE FROM games WHERE gameID = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, gameId);

            int rows = ps.executeUpdate();
            isSuccess = rows > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

	


    //updateGame
    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;

    public static void updateGame(int gameID, String gamename, String gametype, double gameprice, String gamedescription) {
        try {
            con = DBConnection.getConnection();
            stmt = con.createStatement();

            String sql = "UPDATE games SET gamename='" + gamename + "', gametype='" + gametype + "', gameprice=" + gameprice + 
                         ", description='" + gamedescription + "' WHERE gameID=" + gameID;

            int rs = stmt.executeUpdate(sql);
            isSuccess = rs > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

 

}
