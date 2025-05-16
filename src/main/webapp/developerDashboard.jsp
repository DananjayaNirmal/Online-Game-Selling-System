<!DOCTYPE html> 
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <style>
        body {
            margin: 0;
            display: flex;
            font-family: Arial, sans-serif;
            background-color: #212121;  /* Dark background for the whole page */
            color: #fff;  /* White text color */
        }
        .sidebar {
            width: 220px;
            background-color: #000000;  /* Black sidebar */
            height: 100vh;
            padding: 20px 0;
            color: #fff;
            border-right: 2px solid #444;
        }
        .sidebar button {
            width: 100%;
            padding: 14px;
            margin: 15px 0;
            background-color: #333;  /* Darker button color */
            border: none;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            text-align: left;
            padding-left: 20px;
            border-radius: 5px;
        }
        .sidebar button:hover {
            background-color: #1abc9c;  /* Green hover effect */
            transition: background-color 0.3s ease;
        }
        .content {
            flex-grow: 1;
            padding: 20px;
            background-color: #fff;  /* White background for content area */
            color: #000;  /* Black text color for content */
            border-radius: 10px;  /* Rounded corners for content */
            margin-left: 20px;  /* Adding margin to separate content from sidebar */
        }
        iframe {
            width: 100%;
            height: 100%;
            border: none;
            min-height: 600px;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    
    <div class="sidebar">
        <button onclick="loadContent('profileshortcut.jsp')">Profile</button>
        <button onclick="loadContent('uploadGame.jsp')">Upload Game</button>
         <button onclick="loadContent('viewUploadedGamesServlet')">Uploaded Games</button>
        <button onclick="loadContent('viewApprovedGamesServlet')">Approved Games</button>
    </div>
    <div class="content">
        <iframe id="contentFrame" name="contentFrame" src="profileshortcut.jsp"></iframe>  <!-- Default profile page -->
    </div>

    <script>
        function loadContent(page) {
            document.getElementById("contentFrame").src = page;
        }
    </script>
   
</body>
</html>
