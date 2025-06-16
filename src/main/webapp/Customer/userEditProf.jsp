<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

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
  border-radius: 10px;
  width:80%;
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
        
		 <form action="EditProfCustomerServlet" method="post">
<div style = "width:80%;">
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
</div>  
</body>
</html>




