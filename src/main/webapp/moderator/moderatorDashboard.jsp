<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 

<!DOCTYPE html>
<html lang="en">
<head>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity=
    "sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    
	
    <meta charset="UTF-8">
    <title>Moderator Dashboard</title>
    

    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            background: linear-gradient(to right, #0f0f0f, #1a1a1a);
            color: #ffffff;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }


        .main-content {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 60px 20px;
        }

        .card-container {
            display: flex;
            gap: 40px;
            flex-wrap: wrap;
            justify-content: center;
        }

        .card-button {
            background:#1a1a1a;
            border: 2px solid #106cff;
            padding: 40px 50px;
            font-size: 18px;
            font-weight: bold;
            color: #fff;
            border-radius: 12px;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
            text-align: center;
            min-width: 200px;
            position: relative;
            overflow: hidden;
        }

        

    </style>
</head>
<body>

	<jsp:include page="/templates/adminHeaderMain.jsp"/>

  

    <div class="main-content">
        <div class="card-container">
            
            <div class="card-button">
                <a href = "feedbacks" style = "text-decoration:none; color:white;"><i class="fas fa-comments"></i><br><span>Feedback</span></a>
            </div>
            
            <div class="card-button">
                <a href = "manageNews.jsp" style = "text-decoration:none; color:white;"><i class="fas fa-newspaper"></i><br><span>News</span></a>
            </div>
            
            <div class="card-button">
                <a href = "profile.jsp" style = "text-decoration:none; color:white;"><i class="fa fa-pencil-square" aria-hidden="true"></i><br><span>Edit Profile</span></a>
               
            </div>
            
        </div>
    </div>

	<div>
	
	</div>

</body>
</html>
    