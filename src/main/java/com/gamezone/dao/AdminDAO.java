package com.gamezone.dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.List;

//import com.gamezone.util.DBConnection;
//import com.gamezone.model.Game;

public class AdminDAO {
	
	
	public Connection dbConnection() {
		Connection con = null;
		
		String url = "jdbc:mysql://localhost:3306/hms";
		String un = "root";
		String pw = "root";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			con = DriverManager.getConnection(url, un, pw);
			
			System.out.println("Database connection success");
			
			
		} catch (Exception e) {
			
			System.err.println("Database connection failed: " + e.getMessage());
	        e.printStackTrace();
			
		}
		
		return con;
		
	}
	

	public boolean checkAdmin(String un, String up) {
		
		/*String query = "SELECT * FROM doctor WHERE un = ? AND pw = ?";
			    
			    try (Connection con = dbConnection();
			         PreparedStatement ps = con.prepareStatement(query)) {
			        
			        ps.setString(1, un);
			        ps.setString(2, up);
			        try (ResultSet rs = ps.executeQuery()) {
			            return rs.next();
			        }
			        
			    } catch (Exception e) {
			        e.printStackTrace();
			    }
			    
			    return false;*/
		
		
		String query = "SELECT id FROM doctor WHERE un = ? AND pw = ?";

	    try (Connection con = dbConnection();
	         PreparedStatement ps = con.prepareStatement(query)) {

	        ps.setString(1, un);
	        ps.setString(2, up);

	        try (ResultSet rs = ps.executeQuery()) {
	            return rs.next();
	        }

	    } catch (SQLException e) {
	        System.err.println("Error checking admin login: " + e.getMessage());
	    }

	    return false;
	
	}

	
	
}
