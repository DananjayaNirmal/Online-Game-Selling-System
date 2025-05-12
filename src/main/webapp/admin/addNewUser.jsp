<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity=
    "sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

</head>
<body>


	<main class=" container ms-auto col-6">
	<p style = "margin-top:50px;"></p>
	
	<form action = "addNewUser">
	<h3 style = "color:Black; margin-bottom:20px;">Add new User</h3>
	
	<div class = "form-group mb-2">
	
	<label class = "mb-2">User Name</label>
	<input type = "text" name = "uname" class = "form-control border-secondary" placeholder = " ">
	
	</div>
	
	
	<div class = "form-group mb-2">
	
	<label class = "mb-2">E-mail</label>
	<input type = "email" name = "uemail" class = "form-control border-secondary" placeholder = " ">
	
	</div>
	
	<hr style = "margin-bottom:40px; margin-top:40px;">
	
	<div class = "row">
	
	<div class = "form-group mb-2 col">
	<label class = "mb-2">Password</label>
	<input type = "text" name = "upass" class = "form-control border-secondary" placeholder = " ">
	
	</div>
	
	<div class = "form-group mb-4 col">
	
	<label class = "mb-2">Confirm password</label>
	<input type = "text" name = "uconpass" class = "form-control border-secondary" placeholder = " ">
	
	</div>
	
	</div>
	
		<hr style = "margin-bottom:40px; margin-top:40px;">
	
	<div class = "form-group mb-2">
	
	<label class = "mb-2">Roll</label>
	<input type = "text" name = "roll" class = "form-control border-secondary" placeholder = " ">
	
	</div>
	
	<hr style = "margin-bottom:40px; margin-top:40px;">
	
	<div class = "form-group mb-2">
	
	<label class = "mb-2">Age</label>
	<input type = "text" name = "uage" class = "form-control border-secondary" placeholder = " ">
	
	</div>
	
	<div class = "form-group mb-2">
	
	<label class = "mb-2">Gender</label>
	<input type = "text" name = "ugender" class = "form-control border-secondary" placeholder = " ">
	
	</div>
	
	
	<div class = "form-group mb-4">
	
	<label class = "mb-2">Phone number</label>
	<input type = "text" name = "phoneno" class = "form-control border-secondary" placeholder = " ">
	
	</div>
	


	<div class = "form-group mb-2">
	
	<input type = "submit" class = "btn btn-success" value = "Save User">
	
	</div>
	
	</form>
	 
	<p style = "margin-bottom: 100px;"></p>
	
	</main>
	

</body>
</html>