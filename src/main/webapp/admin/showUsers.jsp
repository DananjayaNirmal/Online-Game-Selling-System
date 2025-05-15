<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

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


<jsp:include page="/templates/adminHeaderMain.jsp"/>

<jsp:include page="/templates/subHeaderAdmin.jsp"/>



<main class = "container" style = "margin-bottom:100px; margin-top:100px;">

	<div>
	
		<a href="addNewUser.jsp" class="btn btn-success btn-sm"><i class="bi bi-person-plus-fill"></i> New User</a>
		
	</div>
	
	<div>
	
		<table class="table mt-2">
				<thead class="table-transparent">
					<tr>
						<th>User ID</th>
						<th>User Name</th>
						<th>E-mail</th>
						<th>Phone No</th>
						<!--th>Age</th-->
						<th>Roll</th>
						<th>Password</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
				
				
					<!--tr>
						
							<td>1001</td>
							<td>Dananjaya</td>
							<td>dana@gmail.com</td>
							<td>947027000</td>
							<td>22</td>
							<td>Admin</td>
							<td>123456789</td>
							<td>
								<a href="" class="btn btn-transparent btn-sm"><i class="bi bi-pencil-square fs-5" style = "color:gray;"></i></a>
								<a href="" class="btn btn-transparent btn-sm"><i class="bi bi-person-x-fill fs-5" style = "color:red;"></i></a>
							</td>
							
						</tr-->
				
					<c:forEach var="usr" items="${usr}"> 
						<tr>
						
							<td><c:out value="${usr.userID }"></c:out></td>
							<td><c:out value="${usr.userName }"></c:out></td>
							<td><c:out value="${usr.email }"></c:out></td>
							<td><c:out value="${usr.phoneNo }"></c:out></td>
							<td><c:out value="${usr.roll }"></c:out></td>
							<td><c:out value="${usr.password }"></c:out></td>
							<td>
								<!--a href="update?id=<c:out value='${pts.id }'/>" class="btn btn-success btn-sm">Edit</a>
								<a href="delete?id=<c:out value='${pts.id }'/>" class="btn btn-danger btn-sm">Delete</a-->
								
								<a href="updateUser?id=<c:out value='${usr.userID}'/>" class="btn btn-transparent btn-sm"><i class="bi bi-pencil-square fs-5" style = "color:gray;"></i></a>
								<a href="deleteUser?id=<c:out value='${usr.userID}'/>" class="btn btn-transparent btn-sm"><i class="bi bi-person-x-fill fs-5" style = "color:red;"></i></a>
								
							</td>
							
						</tr>
					</c:forEach>
					
				</tbody>
			</table>
		
	</div>

</main>


<jsp:include page="/templates/footerAdmin.jsp"/>


</body>
</html>