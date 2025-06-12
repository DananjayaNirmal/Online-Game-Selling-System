<%-- <%@ page import="java.text.DecimalFormat" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Add Card Details</title>
  <style>
    body {
      font-family: sans-serif;
      background: #fff;
      padding: 20px;
      color: #000;
    }
    .card-form {
      max-width: 400px;
      margin: auto;
    }
    input {
      width: 100%;
      padding: 10px;
      margin: 8px 0;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    button {
      width: 105%;
      background: Black;
      color: #fff;
      padding: 10px;
      margin: 10px 0;
      border: none;
      font-size: 16px;
    }
    .checkout-link {
      text-decoration: none;
      color: #fff;
      background-color: #007BFF;
      padding: 10px;
      border-radius: 5px;
    }
  </style>
</head>
<body>

<div class="card-form">
  <h2>Add Card Details</h2>

  <%
    Integer cart_id = (Integer) session.getAttribute("currentCartId");
  %>

  <form id="cardForm" action="AddCardDetails" method="post">
    <input type="text" name="cardNumber" placeholder="Card Number" required>
    <input type="text" name="cardHolder" placeholder="Card Holder Name" required>
    <input type="text" name="expiry" placeholder="MM/YY" required>
    <input type="text" name="cvv" placeholder="CVV" required>
    <input type="hidden" name="cartId" value="<%= cart_id %>">
    <input type="submit" value="Pay">
  </form>
</div>

</body>
</html>
 --%>
 
 
 
 
 
 
 
 
 <%@ page import="java.text.DecimalFormat" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Add Card Details</title>
  <style>
    body {
      font-family: sans-serif;
      background: #fff;
      padding: 20px;
      color: #000;
    }
    .card-form {
      max-width: 400px;
      margin: auto;
    }
    input {
      width: 100%;
      padding: 10px;
      margin: 8px 0;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    button {
      width: 100%; /* Fixed width to 100% */
      background: black;
      color: #fff;
      padding: 10px;
      margin: 10px 0;
      border: none;
      font-size: 16px;
      cursor: pointer;
    }
    .checkout-link {
      text-decoration: none;
      color: #fff;
      background-color: #007BFF;
      padding: 10px;
      border-radius: 5px;
    }
  </style>
</head>
<body>

<div class="card-form">
  <h2>Add Card Details</h2>

  

  <form id="cardForm" action="AddCardDetails" method="post">
    <input type="text" name="cardNumber" placeholder="Card Number" required>
    <input type="text" name="cardHolder" placeholder="Card Holder Name" required>
    <input type="text" name="expiry" placeholder="MM/YY" required>
    <input type="text" name="cvv" placeholder="CVV" required>
    
    <button type="submit">Pay</button>
  </form>
</div>

</body>
</html>