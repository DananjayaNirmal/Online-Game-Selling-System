<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cus" value="${loginedcus}" />
    
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity=
    "sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">


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

 <c:set var="cus" value="${loginedcus}" />
 <div style="width: 60%; margin: auto; padding: 20px; border: 1px solid #ccc; border-radius: 8px; text-align: center; font-family: Arial, sans-serif;">

      <!-- <h1>Hi, welcome to Customer's Dashboard!!</h1>
         <h4>Share Profile</h4>
		<a href="https://example.com/profile" target="_blank ">Share Profile</a><br><br>  </center>  -->
        
		 <form action="updateServlet" method="post">
		<input type="hidden" name="originalEmail" value="${cus.email}">

    	<div class="section">
        <h3>Personal Information</h3>

        <label for="name">Name</label>
        <input type="text" id="userName" name="userName" value="${param.userName}">
        
        <label for="email">Email</label>
        <input type="text" id="email" name="email" value="${param.email}">

        <label for="dob">Date of Birth</label>
        <input type="text" id="dob" name="dob" value="${param.dob}">
        
        <label for="age">Age</label>
        <input type="hidden" id="age" name="age" value="${param.age}">

        <label for="gender">Gender</label>
			<select id="gender" name="gender" required>
    			<option value="">-- Select Gender --</option>
    			<option value="Male" ${param.gender == 'Male' ? 'selected' : ''}>Male</option>
    			<option value="Female" ${param.gender == 'Female' ? 'selected' : ''}>Female</option>
    			<option value="Other" ${param.gender == 'Other' ? 'selected' : ''}>Other</option>
		</select>

   
				
		<!--  	<a href="editProfile" class="btn btn-outline-primary">Edit Profile</a>-->

    <br><br>
    <input type="submit" value="Update" class="save-btn" />
	</form>
				
				
			
    </div>
    
   <%--  <div>
    
    		<h3>Change Your Password</h3>
			<form action="updatePWservlet" method="post">
			<input type="hidden" name="originalEmail" value="${cus.email}">

       

            <label for="currentPassword">Current Password</label>
            <input type="text" id="currentPassword" name="currentPassword" value="${param.currentPassword}">

            <label for="newPassword">New Password</label>
            <input type="password" id="newPassword" name="newPassword" value="${param.newPassword}">

            <label for="confirmNewPassword">Confirm New Password</label>
            <input type="password" id="confirmNewPassword" name="confirmNewPassword" value="${param.confirmNewPassword}">
            
            <div style="text-align: center;">
            <input type="submit" class="save-btn" value="Save Changes">
            </div>	
            </form>
            
            
        
     </div> --%>
   </div>   


<jsp:include page="/templates/footer.jsp" />


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


