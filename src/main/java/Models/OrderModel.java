/*
 * package Models;
 * 
 * 
 * public class OrderModel extends GameModel { private int orderId; private int
 * userId; private int quantity; private String orderDate;
 * 
 * public OrderModel() {}
 * 
 * public OrderModel(int orderId, int userId, int quantity, String orderDate) {
 * this.orderId = orderId; this.userId = userId; this.quantity = quantity;
 * this.orderDate = orderDate; }
 * 
 * public OrderModel(int userId, int quantity, String orderDate) { this.userId =
 * userId; this.quantity = quantity; this.orderDate = orderDate; }
 * 
 * // Getters and Setters public int getOrderId() { return orderId; } public
 * void setOrderId(int orderId) { this.orderId = orderId; } public int
 * getUserId() { return userId; } public void setUserId(int userId) {
 * this.userId = userId; } public int getQuantity() { return quantity; } public
 * void setQuantity(int quantity) { this.quantity = quantity; } public String
 * getOrderDate() { return orderDate; } public void setOrderDate(String
 * orderDate) { this.orderDate = orderDate; } }
 */




package Models;

public class OrderModel {
    private int orderId;
    private int gameId;
    private int userId;
    private int quantity;
    private String orderDate;
    private String gameName;
    private double price;

    public int getOrderId() { return orderId; }
    public void setOrderId(int orderId) { this.orderId = orderId; }
    public int getGameId() { return gameId; }
    public void setGameId(int gameId) { this.gameId = gameId; }
    public int getUserId() { return userId; }
    public void setUserId(int userId) { this.userId = userId; }
    public int getQuantity() { return quantity; }
    public void setQuantity(int quantity) { this.quantity = quantity; }
    public String getOrderDate() { return orderDate; }
    public void setOrderDate(String orderDate) { this.orderDate = orderDate; }
    public String getGameName() { return gameName; }
    public void setGameName(String gameName) { this.gameName = gameName; }
    public double getPrice() { return price; }
    public void setPrice(double price) { this.price = price; }
}