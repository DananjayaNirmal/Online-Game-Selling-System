<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<body style = "background: linear-gradient(135deg, #121212, #1f1f1f, #1a1a1a);  background-color: #FDFDFD;
 background-image: none;  ">

    <nav class = "navbar navbar-expand navbar-dark bg-dark">
        
        <div class = "container">

            <a href = "#" class="navbar-brand">WELCOME BACK TO DASHBOARD</a>

            <ul class="navbar-nav">
                
                <li class="nav-item">
                    <a href = "#" class="nav-link">Home</a>
                </li>

                <li class="nav-item">
                    <a href = "#" class="nav-link">Store</a>
                </li>


                <li class="nav-item">
                    <a href = "#" class="nav-link">News</a>
                </li>

                <!--li class="nav-item">
                    <a href = "#" class="nav-link">About</a>
                </li-->

                <!----------------------------------------------->

                
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle d-flex align-items-center" href="#" id="moreDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        More
                    </a>
                    <ul class="dropdown-menu">
                    	<li><a class="dropdown-item" href="#">About Us</a></li>
                        <li><a class="dropdown-item" href="#">Contact Us</a></li>
                        <li><a class="dropdown-item" href="#">Feedbacks</a></li>
                        
                    </ul>
                </li>

                <!----------------------------------------------->
                

            </ul>


            <div class="navbar-text">

                <!--  <button type="button" class="btn btn-dark btn-sm">K.S.Diyana</button>   -->
                
                <text style="color: #FFFFFF; font-weight: bold;">K.S.Diyana</text>
                <a href="home.jsp" type="button" class="btn btn-primary btn-sm ms-2">Log Out</a> 

            </div>

        </div> 
        
        </nav>   

    
</body>

</nav>

<meta charset="UTF-8">
<title>Customer Dashboard</title>

<style>

body {
  margin: 0;
  font-family: Arial, sans-serif;
  background: #f5f7fa;
  text-align: center;
}

h2 {
  margin-top: 20px;
}

.dashboard {
  display: flex;
  min-height: 70vh;
  text-align: left;
}

.sidebar {
  width: 230px;
  background: #e6ebf0;
  padding: 10px;
  height: 380px;
}

.sidebar h2 {
  font-size: 18px;
  margin-bottom: 20px;
}

.sidebar a {
  display: block;
  padding: 10px;
  margin-bottom: 5px;
  text-decoration: none;
  color: #333;
  border-radius: 4px;
}

.sidebar a.active, .sidebar a:hover {
  background: #d0d9e4;
  font-weight: bold;
}

.main {
  flex: 1;
  padding: 10px;
}

.user-header {
  background: white;
  padding: 20px;
  border-radius: 8px;
  margin-bottom: 10px;
}

.user-info h3 {
  margin: 0 0 5px;
}

.user-info p {
  margin: 2px 0;
  color: #555;
}

.tab-menu {
  display: flex;
  gap: 5px;
  flex-wrap: wrap;
  margin: 5px 0;
}

.tab-menu button {
  background: none;
  border: none;
  padding: 8px;
  cursor: pointer;
  border-bottom: 2px solid transparent;
  color: #333;
}

.tab-menu button.active {
  border-bottom: 2px solid #007bff;
  color: #007bff;
  font-weight: bold;
}

.summary {
  display: flex;
  gap: 20px;
  flex-wrap: wrap;
}

.summary-box {
  flex: 1 1 240px;
  background: white;
  padding: 5px;
  border-radius: 8px;
  box-shadow: 0 0 4px rgba(0, 0, 0, 0.05);
}

.summary-box h4 {
  margin: 0 0 10px;
  font-size: 14px;
  color: #666;
}

.summary-box p {
  margin: 0;
  font-size: 18px;
  font-weight: bold;
}

/* Form styling */
form {
  display: inline-block;
  text-align: left;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 10px;
  background: white;
  margin-top: 20px;
}

.section {
  margin-bottom: 15px;
}

.cart-section {
  width: 100%;
  background: #e6ebf0;
  padding: 10px;
  height: auto;
  overflow-x: auto;
  overflow-y: hidden;
  white-space: nowrap;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  border-radius: 8px;
  border: 1px solid #ccc;
}

.cart-items {
  display: flex;
  flex-direction: row;
  gap: 10px;
}

.cart-items .card {
  min-width: 120px;
  flex-shrink: 0;
}

.cart-items .card-img-top {
  width: 400px;       /* Optional: fix width */
  height: auto;
}

label {
  display: block;
  margin-top: 10px;
}

input, select {
  width: 100%;
  padding: 6px;
  margin-top: 5px;
}

