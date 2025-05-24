/*package com.gamezone.dao;

import com.gamezone.model.userModel;
import com.gamezone.util.DBConnection;

import java.sql.*;

public class profileDao {
    public void updateUser(userModel user) {
        try {
            String sql = "UPDATE users SET userName=?, dob=?, age=?, gender=? WHERE email=?";
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getUserName());
            ps.setString(2, user.getDob());
            ps.setInt(3, user.getAge());
            ps.setString(4, user.getGender());
            ps.setString(5, user.getEmail());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}*/

/*package com.gamezone.dao;

import com.gamezone.model.userModel;
import com.gamezone.util.DBConnection;

import java.sql.*;

public class profileDao {
    public boolean updateUser(userModel user) {
        boolean isUpdated = false;
        String sql = "UPDATE users SET userName = ?, dob = ?, age = ?, gender = ? WHERE email = ?";
        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setString(1, user.getUserName());
            ps.setString(2, user.getDob());
            ps.setInt(3, user.getAge());
            ps.setString(4, user.getGender());
            ps.setString(5, user.getEmail());

            int rowsUpdated = ps.executeUpdate();
            if (rowsUpdated > 0) {
                isUpdated = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return isUpdated;
    }
}*/
package com.gamezone.dao;

import com.gamezone.model.userModel;
import com.gamezone.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class profileDao {
    public void updateUser(userModel user) {
        try {
            String sql = "UPDATE users SET userName=?, dob=?, age=?, gender=? WHERE email=?";
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getUserName());
            ps.setString(2, user.getDob());
            ps.setInt(3, user.getAge());
            ps.setString(4, user.getGender());
            ps.setString(5, user.getEmail());
            ps.executeUpdate();
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

