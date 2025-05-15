package com.gamezone.model;

public class gameModel {

    private int gameID;
    private String gamename;
    private String gametype;
    private double gameprice;
    private String gameimagepath;
    private String gamedescription;
    private String status;

    public gameModel(int gameID, String gamename, String gametype, double gameprice, String gameimagepath, String gamedescription, String status) {
        this.gameID = gameID;
        this.gamename = gamename;
        this.gametype = gametype;
        this.gameprice = gameprice;
        this.gameimagepath = gameimagepath;
        this.gamedescription = gamedescription;
        this.status = status;
    }

    // Getter and Setter methods for each field
    public int getgameID() {
        return gameID;
    }

    public void setgameID(int gameID) {
        this.gameID = gameID;
    }

    public String getGamename() {
        return gamename;
    }

    public void setGamename(String gamename) {
        this.gamename = gamename;
    }

    public String getGametype() {
        return gametype;
    }

    public void setGametype(String gametype) {
        this.gametype = gametype;
    }

    public double getGameprice() {
        return gameprice;
    }

    public void setGameprice(double gameprice) {
        this.gameprice = gameprice;
    }

    public String getGameimagepath() {
        return gameimagepath;
    }

    public void setGameimagepath(String gameimagepath) {
        this.gameimagepath = gameimagepath;
    }

    public String getGamedescription() {
        return gamedescription;
    }

    public void setGamedescription(String gamedescription) {
        this.gamedescription = gamedescription;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
