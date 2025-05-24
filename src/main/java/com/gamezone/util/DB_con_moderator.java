package com.gamezone.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB_con_moderator {
    
    private static String url = "jdbc:mysql://localhost:3306/hms";
    private static String user = "root";
    private static String pass = "root";
    private static Connection con;

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
            System.out.println("Database Not Connected!");
        }
        return con;
    }
}
