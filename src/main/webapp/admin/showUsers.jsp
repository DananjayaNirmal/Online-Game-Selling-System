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
<br>
<br>
</div>

<div>
	<h3>Customer Details</h3>
	<br>
	<div>
	
		<!--a href="addNewUser.jsp" class="btn btn-success btn-sm"><i class="bi bi-person-plus-fill"></i> New Customer</a-->
		
	</div>
	<br>
	<div>
	
		<table class="table mt-2" style = "width:100%;">
				<thead class="table-transparent">
					<tr>
						<th>User Name</th>
						<th>E-mail</th>
						<th>Phone No</th>
						<th>Gender</th>
						<!--th>Roll</th-->
						<th>Password</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="usr" items="${usr}"> 
					<c:if test="${usr.roll == 'Customer'}">
						<tr>
						
							<td style="display: none;"><c:out value="${usr.userID }"></c:out></td>
							<td><c:out value="${usr.userName }"></c:out></td>
							<td><c:out value="${usr.email }"></c:out></td>
							<td><c:out value="${usr.phoneNo }"></c:out></td>
							<td><c:out value="${usr.gender }"></c:out></td>
							<!--td><c:out value="${usr.roll }"></c:out></td-->
							<td><c:out value="${usr.password }"></c:out></td>
							
						</tr>
						<tr>
						<td>
						<div style = "display:flex; justify-content: flex-end; gap: 8px; background-color:#f2f2f2;">
						
						
								<div>
								<a href="updateUserForm?id=<c:out value='${usr.userID}'/>" class="btn btn-transparent btn-sm"><i class="bi bi-pencil-square fs-5" style = "color:gray;"></i></a>
								</div>
								<div>
								<a href="deleteUser?id=<c:out value='${usr.userID}'/>" class="btn btn-transparent btn-sm"><i class="bi bi-person-x-fill fs-5" style = "color:red;"></i></a>
								</div>
							
							
						</div>
						</td>
						</tr>
					</c:if>
					</c:forEach>
					
				</tbody>
			</table>
		
	</div>
	<br><br>
	<!-- ---------------------------------------------------------------------------------------------------------- ------>
	<div>
		
		<H3>Staff Details</H3>
		<br>
		
	</div>
	<br>
	<div>
	
		<table class="table mt-2" style = "width:100%;">
				<thead class="table-transparent">
					<tr>
						
						<th>Staff Name</th>
						<th>E-mail</th>
						<th>Phone No</th>
						<th>Roll</th>
						<th>Password</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="usr" items="${usr}"> 
					<c:if test="${usr.roll == 'Admin' || usr.roll == 'Moderator'}">
					
						<tr>
						
							<td style="display: none;"><c:out value="${usr.userID }"></c:out></td>
							<td><c:out value="${usr.userName }"></c:out></td>
							<td><c:out value="${usr.email }"></c:out></td>
							<td><c:out value="${usr.phoneNo }"></c:out></td>
							<td><c:out value="${usr.roll }"></c:out></td>
							<td><c:out value="${usr.password }"></c:out></td>
							
						</tr>
						<tr>
						<td>
						<div style = "display:flex; gap: 8px;">
						
								<div>
								<a href="updateUserForm?id=<c:out value='${usr.userID}'/>" class="btn btn-transparent btn-sm"><i class="bi bi-pencil-square fs-6" style = "color:gray;"></i></a>
								</div>
								<div>
								<a href="deleteUser?id=<c:out value='${usr.userID}'/>" class="btn btn-transparent btn-sm"><i class="bi bi-person-x-fill fs-5" style = "color:red;"></i></a>
								</div>
							
							
						</div>
						</td>
						</tr>
					 </c:if>
					</c:forEach>
				</tbody>
			</table>
		
	</div>
	
	
</div>	

</main>


<jsp:include page="/templates/footerAdmin.jsp"/>


</body>
</html>