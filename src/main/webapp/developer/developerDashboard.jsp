<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--%
    HttpSession sessio = request.getSession(false); // don't create a new session
    if (session == null || session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    // Optionally set timeout to 5 minutes (300 seconds)
    session.setMaxInactiveInterval(10);
%-->

<!DOCTYPE html> 
<html>
<head>

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity=
    "sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">


    <meta charset="UTF-8">
    <title>Dashboard</title>
    <style>
        .main {
            margin: 0;
            display: flex;
            font-family: Arial, sans-serif;
            background-color: #1e1e1e;
            color: #fff;
        }
        .sidebar {
            width: 250px;
            background-color:#141414;
            padding: 20px 0;
            color: #fff;
        }
        .sidebar button {
            width: 100%;
            padding: 14px;
            margin: 15px 0;
            background-color: #333;
            border: none;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            text-align: left;
            padding-left: 20px;
            border-radius: 5px;
        }
        .sidebar button:hover {
            background-color:#232323;
            transition: background-color 0.3s ease;
        }
        .content {
            flex-grow: 1;
            padding: 20px;
            background-color:#141414;
            color: #000;
            margin-left: 20px;
        }
        iframe {
            width: 100%;
            height: 100%;
            border: none;
            min-height: 600px;
            /*border-radius: 10px;*/
        }
    </style>
</head>
<body>  
<jsp:include page="/templates/adminHeaderMain.jsp"/>
<div class = "main">
    <div class="sidebar">
        <button onclick="loadContent('profileshortcut.jsp')">Profile</button>
        <button onclick="loadContent('uploadGame.jsp')">Upload Game</button>
        <button onclick="loadContent('viewUploadedGamesServlet')">Uploaded Games</button>
        <button onclick="loadContent('viewApprovedGamesServlet')">Approved Games</button>
    </div>
    <div class="content">
        <iframe id="contentFrame" name="contentFrame" src="profileshortcut.jsp"></iframe>
    </div>
</div>
<jsp:include page="/templates/footerAdmin.jsp"/>    

    <script>
        function loadContent(page) {
            document.getElementById("contentFrame").src = page;
        }
    </script>
</body>
</html>
