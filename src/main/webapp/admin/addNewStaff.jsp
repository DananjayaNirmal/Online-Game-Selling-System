<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add staff</title>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity=
    "sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

</head>
<body>

	<% String error = (String) request.getAttribute("error"); %>
	<% if (error != null) { %>
    <div style="color: red;"><%= error %></div>
	<% } %>
	

	<main class=" container ms-auto col-5 px-5 py-4" style = "background-color:#212429;">
	<p style = "margin-top:50px;"></p>
	
	<form action = "addNewUser">
	<h3 style = "color:white; margin-bottom:20px;">Add new Staff</h3>
	
	<div class = "form-group mb-2">
	
	<label class = "mb-2" style = "color:white;">Staff Name</label>
	<input type = "text" name = "uname" class = "form-control border-secondary" style = "background-color:#212429; color:white;" required>
	
	</div>
	
	
	<div class = "form-group mb-2">
	
	<label class = "mb-2" style = "color:white;">E-mail</label>
	<input type = "email" name = "uemail" class = "form-control border-secondary" style = "background-color:#212429; color:white;" required>
	
	</div>
	
	<hr style = "margin-bottom:40px; margin-top:40px; color:white;">
	
	<div class = "row">
	
	<div class = "form-group mb-2 col">
	<label class = "mb-2" style = "color:white;">Password</label>
	<input type = "text" name = "upass" class = "form-control border-secondary" style = "background-color:#212429; color:white;" required>
	
	</div>
	
	<div class = "form-group mb-4 col">
	
	<label class = "mb-2" style = "color:white;">Confirm password</label>
	<input type = "text" name = "uconpass" class = "form-control border-secondary" style = "background-color:#212429; color:white;" required>
	
	</div>
	
	</div>

	
	
	
		<hr style = "margin-bottom:40px; margin-top:40px;">
	
	<select class="form-select" aria-label="Default select example" name = "roll" style = "color:white; background-color:#212429; color:white;">
	 <option selected>Roll</option>
	 <option value="Admin">Admin</option>
	 <option value="Moderator">Moderator</option>
	</select>
	
	<hr style = "margin-bottom:40px; margin-top:40px;">
	
	<div class = "form-group mb-2">
	
	<label class = "mb-2" style = "color:white;">Age</label>
	<input type = "text" name = "uage" class = "form-control border-secondary" style = "background-color:#212429; color:white;" required>
	
	</div>
	
	<div class = "form-group mb-2">
	
	<label class = "mb-2" style = "color:white;">Gender</label>
	<input type = "text" name = "ugender" class = "form-control border-secondary" style = "background-color:#212429; color:white;" required>
	
	</div>
	
	
	<div class = "form-group mb-4">
	
	<label class = "mb-2" style = "color:white;">Phone number</label>
	<input type = "text" name = "phoneno" class = "form-control border-secondary" style = "background-color:#212429; color:white;" required>
	
	</div>
	


	<div class = "form-group mb-2">
	
	<input type = "submit" class = "btn btn-success" value = "Save Staff">
	
	</div>
	
	</form>
	 
	<p style = "margin-bottom: 100px;"></p>
	
	</main>
	

</body>
</html>