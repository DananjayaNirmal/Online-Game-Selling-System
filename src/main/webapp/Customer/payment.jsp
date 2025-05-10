<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    
  </style>
</head>
<body>
  <div class="card-form">
    <h2>Add Card Details</h2>
    <form id="cardForm">
      <input type="text" name="cardNumber" placeholder="Card number" required>
      <input type="text" name="cardHolder" placeholder="Cardholder name" required>
      <input type="text" name="expiry" placeholder="MM/YY" required>
      <input type="text" name="cvv" placeholder="CVV" required>
      

      <p style="font-size: 12px; color: gray;">Your order will be processed in USD</p>
      <button type="submit">Save & Confirm</button>
    </form>
  </div>

  <script>
    document.getElementById('cardForm').addEventListener('submit', function(e) {
      e.preventDefault();

      const formData = new FormData(this);

      fetch('AddCardServlet', {
        method: 'POST',
        body: formData
      }).then(res => {
        if (res.ok) {
          alert("Card saved successfully!");
        } else {
          alert("Error saving card.");
        }
      });
    });
  </script>
</body>
</html>
