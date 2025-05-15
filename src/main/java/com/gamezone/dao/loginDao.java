package com.gamezone.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.gamezone.model.userModel;
import com.gamezone.util.DBConnection;

public class loginDao {

    public userModel validateUser(String userName, String password) {
        String query = "SELECT * FROM users WHERE userName = ?";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {

            ps.setString(1, userName);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                String dbPassword = rs.getString("password");

                // Optional: hash input password before comparing (if registration hashes it)
                // String hashedInput = HashUtil.hashPassword(password);
                if (password.equals(dbPassword)) {
                    return new userModel(
                        rs.getInt("userID"),
                        rs.getString("userName"),
                        rs.getString("email"),
                        rs.getString("dob"),
                        rs.getInt("age"),
                        rs.getString("gender"),
                        rs.getString("password"),
                        rs.getString("role")
                    );
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
