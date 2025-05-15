package com.gamezone.dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
//import java.util.ArrayList;
//import java.util.List;
import java.util.List;

import com.gamezone.model.News;
import com.gamezone.model.User;

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


	public List<User> getAllUsers() {
		
		List<User> userList = new ArrayList<>();
		Connection con = dbConnection();
		
		String query = "Select * From UserDetails";
		
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				
				int userID = rs.getInt("userID");
				String userName = rs.getString("userName");
				String email = rs.getString("email");
				String phoneNo = rs.getString("phoneNumber");
				String password = rs.getString("password");
				String roll = rs.getString("roll");
				int age = rs.getInt("age");
				String gender = rs.getString("gender");
				
				userList.add(new User(userID, userName, email, phoneNo, password, roll, age, gender));
			}
			
		}catch(Exception e){
			
			e.printStackTrace();
			
		}
		
		return userList;
		
	}


	public void insertUser(User usr) {
		
		try (Connection con = dbConnection()) {
	        String sql = "INSERT INTO userDetails(userName, email, age, gender, phoneNumber, password, roll) VALUES"
	        		+ " (?, ?, ?, ?, ?, ?, ?)";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setString(1, usr.getUserName());
	        ps.setString(2, usr.getEmail());
	        ps.setInt(3, usr.getAge());
	        ps.setString(4, usr.getGender());
	        ps.setString(5, usr.getPhoneNo());
	        ps.setString(6, usr.getPassword());
	        ps.setString(7, usr.getRoll());
	        ps.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
		
	}


	public User findUserById(int id) {
		
		//System.out.println("ZZZZZ"+id);
		
		Connection con = dbConnection();
		User currentUser = null;
		int userID = id;
		
		 try (
				
		         PreparedStatement ps = con.prepareStatement("SELECT * FROM userDetails WHERE id = ?")) {

		        ps.setInt(1, id);
		        ResultSet rs = ps.executeQuery();

		        if (rs.next()) {
		            String userName = rs.getString("userName");
		            String email = rs.getString("email");
		            int age = rs.getInt("age");
		            String gender = rs.getString("gender");
		            String phoneNo = rs.getString("phoneNumber");
		            String password = rs.getString("password");
		            String roll = rs.getString("roll");

		            currentUser = new User(userID, userName, email, phoneNo, password, roll, age, gender);
		        }

		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return currentUser;
		}	

}
