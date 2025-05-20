/*
 * package Dao;
 * 
 * 
 * import java.sql.Connection; import java.sql.PreparedStatement; import
 * java.sql.SQLException; import java.util.List;
 * 
 * import Models.CartModel;
 * 
 * public class CartDao { private Connection con;
 * 
 * public CartDao(Connection con) { this.con = con;
 * 
 * 
 * }
 * 
 * public boolean insertCartItem(CartModel cart) { boolean result = false; try {
 * 
 * 
 * String query =
 * "INSERT INTO gamecart (game_id, game_name, game_price, game_image, quantity) VALUES (?, ?, ?, ?, ?)"
 * ;
 * 
 * PreparedStatement pst = con.prepareStatement(query);
 * 
 * pst.setInt(1, cart.getGameId()); pst.setString(2, cart.getGameName());
 * pst.setDouble(3, cart.getPrice()); pst.setString(4, cart.getImage());
 * pst.setInt(5, cart.getQuantity());
 * 
 * pst.executeUpdate();
 * 
 * 
 * result = true; } catch (SQLException e) { e.printStackTrace(); }
 * 
 * return result; }
 * 
 * public Object saveCart(int userId, List<CartModel> cartItems) { // TODO
 * Auto-generated method stub return null; } }
 * 
 * 
 * 
 * package Dao;
 * 
 * import java.sql.Connection; import java.sql.PreparedStatement; import
 * java.sql.ResultSet; import java.sql.SQLException; import java.util.ArrayList;
 * import java.util.List; import Models.CartModel;
 * 
 * public class CartDao { private Connection con;
 * 
 * public CartDao(Connection con) { this.con = con; }
 * 
 * // Add a cart item to the database public boolean insertCartItem(CartModel
 * cart, int userId) { boolean result = false; try { String query =
 * "INSERT INTO gamecart (user_id, game_id, game_name, game_price, game_image, quantity) VALUES (?, ?, ?, ?, ?, ?)"
 * ; PreparedStatement pst = con.prepareStatement(query); pst.setInt(1, userId);
 * pst.setInt(2, cart.getGameId()); pst.setString(3, cart.getGameName());
 * pst.setDouble(4, cart.getPrice()); pst.setString(5, cart.getImage());
 * pst.setInt(6, cart.getQuantity()); pst.executeUpdate(); result = true; }
 * catch (SQLException e) { e.printStackTrace(); } return result; }
 * 
 * // Get all cart items for a user public List<CartModel> getCartItems(int
 * userId) { List<CartModel> cartItems = new ArrayList<>(); try { String query =
 * "SELECT * FROM gamecart WHERE user_id = ?"; PreparedStatement pst =
 * con.prepareStatement(query); pst.setInt(1, userId); ResultSet rs =
 * pst.executeQuery(); while (rs.next()) { CartModel cart = new CartModel();
 * cart.setGameId(rs.getInt("game_id"));
 * cart.setGameName(rs.getString("game_name"));
 * cart.setPrice(rs.getDouble("game_price"));
 * cart.setImage(rs.getString("game_image"));
 * cart.setQuantity(rs.getInt("quantity")); cartItems.add(cart); } } catch
 * (SQLException e) { e.printStackTrace(); } return cartItems; }
 * 
 * // Remove a cart item by game_id and user_id public boolean
 * removeCartItem(int gameId, int userId) { boolean result = false; try { String
 * query = "DELETE FROM gamecart WHERE game_id = ? AND user_id = ?";
 * PreparedStatement pst = con.prepareStatement(query); pst.setInt(1, gameId);
 * pst.setInt(2, userId); pst.executeUpdate(); result = true; } catch
 * (SQLException e) { e.printStackTrace(); } return result; }
 * 
 * // Update quantity of a cart item public boolean updateCartItemQuantity(int
 * gameId, int userId, int quantity) { boolean result = false; try { String
 * query = "UPDATE gamecart SET quantity = ? WHERE game_id = ? AND user_id = ?";
 * PreparedStatement pst = con.prepareStatement(query); pst.setInt(1, quantity);
 * pst.setInt(2, gameId); pst.setInt(3, userId); pst.executeUpdate(); result =
 * true; } catch (SQLException e) { e.printStackTrace(); } return result; }
 * 
 * // Clear cart for a user (e.g., after checkout) public boolean clearCart(int
 * userId) { boolean result = false; try { String query =
 * "DELETE FROM gamecart WHERE user_id = ?"; PreparedStatement pst =
 * con.prepareStatement(query); pst.setInt(1, userId); pst.executeUpdate();
 * result = true; } catch (SQLException e) { e.printStackTrace(); } return
 * result; }
 * 
 * // Calculate total cart price public double getTotalCartPrice(int userId) {
 * double total = 0; try { String query =
 * "SELECT SUM(game_price * quantity) AS total FROM gamecart WHERE user_id = ?";
 * PreparedStatement pst = con.prepareStatement(query); pst.setInt(1, userId);
 * ResultSet rs = pst.executeQuery(); if (rs.next()) { total =
 * rs.getDouble("total"); } } catch (SQLException e) { e.printStackTrace(); }
 * return total; } }
 */
 package Dao;
 
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Models.CartModel;