.save-btn {
  margin-top: 15px;
  padding: 10px 20px;
  font-size: 16px;
  background-color: #0056b3;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

.save-btn:hover {
  background-color: #004a99;
}

@media (max-width: 768px) {
  .dashboard {
    flex-direction: column;
  }

  .sidebar {
    width: 100%;
    border-bottom: 1px solid #ccc;
  }
}

    </style>
    
    

</head>
<body>


 <div class="dashboard">
    <!-- Sidebar -->
    <div class="sidebar">
      
      <a href="#" class="active">Dashboard</a>
      <a href="#">Notification</a>
      <a href="#">Projects</a>
      <a href="#">Engagement</a>
      <a href="#">warning</a>
      <a href="#">Ratings</a>
    </div>

    <!-- Main -->
    <div class="main">
      <div class="user-header">
        <div class="user-details">
          <div class="user-icon">👤</div>
          <div class="user-info">
            <h3>Diyana Jayarathne</h3>
            <p>Customer</p>
            <p>Phone: 0172548884</p>
          </div>
        </div>
        <a href="userEditProf.jsp" class="btn btn-outline-primary">Edit Profile</a>
      </div>

      <div class="tab-menu">
        <button class="active">Your activity</button>
        <button type="button" onclick="window.location.href='userEditProf.jsp';">Transactions</button>
        <button type="button" onclick="window.location.href='userEditProf.jsp';">Statement</button>
        
    
      </div>

      <div class="summary">
        <div class="summary-box">
          <h4>Total Games</h4>
          <p>$2500.00</p>
        </div>
        <div class="summary-box">
          <h4>Performance</h4>
          <p>100%</p>
        </div>
        
      </div>
    </div>
  </div>
 		
<div>
  
  

 <div class="cart-section" style="padding: 30px; font-family: Arial, sans-serif;">
  <center>
    <h3 style="font-weight: bold; margin-bottom: 20px; letter-spacing: 1px; color: black;">CART</h3>
  </center>

  <table cellpadding="15" cellspacing="0" style="width: 80%; margin: auto; background-color: white; border-collapse: collapse; text-align: center; color: black;">
    <thead style="background-color: black; color: white;">
      <tr>
        <th>Game Name</th>
        <th>Price</th>
        <th colspan="2">Action</th>
      </tr>
    </thead>
    <tbody style="background-color: #f0f0f0;">
      <tr style="border-bottom: 1px solid #ccc;">
        <td>The Witcher 3</td>
        <td>$29.99</td>
        <td>
          <a href="payment.jsp?item=1" style="background-color: gray; color: white; padding: 8px 15px; text-decoration: none; border-radius: 2px;">Checkout</a>
        </td>
        <td>
          <a href="deleteItem.jsp?id=1" style="background-color: gray; color: white; padding: 8px 15px; text-decoration: none; border-radius: 2px;">Delete</a>
        </td>
      </tr>
      <tr style="border-bottom: 1px solid #ccc;">
        <td>The Wolf Among Us</td>
        <td>$19.99</td>
        <td>
          <a href="payment.jsp?item=2" style="background-color: gray; color: white; padding: 8px 15px; text-decoration: none; border-radius: 2px;">Checkout</a>
        </td>
        <td>
          <a href="deleteItem.jsp?id=2" style="background-color: gray; color: white; padding: 8px 15px; text-decoration: none; border-radius: 2px;">Delete</a>
        </td>
      </tr>
      
      <tr style="border-bottom: 1px solid #ccc;">
        <td>The Witcher 3</td>
        <td>$29.99</td>
        <td>
          <a href="payment.jsp?item=1" style="background-color: gray; color: white; padding: 8px 15px; text-decoration: none; border-radius: 2px;">Checkout</a>
        </td>
        <td>
          <a href="deleteItem.jsp?id=1" style="background-color: gray; color: white; padding: 8px 15px; text-decoration: none; border-radius: 2px;">Delete</a>
        </td>
      </tr>
      
      <tr style="border-bottom: 1px solid #ccc;">
        <td>The Wolf Among Us</td>
        <td>$19.99</td>
        <td>
          <a href="payment.jsp?item=2" style="background-color: gray; color: white; padding: 8px 15px; text-decoration: none; border-radius: 2px;">Checkout</a>
        </td>
        <td>
          <a href="deleteItem.jsp?id=2" style="background-color: gray; color: white; padding: 8px 15px; text-decoration: none; border-radius: 2px;">Delete</a>
        </td>
      </tr>
      
      
      <tr style="border-bottom: 1px solid #ccc;">
        <td>The Witcher 3</td>
        <td>$29.99</td>
        <td>
          <a href="payment.jsp?item=1" style="background-color: gray; color: white; padding: 8px 15px; text-decoration: none; border-radius: 2px;">Checkout</a>
        </td>
        <td>
          <a href="deleteItem.jsp?id=1" style="background-color: gray; color: white; padding: 8px 15px; text-decoration: none; border-radius: 2px;">Delete</a>
        </td>
      </tr>
      
      <tr style="border-bottom: 1px solid #ccc;">
        <td>The Wolf Among Us</td>
        <td>$19.99</td>
        <td>
          <a href="payment.jsp?item=2" style="background-color: gray; color: white; padding: 8px 15px; text-decoration: none; border-radius: 2px;">Checkout</a>
        </td>
        <td>
          <a href="deleteItem.jsp?id=2" style="background-color: gray; color: white; padding: 8px 15px; text-decoration: none; border-radius: 2px;">Delete</a>
        </td>
      </tr>
      
      <!-- Add more rows as needed -->
    </tbody>
  </table>
</div>



<br><br>

<jsp:include page="/templates/footer.jsp" />

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>


</body>


</html>




