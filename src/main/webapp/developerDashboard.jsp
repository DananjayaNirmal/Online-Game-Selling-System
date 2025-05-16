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
        .cont{
            margin: 0;
            display: flex;
            font-family: Arial, sans-serif;
            background-color: #212121;  /* Dark background for the whole page */
            color: #fff;  /* White text color */
        }
        .sidebar {
            width: 220px;
            background-color: #000000;  /* Black sidebar */
            height: 120vh;
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
    
    <main>
    
    <div>
    
    <nav class = "navbar navbar-expand navbar-dark bg-dark">
        
        <div class = "container">

            <a href = "#" class="navbar-brand">GAME ZONE <i class="bi bi-fire"></i></a>

            <ul class="navbar-nav">
                
                <li class="nav-item">
                    <a href = "#" class="nav-link">Home</a>
                </li>

                <li class="nav-item">
                    <a href = "#" class="nav-link">Store</a>
                </li>


                <li class="nav-item">
                    <a href = "#" class="nav-link">News</a>
                </li>

                <!--li class="nav-item">
                    <a href = "#" class="nav-link">About</a>
                </li-->

                <!----------------------------------------------->

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle d-flex align-items-center" href="#" id="moreDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        More
                    </a>
                    <ul class="dropdown-menu">
                    	<li><a class="dropdown-item" href="aboutUs.jsp">About Us</a></li>
                        <li><a class="dropdown-item" href="#">Contact Us</a></li>
                        <li><a class="dropdown-item" href="#">Feedbacks</a></li>
                        
                    </ul>
                </li>

                <!----------------------------------------------->
                

            </ul>


            <div class="navbar-text">

                <!--button type="button" class="btn btn-dark btn-sm" onclick="window.location.href='login.jsp'" >Log in</button>
                <button type="button" class="btn btn-primary btn-sm ms-2" onclick="window.location.href='register.jsp'">Sign up</button--> 
                <button type="button" class="btn btn-primary btn-sm ms-2" onclick="window.location.href='register.jsp'">Logout</button> 

            </div>

        </div>    

    </nav>

    
    </div>
    
    <div class = "cont">
    
    <div class="sidebar">
        <button onclick="loadContent('profileshortcut.jsp')">Profile</button>
        <button onclick="loadContent('uploadGame.jsp')">Upload Game</button>
         <button onclick="loadContent('viewUploadedGamesServlet')">Uploaded Games</button>
        <button onclick="loadContent('viewApprovedGamesServlet')">Approved Games</button>
    </div>
    <div class="content">
        <iframe id="contentFrame" name="contentFrame" src="profileshortcut.jsp"></iframe>  <!-- Default profile page -->
    </div>
    
    </div>
    
    
    <div>
    
    <footer class = "bg-dark text-light py-5" >

	<div class = "container">
	
	<div class = "row">
	
		<div class = "col">
		
		<ul class = "list-unstyled">
		<li><a href = "" class = "text-decoration-none text-light fs-4">Menu</a></li></br>
		<li><a href = "" class = "text-decoration-none text-light">Store</a></li>
		<li><a href = "" class = "text-decoration-none text-light">News</a></li>
		<li><a href = "" class = "text-decoration-none text-light">Contact Us</a></li>
		<li><a href = "" class = "text-decoration-none text-light">Dev community</a></li>
		</ul>
		
		</div>
		
		
		<div class = "col">
		
		<ul class = "list-unstyled">
		<li><a href = "" class = "text-decoration-none text-light fs-4">Games</a></li></br>
		<li><a href = "" class = "text-decoration-none text-light">Fortnite</a></li>
		<li><a href = "" class = "text-decoration-none text-light">Fall Guys</a></li>
		<li><a href = "" class = "text-decoration-none text-light">Valorant</a></li>
		<li><a href = "" class = "text-decoration-none text-light">Minecraft</a></li>
		</ul>
		
		</div>
		
		
		<div class = "col">
		
		<ul class = "list-unstyled">
		<li><a href = "" class = "text-decoration-none text-light fs-4">Read</a></li></br>
		<li><a href = "" class = "text-decoration-none text-light">privacy policy</a></li>
		<li><a href = "" class = "text-decoration-none text-light">community rules </a></li>
		<li><a href = "" class = "text-decoration-none text-light">safety and security</a></li>
		</ul>
		
		</div>
	
	</div>

	<hr>
	<p class="text-light fs-6">
  	© 2025 GameZone. All rights reserved.
	</p>

	</div>

	<!--p class="text-light text-center mt-2">
  	© 2025 GameZone. All rights reserved.
	</p-->
	
	

   </footer>
    
    
    
    </div>

	 </main>
	 
    <script>
        function loadContent(page) {
            document.getElementById("contentFrame").src = page;
        }
    </script>
    
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
   
</body>
</html>
