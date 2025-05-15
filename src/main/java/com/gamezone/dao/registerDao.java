package com.gamezone.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.gamezone.model.userModel;
import com.gamezone.util.DBConnection;



public class registerDao {

    public boolean registerUser(userModel user) {
        boolean result = false;

        try {
            Connection conn = DBConnection.getConnection(); 

            String sql = "INSERT INTO users (username, email, dob, age, gender, password, role) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getUserName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getDob());
            ps.setInt(4, user.getAge());
            ps.setString(5, user.getGender());
            ps.setString(6, user.getPassword());
            ps.setString(7, user.getRole());

            int rows = ps.executeUpdate();
            result = rows > 0;

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }
}
