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
	
		<table class="table mt-2">
				<thead class="table-transparent">
					<tr>
					
						<th>Game ID</th>
						<th>Name</th>
						<th>Type</th>
						<th>Description</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
				
				
					<c:forEach var="gList" items="${gList}"> 
						
						<tr>
						
							<td><c:out value="${gList.gameID }"></c:out></td>
							<td><c:out value="${gList.gameName }"></c:out></td>
							<td><c:out value="${gList.gameType }"></c:out></td>
							<td><c:out value="${gList.description }"></c:out></td>
							<td style = "display:none;"><c:out value="${gList.status}"></c:out></td>
							
							<td>
								<a href="approve?id=<c:out value='${gList.gameID }'/>" class="btn btn-transparent btn-sm text-success">Approve</a>
								<a href="delete?id=<c:out value='${gList.gameID }'/>" class="btn btn-transparent btn-sm text-danger">Reject</a>
								
								
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