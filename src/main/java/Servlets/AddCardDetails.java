package Servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.CardDao;
import Models.CardModel;


@WebServlet("/AddCardDetails")
public class AddCardDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
    	 
	 
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		CardModel card = new CardModel();

		card.setCardnumber(request.getParameter("cardNumber"));
		card.setCardholdername(request.getParameter("cardHolder"));
		card.setExpiryMMYY(request.getParameter("expiry"));
		card.setCcv(request.getParameter("cvv"));
		
		CardDao service =  new CardDao();
		
		service.addCard(card);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("userDash.jsp");
		
		dispatcher.forward(request, response);
	}

}