public class CartDao {
    private Connection con;

    public CartDao(Connection con) {
        this.con = con;
    }

public boolean insertCartItem(CartModel cart, int userId) {
        try {
            String query = "INSERT INTO cart (user_id, game_id, game_name, game_price, game_image, quantity) VALUES (?, ?, ?, ?, ?, ?)";
            
            PreparedStatement pst = con.prepareStatement(query);
            
            pst.setInt(1, userId);
            pst.setInt(2, cart.getGameId());
            pst.setString(3, cart.getGameName());
            pst.setDouble(4, cart.getPrice());
            pst.setString(5, cart.getImage());
            pst.setInt(6, cart.getQuantity());
            
            pst.executeUpdate();
            return true;
            
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
}



public List<CartModel> getCartItems(int userId) 
{
        List<CartModel> cartItems = new ArrayList<>();
        
        try {
            String query = "SELECT * FROM cart WHERE user_id = ?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setInt(1, userId);
            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) 
            {
                CartModel cart = new CartModel();
                cart.setGameId(rs.getInt("game_id"));
                cart.setGameName(rs.getString("game_name"));
                cart.setPrice(rs.getDouble("game_price"));
                cart.setImage(rs.getString("game_image"));
                cart.setQuantity(rs.getInt("quantity"));
                cartItems.add(cart);
            }     
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return cartItems;
}



public boolean removeCartItem(int gameId, int userId) {
    	
        try {
            String query = "DELETE FROM cart WHERE game_id = ? AND user_id = ?";
            
            PreparedStatement pst = con.prepareStatement(query);
            pst.setInt(1, gameId);
            pst.setInt(2, userId);
            pst.executeUpdate();
            return true;
            
        } catch (SQLException e) {
            e.printStackTrace();
            
            return false;
        }
}


public boolean updateCartItemQuantity(int gameId, int userId, int quantity) {
        try {
            String query = "UPDATE cart SET quantity = ? WHERE game_id = ? AND user_id = ?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setInt(1, quantity);
            pst.setInt(2, gameId);
            pst.setInt(3, userId);
            pst.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
}


public boolean clearCart(int userId) {
        try {
            String query = "DELETE FROM cart WHERE user_id = ?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setInt(1, userId);
            pst.executeUpdate();
            return true;
            
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }






public double getTotalCartPrice(int userId) {
        double total = 0;
        try {
            String query = "SELECT SUM(game_price * quantity) AS total FROM cart WHERE user_id = ?";
            
            
            PreparedStatement pst = con.prepareStatement(query);
            pst.setInt(1, userId);
            ResultSet rs = pst.executeQuery();
            
            if (rs.next()) {
                total = rs.getDouble("total");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return total;
    }
}