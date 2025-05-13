package com.gamezone.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.gamezone.model.Feedbacks;
import com.gamezone.model.News;
import com.gamezone.model.User;

public class ModeratorDAO {
	
	
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

	public void storeNews(News news) {
		
		try (Connection con = dbConnection()) {
	        Statement stmt = con.createStatement();

	        String sql = "INSERT INTO news(title, content, date) VALUES (" +
	                "'" + news.getTitle() + "', " +
	                "'" + news.getContent() + "', " +
	                "'" + news.getDate() + "'" +
	                ")";
	        
	   stmt.executeUpdate(sql);
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
}

	public List<News> getStoredNews() {
		
		List<News> nl = new ArrayList<>();
		
		String query = "SELECT * FROM news";

	    try (Connection con = dbConnection()) {
	        Statement stmt = con.createStatement();
	        ResultSet rs = stmt.executeQuery(query);

	        while (rs.next()) {
	            int id = rs.getInt("id");
	            String title = rs.getString("title");
	            String content = rs.getString("content");
	            String date = rs.getString("date");

	            nl.add(new News(id, title, content, date));
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return nl;
		
		
	}

	public List<Feedbacks> getFeedbacks() {

		List<Feedbacks> flist = new ArrayList<>();
		
		String query = "SELECT * FROM feedbacks";

	    try (Connection con = dbConnection()) {
	        Statement stmt = con.createStatement();
	        ResultSet rs = stmt.executeQuery(query);

	        while (rs.next()) {
	            int feedbackId = rs.getInt("feedbackId");
	            String description = rs.getString("description");
	            String date = rs.getString("date");

	            flist.add(new Feedbacks(feedbackId, description, date));
	        }
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return flist;
		
	}
}
