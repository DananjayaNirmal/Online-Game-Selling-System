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
<body>


<jsp:include page="/templates/adminHeaderMain.jsp"/>

<jsp:include page="/templates/subHeaderAdmin.jsp"/>



<main class = "container" style = "margin-bottom:100px; margin-top:100px; background-color:gray;">

	
	<div>
	
		<table class="table mt-2">
				<thead class="table-light">
					<tr>
						<th>Cover image</th>
						<th>Game Id</th>
						<th>title</th>
						<!--th></th-->
						
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var = "game" items = "${gList}" >
						<tr>
						
						
							<div>
					            <p>ID: ${game.id}</p>
					            <p>Title: ${game.title}</p>
					            <p>Status: ${game.status}</p>
					            <!--img src="${game.imagePath}" alt="Game Image" style="width:100px;" /-->
					        </div>
						
							<!--td><c:out value="${pts.imagePath }"></c:out></td>
							<td><c:out value="${pts.id }"></c:out></td>
							<td><c:out value="${pts.title }"></c:out></td>
		
							<td>
								<a href="update?id=" class="btn bg-transparent btn-sm">Approve</a>
								<a href="delete?id=" class="btn bg-transparent btn-sm text-success">Reject</a>
								<a href="delete?id=" class="btn btn-secondary btn-sm">Update</a>
							</td-->
							
						</tr>
					</c:forEach>
					
				</tbody>
			</table>
	
	</div>
	

</main>


<jsp:include page="/templates/footerAdmin.jsp"/>


</body>
</html>