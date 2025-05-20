package Dao;


import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import Models.CartModel;
import Models.GameModel;

public class GameDao {
    private Connection con;

    public GameDao(Connection con) {
        this.con = con;
    }

    
    
public List<GameModel> getAllGames() {
	
        List<GameModel> games = new ArrayList<>();
        try {
            String query = "SELECT * FROM games";
            PreparedStatement pst = con.prepareStatement(query);
            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) 
            {
                GameModel game = new GameModel();
                game.setGameId(rs.getInt("id"));
                game.setGameName(rs.getString("name"));
                game.setCategory(rs.getString("category"));
                game.setPrice(rs.getDouble("price"));
                game.setImage(rs.getString("image"));
                games.add(game);
            }
            
        } catch (SQLException e) 
        {
            e.printStackTrace();
        }
        return games;
    
}






public GameModel getGameById(int gameId) {
        GameModel game = null;
        try {
            String query = "SELECT * FROM games WHERE id = ?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setInt(1, gameId);
            ResultSet rs = pst.executeQuery();
            
            if (rs.next()) {
                game = new GameModel();
                game.setGameId(rs.getInt("id"));
                game.setGameName(rs.getString("name"));
                game.setCategory(rs.getString("category"));
                game.setPrice(rs.getDouble("price"));
                game.setImage(rs.getString("image"));
            }
            
            
        } catch (SQLException e) 
        {
            e.printStackTrace();
        }
        
        return game;
}
    




public CartModel getSingleGame(int gameId) {
        CartModel cart = null;
        try {
            String query = "SELECT * FROM games WHERE id = ?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setInt(1, gameId);
            ResultSet rs = pst.executeQuery();
            
            if (rs.next()) {
                cart = new CartModel();
                cart.setGameId(rs.getInt("id"));
                cart.setGameName(rs.getString("name"));
                cart.setPrice(rs.getDouble("price"));
                cart.setImage(rs.getString("image"));
            }
            
        } 
        
        catch (SQLException e) 
        {
            e.printStackTrace();
        }
        return cart;
}
    

   
    

public double getTotalCartPrice(List<CartModel> cartList) {
        double sum = 0;
        try {
            if (cartList.size() > 0) {
                for (CartModel item : cartList) {
                    String query = "SELECT price FROM games WHERE id = ?";
                    PreparedStatement pst = con.prepareStatement(query);
                    pst.setInt(1, item.getGameId());
                    ResultSet rs = pst.executeQuery();
                    
                    
                    while (rs.next()) {
                        sum += rs.getDouble("price") * item.getQuantity();
                    }
                }
            }
}
        catch (SQLException e) {
            e.printStackTrace();
        }
        return sum;
}




public List<CartModel> getCartGames(List<CartModel> cartList) {
        List<CartModel> games = new ArrayList<>();
        try {
            if (cartList.size() > 0) 
            {
                for (CartModel item : cartList) {
                    String query = "SELECT * FROM games WHERE id = ?";
                    PreparedStatement pst = con.prepareStatement(query);
                    pst.setInt(1, item.getGameId());
                    ResultSet rs = pst.executeQuery();
                    
                    while (rs.next()) {
                        CartModel row = new CartModel();
                        row.setGameId(rs.getInt("id"));
                        row.setGameName(rs.getString("name"));
                        row.setCategory(rs.getString("category"));
                        row.setPrice(rs.getDouble("price") * item.getQuantity());
                        row.setQuantity(item.getQuantity());
                        games.add(row);
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return games;
    }
}
