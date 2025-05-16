package com.gamezone.model;

public class Game {
	
	private int gameID;
	private String gameName;
	private String gameType;
	private double gamePrice;
	private String gameImagePath;
	private String description;
	private String status;
	
	
	
	@Override
	public String toString() {
		return "Game [gameID=" + gameID + ", gameName=" + gameName + ", gameType=" + gameType + ", gamePrice="
				+ gamePrice + ", gameImagePath=" + gameImagePath + ", description=" + description + ", status=" + status
				+ "]";
	}

	public Game(int gameID, String gameName, String gameType, double gamePrice, String gameImagePath,
			String description, String status) {
		super();
		this.gameID = gameID;
		this.gameName = gameName;
		this.gameType = gameType;
		this.gamePrice = gamePrice;
		this.gameImagePath = gameImagePath;
		this.description = description;
		this.status = status;
	}

	public Game(String gameName, String gameType, double gamePrice, String gameImagePath, String description,
			String status) {
		super();
		this.gameName = gameName;
		this.gameType = gameType;
		this.gamePrice = gamePrice;
		this.gameImagePath = gameImagePath;
		this.description = description;
		this.status = status;
	}

	public int getGameID() {
		return gameID;
	}

	public String getGameName() {
		return gameName;
	}

	public String getGameType() {
		return gameType;
	}

	public double getGamePrice() {
		return gamePrice;
	}

	public String getGameImagePath() {
		return gameImagePath;
	}

	public String getDescription() {
		return description;
	}

	public String getStatus() {
		return status;
	}

	public void setGameID(int gameID) {
		this.gameID = gameID;
	}

	public void setGameName(String gameName) {
		this.gameName = gameName;
	}

	public void setGameType(String gameType) {
		this.gameType = gameType;
	}

	public void setGamePrice(double gamePrice) {
		this.gamePrice = gamePrice;
	}

	public void setGameImagePath(String gameImagePath) {
		this.gameImagePath = gameImagePath;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
}
