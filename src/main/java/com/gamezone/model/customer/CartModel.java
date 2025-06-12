package com.gamezone.model.customer;


public class CartModel extends GameModel {
    private int quantity;

    public CartModel() {}

    public int getQuantity() { return quantity; }
    public void setQuantity(int quantity) { this.quantity = quantity; }
}