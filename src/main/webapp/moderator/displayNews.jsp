<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity=
    "sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
	

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>News Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #000;
            color: #fff;
            margin: 0;
            padding: 20px;
        }
        
        .container {
            width: 80%;
            margin: auto;
            background-color: #1a1a1a;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
        }
        
        h2 {
        
            color: white;
        }
        
        button {
            padding: 10px 20px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            
        }
        
        button:hover {
            background-color: #218838;
        }
        
        
        .news-item button {
            background-color: #007bff;
            border: none;
            padding: 5px 10px;
            color: white;
            cursor: pointer;
            border-radius: 5px;
        }
        
        .news-item button.delete {
            background-color: #dc3545;
        }
        
        .news-item button:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>

	 <h2>All published News</h2>

	<c:forEach var="newslist" items="${newslist}"> 

    <div class="container" style = "margin-bottom:10px;">
        

         
            <div class="">
                <h4 style = "color:#106cff;"><c:out value="${newslist.title }"></c:out></h4>
                <p>post ID : <c:out value="${newslist.id }"></c:out></p>
                <p><c:out value="${newslist.content }"></c:out></p>
                <p><c:out value="${newslist.date}"></c:out></p>
                 
                <a href="showUpdateNews?id=<c:out value='${newslist.id}'/>" style = "color:#6d747c; text-decoration:none; margin-right:2px;"> Update </a>
				<a href="deleteNews?id=<c:out value='${newslist.id}'/>" style = "color:red; text-decoration:none;"> Delete </a>
            </div>
            
    </div>
    
    </c:forEach>

</body>
</html>
    