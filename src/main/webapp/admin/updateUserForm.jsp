<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update user</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity=
    "sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

</head>
<body>


	<main class=" container ms-auto col-5 px-5 py-4" style = "background-color:#212429;">
	<p style = "margin-top:50px;"></p>
	
	<form action = "updateUser" method = "post">
	<h3 style = "color:white; margin-bottom:20px;">Update User Details</h3>
	
	<div class = "form-group mb-2">
	
	<input type = "hidden" name = "uid" class = "form-control border-secondary bg-dark text-light" value="${cUser.userID}">
	
	</div>
	
	<div class = "form-group mb-2">
	
	<label class = "mb-2 text-light">User Name</label>
	<input type = "text" name = "uname" class = "form-control border-secondary bg-dark text-light" value="${cUser.userName}">
	
	</div>
	
	
	<div class = "form-group mb-2">
	
	<label class = "mb-2  text-light">E-mail</label>
	<input type = "email" name = "uemail" class = "form-control border-secondary bg-dark text-light" value="${cUser.email}">
	
	</div>
	
	<hr style = "margin-bottom:40px; margin-top:40px; color:white;">
	
	<div class = "row">
	
	<div class = "form-group mb-2 col">
	<label class = "mb-2  text-light">New Password</label>
	<input type = "text" name = "upass" class = "form-control border-secondary text-light bg-dark text-light" value="${cUser.password}">
	
	</div>
	
	<div class = "form-group mb-4 col">
	
	<label class = "mb-2  text-light">Enter Password Again</label>
	<input type = "text" name = "uconpass" class = "form-control border-secondary bg-dark text-light" value="${cUser.password}">
	
	</div>
	
	</div>
	
	<hr style = "margin-bottom:40px; margin-top:40px;">
	
	<h5 class = "text-light">Change roll</h5>
	<select class="form-select text-light bg-dark" aria-label="Default select example" name = "roll" class = "text-light">
	 <option selected value="${cUser.roll}"></option>
	 <option value="Admin">Admin</option>
	 <option value="Customer">Customer</option>
	 <option value="Moderator">Moderator</option>
	</select>
	
		
	<hr style = "margin-bottom:40px; margin-top:40px; color:white;">
	
	<div class = "form-group mb-2">
	
	<label class = "mb-2 text-light" >Age</label>
	<input type = "text" name = "uage" class = "form-control border-secondary bg-dark text-light" value="${cUser.age}">
	
	</div>
	
	<div class = "form-group mb-2">
	
	<label class = "mb-2 text-light">Gender</label>
	<input type = "text" name = "ugender" class = "form-control border-secondary bg-dark text-light" value="${cUser.gender}">
	
	</div>
	
	
	<div class = "form-group mb-4">
	
	<label class = "mb-2 text-light">Phone number</label>
	<input type = "text" name = "phoneno" class = "form-control border-secondary bg-dark text-light" value="${cUser.phoneNo}">
	
	</div>
	


	<div class = "form-group mb-2">
	
	<input type = "submit" class = "btn btn-primary" value = "Save Changes">
	
	</div>
	
	</form>
	 
	<p style = "margin-bottom: 100px;"></p>
	
	</main>
	

</body>
</html>