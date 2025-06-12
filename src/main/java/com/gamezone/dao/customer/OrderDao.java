package com.gamezone.dao.customer;


import java.sql.*;

import java.util.ArrayList;
import java.util.List;

import com.gamezone.model.customer.OrderModel;

public class OrderDao {
    private Connection con;

    public OrderDao(Connection con) {
        this.con = con;
    }

public boolean insertOrder(com.gamezone.model.customer.OrderModel order) {
    	
        boolean result = false;
        
        try {
            String query = "INSERT INTO orders (p_id, u_id, o_quantity, o_date) VALUES (?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setInt(1, order.getGameId());
            pst.setInt(2, order.getUserId());
            pst.setInt(3, order.getQuantity());
            pst.setString(4, order.getOrderDate());
            
            pst.executeUpdate();
            result = true;
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

   
public List<OrderModel> userOrders(int userId) {
        List<OrderModel> orders = new ArrayList<>();
        try {
        	
            String query = "SELECT o.id AS orderId, o.p_id AS gameId, o.u_id AS userId, o.o_quantity AS quantity, " +
                          "o.o_date AS orderDate, g.name AS gameName, g.price AS price " +
                          "FROM orders o JOIN games g ON o.p_id = g.id WHERE o.u_id = ?";
            
            
            PreparedStatement pst = con.prepareStatement(query);
            pst.setInt(1, userId);
            
            ResultSet rs = pst.executeQuery();
            
            while (rs.next()) 
            {
                OrderModel order = new OrderModel();
                order.setOrderId(rs.getInt("orderId"));
                order.setGameId(rs.getInt("gameId"));
                order.setUserId(rs.getInt("userId"));
                order.setQuantity(rs.getInt("quantity"));
                order.setOrderDate(rs.getString("orderDate"));
                order.setGameName(rs.getString("gameName"));
                order.setPrice(rs.getDouble("price"));
                orders.add(order);
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }

    public void cancelOrder(int orderId) {
        try {
            String query = "DELETE FROM orders WHERE id = ?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setInt(1, orderId);
            pst.executeUpdate();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}