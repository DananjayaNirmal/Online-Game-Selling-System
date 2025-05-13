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
            background-color:#212429;
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
        /*.news-item {
            background-color: #222;
            padding: 15px;
            margin-bottom: 10px;
            border-radius: 5px;*/
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

	 <h2> Feedbacks </h2>
	 
	 
    <!--div class="container" style = "margin-bottom:10px;">
         
            <div class="">
                <h5 style = "color:white">User Email</h5>
                <p>Content</p>
                <p>Date</p>
                 
                <a href="updateUser?id=<c:out value='${usr.userID}'/>" style = "color:#106cff; text-decoration:none; margin-right:2px;"> Forward to Admin </a>
				
            </div>
            
    </div-->

	<c:forEach var="feedbacklist" items="${feedbacklist}"> 

    <div class="container" style = "margin-bottom:10px;">
         
            <div class="">
                <h4 style = "color:#106cff;"><c:out value="${feedbacklist.feedbackId }"></c:out></h4>
                <!--p><c:out value="${newslist.id }"></c:out></p-->
                <p><c:out value="${feedbacklist.description }"></c:out></p>
                <p><c:out value="${feedbacklist.date}"></c:out></p>
                 
                <a href="" style = "color:white; text-decoration:none; margin-right:2px; border:1px solid blue; padding:4px; background-color:#106cff;"> Forward to Admin </a>
            </div>
            
    </div>
    
    </c:forEach>

</body>
</html>
    