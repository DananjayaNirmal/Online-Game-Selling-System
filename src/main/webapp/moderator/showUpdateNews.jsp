<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
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
        h2, h3, h4 {
            text-align: center;
            color: white;
        }
        form input, form textarea, form select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #444;
            border-radius: 5px;
            background-color: #333;
            color: #fff;
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
        .news-item {
            background-color: #222;
            padding: 15px;
            margin-bottom: 10px;
            border-radius: 5px;
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

 
    <div class="container">
    <h2>Edit Post</h2>

    <form action="updateNews" method="post">
       
        <!--input type="hidden" name="action" value="update"-->
      
        <input type="hidden" name="id" value="${ns.id}">

       
        <input type="text" name="title" value="${ns.title}" required>

      
        <textarea name="content" style="height: 300px;" required>${ns.content}</textarea>
        
         <input type="hidden" name="date" value="${ns.date}" required>

       
        <button type="submit">Update</button>

       
        <a href="moderatorDashboard.jsp" style="text-decoration:none; margin-left:10px; color:#106cff;">Back to Dashboard</a>
    </form>
</div>
    

</body>
</html>
    