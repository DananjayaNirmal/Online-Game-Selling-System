/*
 * package Models;
 * 
 * public class CardModel {
 * 
 * int id; int cart_id; String cardnumber; String cardholdername; String
 * expiryMMYY; String ccv;
 * 
 * 
 * 
 * 
 * 
 * public int getId() { return id; } public void setId(int id) { this.id = id; }
 * public int getCart_id() { return cart_id; } public void setCart_id(int
 * cart_id) { this.cart_id = cart_id; } public String getCardnumber() { return
 * cardnumber; } public void setCardnumber(String cardnumber) { this.cardnumber
 * = cardnumber; } public String getCardholdername() { return cardholdername; }
 * public void setCardholdername(String cardholdername) { this.cardholdername =
 * cardholdername; } public String getExpiryMMYY() { return expiryMMYY; } public
 * void setExpiryMMYY(String expiryMMYY) { this.expiryMMYY = expiryMMYY; }
 * public String getCcv() { return ccv; } public void setCcv(String ccv) {
 * this.ccv = ccv; }
 * 
 * 
 * 
 * 
 * 
 * }
 */



package com.gamezone.model.customer;

public class CardModel {
    int id;
    String cardnumber;
    String cardholdername;
    String expiryMMYY;
    String ccv;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCardnumber() {
		return cardnumber;
	}
	public void setCardnumber(String cardnumber) {
		this.cardnumber = cardnumber;
	}
	public String getCardholdername() {
		return cardholdername;
	}
	public void setCardholdername(String cardholdername) {
		this.cardholdername = cardholdername;
	}
	public String getExpiryMMYY() {
		return expiryMMYY;
	}
	public void setExpiryMMYY(String expiryMMYY) {
		this.expiryMMYY = expiryMMYY;
	}
	public String getCcv() {
		return ccv;
	}
	public void setCcv(String ccv) {
		this.ccv = ccv;
	}

    
}
