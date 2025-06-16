
<%@page import="com.gamezone.model.CustomerModel"%>
<%@page import="com.gamezone.util.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.gamezone.model.customer.UserModel, com.gamezone.model.customer.OrderModel, com.gamezone.model.customer.CartModel"%>
<%@ page import="com.gamezone.dao.customer.OrderDao, java.text.DecimalFormat, java.util.List, java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<% 
DecimalFormat dcf = new DecimalFormat("#.##");
request.setAttribute("dcf", dcf);
com.gamezone.model.CustomerModel auth = (com.gamezone.model.CustomerModel) session.getAttribute("loginedcus");


List<OrderModel> orders = new ArrayList<>();
try 
{
    OrderDao orderDao = new OrderDao(DBConnection.getConnection());
    orders = orderDao.userOrders(auth.getId());
} catch (Exception e) {
    e.printStackTrace();
}
request.setAttribute("orders", orders);
Double total = (Double) request.getAttribute("total");
if (total == null) total = 0.0;
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
        }
        .container {
            width: 90%;
            margin: 40px auto;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 40px;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: black;
            color: white;
        }
        h1, h2, h3 {
            margin: 10px 0;
            text-align: center;
        }
        a {
            text-decoration: none;
            color: black;
        }
        .checkout-link {
            display: inline-block;
            margin: 10px 0 20px;
            padding: 10px 15px;
            background-color: black;
            color: white;
            border-radius: 5px;
        }
        .empty-cart {
            text-align: center;
            color: #999;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Your Shopping Cart</h1>
        
       

        <table>
            <thead>
                <tr>
                    <th>Game ID</th>
                    <th>Game Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            
                <c:forEach var="game" items="${cartGames}">
                    <tr>
                        <td>${game.gameId}</td>
                        <td>${game.gameName}</td>
                        <td>$${dcf.format(game.price)}</td>
                        <td>
                            <a href="quantity-inc-dec?action=dec&id=${game.gameId}">-</a>
                            ${game.quantity}
                            <a href="quantity-inc-dec?action=inc&id=${game.gameId}">+</a>
                        </td>
                        <td>
                            <a href="remove-from-cart?id=${game.gameId}">Remove</a>
                        </td>
                    </tr>
                </c:forEach>
                
            </tbody>
        </table>

 		
    </div>
    
    <div class="container">
        <h1>Your Total Amount</h1><center>
        <h3>Total Price: $ <%= (total > 0) ? dcf.format(total) : "0.00" %></h3>
        <a href="payment.jsp" class="checkout-link">Proceed to Checkout</a>
        <a href="index.jsp" class="checkout-link">Go Bck to Available List</a><br><br>
        <a href="userDash.jsp" class="checkout-link">Go To DashBoard</a>
        </center>
    
    
    
    
            </div>
</body>
</html>>