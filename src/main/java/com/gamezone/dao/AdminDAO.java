package com.gamezone.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.gamezone.util.DBConnection;
import java.sql.SQLException;

import com.gamezone.model.Game;

public class AdminDAO {

	public List<Game> getSubmittedGames() {
		
			List<Game> gameList = new ArrayList<>();
			
			Connection con = DBConnection.getConnection();
			
			String query = "Select * From game_details";
			
			try {
				PreparedStatement ps = con.prepareStatement(query);
				ResultSet rs = ps.executeQuery();
				
				while(rs.next()) {
					
					int id = rs.getInt("id");
					String imagePath = rs.getString("image_path");
					String title = rs.getString("title");
					String status = rs.getString("status");
					
					gameList.add(new Game(id, imagePath, title, status));
				}
				
			}catch(Exception e){
				
				e.printStackTrace();
				
			}
			
			return gameList;
	}

}
