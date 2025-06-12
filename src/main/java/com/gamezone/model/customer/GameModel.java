package com.gamezone.model.customer;


public class GameModel {
    private int gameId;
    private String gameName;
    private String gameDescription;
    private String category;
    private Double price;
    private String image;

    public GameModel() {}

    public GameModel(int gameId, String gameName, String gameDescription, String category, Double price, String image) {
        this.gameId = gameId;
        this.gameName = gameName;
        this.gameDescription = gameDescription;
        this.category = category;
        this.price = price;
        this.image = image;
    }

    // Getters and Setters
    public int getGameId() { return gameId; }
    public void setGameId(int gameId) { this.gameId = gameId; }
    public String getGameName() { return gameName; }
    public void setGameName(String gameName) { this.gameName = gameName; }
    public String getGameDescription() { return gameDescription; }
    public void setGameDescription(String gameDescription) { this.gameDescription = gameDescription; }
    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }
    public Double getPrice() { return price; }
    public void setPrice(Double price) { this.price = price; }
    public String getImage() { return image; }
    public void setImage(String image) { this.image = image; }

    @Override
    public String toString() {
        return "GameModel [gameId=" + gameId + ", gameName=" + gameName + ", gameDescription=" + gameDescription +
               ", category=" + category + ", price=" + price + ", image=" + image + "]";
    }
}