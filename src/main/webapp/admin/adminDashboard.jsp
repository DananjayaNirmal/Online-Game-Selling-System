<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
<body style = "background-color:#131313;">


<jsp:include page="/templates/adminHeaderMain.jsp"/>

<jsp:include page="/templates/subHeaderAdmin.jsp"/>



<main class = "container" style = "margin-bottom:100px; margin-top:100px;">

	<div class = "row">
		<div class = "col p-5 m-2 text-center rounded" style = "background-color:#1a1a1a; color:white;">
			
			<i class="bi bi-people-fill"></i><p> 7</p>	 
			
		</div>
		
		<div class = "col p-5 m-2 text-center rounded" style = "background-color:#1a1a1a; color:white;">
		
			<i class="bi bi-controller"></i><p>7</p>
		
		</div>
		
		<div class = "col p-5 m-2 text-center rounded" style = "background-color:#1a1a1a; color:white;">
		
			<i class="bi bi-chat-dots-fill"></i><p>7</p>
			
		</div>
		
		<!--div class = "col bg-secondary p-5 m-2 text-center rounded">
		</div-->
	<div>
	<br>
	<div class = "row">
		<div class = "col p-5 m-2 text-center rounded" style = "background-color:#1a1a1a; color:blue;">
			
			<p class = "text-primary">Total Users</p>	 
			
		</div>
		
		<div class = "col p-5 m-2 text-center rounded" style = "background-color:#1a1a1a; color:blue;">
		
			<p class = "text-primary">Total Games</p>	 
			
		</div>
		
		<div class = "col p-5 m-2 text-center rounded" style = "background-color:#1a1a1a; color:blue;">
		
			<p class = "text-primary">Total Engagements</p>	 
			
		</div>
		
		<!--div class = "col bg-secondary p-5 m-2 rounded">
		</div-->
	<div>		
	
	

</main>


<jsp:include page="/templates/footerAdmin.jsp"/>


</body>
</html>