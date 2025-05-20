/*
 * package Dao;
 * 
 * 
 * import java.sql.*;
 * 
 * import Models.UserModel;
 * 
 * public class UserDao { private Connection con;
 * 
 * public UserDao(Connection con) { this.con = con; }
 * 
 * public UserModel userLogin(String email, String password) { UserModel user =
 * null; try { String query =
 * "SELECT * FROM users WHERE email = ? AND password = ?"; PreparedStatement pst
 * = con.prepareStatement(query); pst.setString(1, email); pst.setString(2,
 * password); ResultSet rs = pst.executeQuery(); if (rs.next()) { user = new
 * UserModel(); user.setId(rs.getInt("id")); user.setName(rs.getString("name"));
 * user.setEmail(rs.getString("email")); } } catch (SQLException e) {
 * e.printStackTrace(); } return user; } }
 */