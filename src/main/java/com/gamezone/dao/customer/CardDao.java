package com.gamezone.dao.customer;

import java.sql.SQLException;

import java.sql.Statement;

import com.gamezone.util.DBConnection;


import com.gamezone.model.customer.CardModel;

public class CardDao {
	
	public void addCard(CardModel card) {
		
		try {
			
			
			String query = "INSERT INTO cardpayment_details(card_number,card_holder_name,expiry,ccv) VALUES('" + card.getCardnumber() + "','" + card.getCardholdername() + "','" + card.getExpiryMMYY()+"','"+card.getCcv()+"')";
			
			Statement statement = DBConnection.getConnection().createStatement();
			// statement = DBconnection.getConnection().createStatement(); 
			statement.executeUpdate(query);   
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
				

}
	
}
