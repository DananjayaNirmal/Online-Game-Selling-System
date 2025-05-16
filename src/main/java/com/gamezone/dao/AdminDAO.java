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
				String phoneNo = rs.getString("phoneNo");
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
	        String sql = "INSERT INTO userDetails(userName, email, age, gender, phoneNo, password, roll) VALUES"
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

	
	
	
	
	
	
	
	//@@@@@@@@@@@@@@@@@@@@@@@
	
	/*public News selectNews(int id) {
	    //News nws = null;
	    
	    //try (Connection con = dbConnection();
	         PreparedStatement ps = con.prepareStatement("SELECT * FROM news WHERE id = ?")) {

	        ps.setInt(1, id);
	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {
	            String title = rs.getString("title");
	            String content = rs.getString("content");
	            String date = rs.getString("date");

	            nws = new News(id, title, content, date);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return nws;
	}
	*/
	
	//@@@@@@@@@@@@@@@@@@@@@@@

	public User findUserById(int id) {
		
		 System.out.println("IDIDIDIDIDID" + id);
    	  User usr = null;
    	  System.out.println("sagesage"+usr);
	    
	      try (Connection con = dbConnection();
	         PreparedStatement ps = con.prepareStatement("SELECT * FROM userdetails WHERE userID = ?")) {

	        ps.setInt(1, id);
	        ResultSet rs = ps.executeQuery();

	        if (rs.next()) {
	        	
	            String userName= rs.getString("userName");
	            String email = rs.getString("email");
	            String phoneNo = rs.getString("phoneNo");
	            String password = rs.getString("password");
	            String roll = rs.getString("roll");
	            int age = rs.getInt("age");
	            String gender = rs.getString("gender");
	            
	            usr = new User(id, userName, email, phoneNo, password, roll, age, gender);
	        }

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	      
	    System.out.println("CCCCCCCCCCCCCCCCCCOOOOOO" + usr);  
	    return usr;
	}


	public void updateUser(User uusr) {
		
		
		try {
			 	 Connection con = dbConnection();
				 String sql = "Update userdetails Set userName = ?, email = ?, age = ?, gender = ?, phoneNo = ?, password = ?, roll = ? Where userID = ?";
		         PreparedStatement ps = con.prepareStatement(sql);

		   
		           ps.setString(1, uusr.getUserName());
				   ps.setString(2, uusr.getEmail()); 
				   ps.setInt(3, uusr.getAge()); 
				   ps.setString(4, uusr.getGender());
				   ps.setString(5, uusr.getPhoneNo());
				   ps.setString(6, uusr.getPassword());
				   ps.setString(7, uusr.getRoll());
				   ps.setInt(8, uusr.getUserID());
				  
				  
				   ps.executeUpdate();

				   System.out.println("SageDAO: " + uusr.getUserName());
		    } catch (Exception e) {
		    	
		        e.printStackTrace();
		    }
		
	}


	public void deleteUser(int id) {
		
		try {
			Connection con = dbConnection();
			String query = "Delete From userdetails Where userID = ?";
			PreparedStatement ps = con.prepareStatement(query);
			
			ps.setInt(1, id);
			ps.executeUpdate();
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
	}
	
	
		
	}

