<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<body style = "background: linear-gradient(135deg, #121212, #1f1f1f, #1a1a1a);  background-color: #FDFDFD;
 background-image: none;  ">

    <nav class = "navbar navbar-expand navbar-dark bg-dark">
        
        <div class = "container">

            <a href = "#" class="navbar-brand">Edit Profile</a>

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
<title>Customer Edit Profile</title>

<style>

body
{
  font-family:sans-serif;
  text-align: center;
        
}

form
{
  font-size:14px;
  color: gray;
  font-family:sans-serif;
  display: inline-block;
  text-align: left;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 10px;
}

h2 
{
  text-align: center;
}

.section 
{
  margin-bottom: 20px;
}

label 
{
  display: block;
  margin-top: 10px;
}
        
input, select 
{
  width: 100%;
  padding: 5px;
  margin-top: 5px;
  color: gray;
}

.save-btn 
{
  margin-top: 20px;
  padding: 10px 20px;
  font-size: 16px;
  background-color:black;
  color: #FFFFFF;
}
    </style>


</head>
<body>




<!-- main container/full box-->

 
 <div style="width: 60%; margin: auto; padding: 20px; border: 1px solid #ccc; border-radius: 8px; text-align: center; font-family: Arial, sans-serif;">

      <!--    <h1>Hi, welcome to Customer's Dashboard!!</h1>
         <h4>Share Profile</h4>
		<a href="https://example.com/profile" target="_blank ">Share Profile</a><br><br>  </center>  -->
        
		 <form action="EditProfCustomerServlet" method="post">

    <div class="section">
        <h3>Personal Information</h3>

        <label for="name">Name</label>
        <input type="text" id="name" name="userName" required>
        
        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>

        <label for="dob">Date of Birth</label>
        <input type="date" id="dob" name="dob" required>
        
        <label for="age">Age</label>
        <input type="age" id="age" name="age" required>

        <label for="gender">Gender</label>
        <select id="gender" name="gender" required>
            <option value="">-- Select Gender --</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
        </select>

        <label for="address">Address</label>
        <input type="text" id="address" name="address" required>

        <label for="phoneNo">Phone Number</label>
        <input type="tel" id="phoneNo" name="phoneNo" required>
        
        <label for="Country">Country</label>
        <select id = "Country" name = "Country">
					<option value = "Select Donation Center">Select Country</option>
					<option value = "Colombo">Sri Lanka</option>
					<option value = "Galle">USA</option>
					<option value = "Gampaha">India</option>
					<option value = "Hambanthota">Korea</option>
					<option value = "Kaluthara">Japan</option>
					<option value = "Kandy">Bangaladesh</option>
					<option value = "Kurunagala">China</option>
					<option value = "Matara">Melta</option>
					<option value = "NuwaraEliya">Spain</option>
					<option value = "Puththalam">France</option>
				</select><br><br>
				
				<div style="text-align: center;">
            <input type="submit" class="save-btn" value="Save Changes">
            </div>	
    </div>
    
    
    <div>
			<form action="EditProfCustomerServlet" method="post"></form>
            <h3>Change Your Password</h3>

            <label for="currentPassword">Current Password</label>
            <input type="password" id="currentPassword" name="currentPassword" required>

            <label for="newPassword">New Password</label>
            <input type="password" id="newPassword" name="newPassword" required>

            <label for="confirmNewPassword">Confirm New Password</label>
            <input type="password" id="confirmNewPassword" name="confirmNewPassword" required>
            
            <div style="text-align: center;">
            <input type="submit" class="save-btn" value="Save Changes">
            </div>	
        
     </div>
   </div>  


<jsp:include page="/templates/footer.jsp" />

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>




