<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	 
	 
	<c:choose>
    <c:when test="${empty feedbacklist}">
      <p>No feedback found or attribute missing!</p>
    </c:when>
    <c:otherwise>
      <p>Feedback count: ${fn:length(feedbacklist)}</p>
      <c:forEach var="feedback" items="${feedbacklist}">
        <div>
          <h4>${feedback.feedbackId}</h4>
          <p>${feedback.email}</p>
          <p>${feedback.description}</p>
          <p>${feedback.date}</p>
        </div>
        <hr/>
      </c:forEach>
    </c:otherwise>
  </c:choose>

</body>
</html>
    