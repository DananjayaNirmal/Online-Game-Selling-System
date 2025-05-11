<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" integrity=
"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<meta charset="UTF-8">
<title>Sample Login</title>
</head>
<body>

	<div class = "container mt-5">
	<form class = "w-25 mx-auto" action = "sampleLogin " method = "post">
	
		<div class = "form-outline mb-4">
			<label class = "form-label">User Name</label>
			<input type = "text" class = "form-control border-primary" name =
			 "uname" placeholder = "name">
		</div>
		
		<div class = "form-outline mb-5">
			<label class = "form-label">Password</label>
			<input type = "password" class = "form-control border-primary" name =
			 "upass" placeholder = "password">
		</div>
		
		<input type = "submit" class = "btn btn-primary" value =
		"Login">
	
	</form>
	
	</div>
	
</body>
</html>