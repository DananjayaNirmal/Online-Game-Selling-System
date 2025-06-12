<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <style>

       /* body {
        
        padding: 2rem;
        border-radius: 12px;
        color: white;
    }*/

    </style>

  <style>
    .carousel-inner img {
      height: 550px;
      /*object-fit: cover;*/
    }

    .gallery{

    width: 100%;
    display: flex;
    /*scroll only a separate part*/
    overflow-x: scroll;

    }

    .gallery div{

    width: 100%;
    display: grid;
    grid-template-columns: auto auto auto;
    grid-gap: 20px;
    padding: 10px;
    flex: none;

    }

    .gallery div img{

    width: 100%;
    /*filter: grayscale(100%);*/
    transition: transform 0.5s;

    }

    .gallery::-webkit-scrollbar{

    display: none;

    }

    .gallery-wrap{

    display: flex;
    align-items: center;
    margin: 10% auto;
    }

    #backBtn #nextBtn{

    width: 50px;
    cursor: pointer;
    margin: 40px;

    }
    .gallery div img:hover{

    filter: grayscale(0);
    cursor: pointer;
    /*transform: scale(1.1);*/

    }

    </style>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity=
    "sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-Qg2CwzAO82B4+bbHu1QYv0wS09vSojyzepPUrE4Q9zAb57L5z02mknvdZ7fsAvx7" crossorigin="anonymous"></script>

</head>
<body style = "background: linear-gradient(135deg, #121212, #1f1f1f, #1a1a1a);  background-color: #1a1a1a;
 background-image: none;  ">

    <nav class = "navbar navbar-expand navbar-dark bg-dark">
        
        <div class = "container">

            <a href = "#" class="navbar-brand">GAME ZONE <i class="bi bi-fire"></i></a>

            <ul class="navbar-nav">
                
                <li class="nav-item">
                    <a href = "#" class="nav-link">Home</a>
                </li>

                <li class="nav-item">
                    <a href = "store.jsp" class="nav-link">Store</a>
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
                        <li><a class="dropdown-item" href="moderator/giveFeedbacks.jsp">Give Feedbacks</a></li>
                        
                    </ul>
                </li>

                <!----------------------------------------------->
                

            </ul>


            <div class="navbar-text">

                <button type="button" class="btn btn-dark btn-sm" onclick="window.location.href='developer/login.jsp'" >Log in</button>
                <button type="button" class="btn btn-primary btn-sm ms-2" onclick="window.location.href='developer/register.jsp'">Sign up</button> 

            </div>

        </div>    

    </nav>

    <!--div class="container">

       Lorem ipsum dolor sit amet consectetur adipisicing 
       elit. Atque perferendis quo dicta recusandae laborum
       sed placeat quas ad eveniet, dolorum praesentium distinctio,
       repellat, architecto ipsa illo maiores aliquam 
       exercitationem cupiditate?


    </div-->

<main class="container mt-5">

        <!--input type = "text" placeholder = "Search games"-->
        <div id="gameCarousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="3000">
          
          <div class="carousel-indicators">
            <button type="button" data-bs-target="#gameCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#gameCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#gameCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
          </div>
    
          <div class="carousel-inner rounded-4 shadow-lg">
            <div class="carousel-item active">
              <img src="images/assasingCreed.png" class="d-block w-100" alt="Game 1">
            </div>
            <div class="carousel-item">
              <img src="images/witcher3.jpg" class="d-block w-100" alt="Game 2">
            </div>
            <div class="carousel-item">
              <img src="images/woulfAmoungUs.jpg" class="d-block w-100" alt="Game 3">
            </div>
          </div>
    
          <button class="carousel-control-prev" type="button" data-bs-target="#gameCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#gameCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
    
        </div>
      
        <div style = "position: absolute; left: 75%; top:90%; color:white;">

            <h1 ><span><s style="color: gray;">50$</s></span>&nbsp;25$</h1>
            <button class = "btn btn-light btn-lg">Play Now</button>

        </div>

        <!--_______________________________________________________________________________________________-->
        
          <div>
          </br></br>
            <h3 class="font-weight-normal mb-4 mt-4 text-white">Browse by Game Category</h3>

          <div>
          </br></br>
          <div class="d-flex gap-3 mb-4">
            <button class="btn btn-primary flex-fill">Action</button>
            <button class="btn btn-primary flex-fill">Adventure</button>
            <button class="btn btn-primary flex-fill">RPG</button>
            <button class="btn btn-primary flex-fill">Puzzle</button>
            <button class="btn btn-primary flex-fill">Shooter</button>
          </div>
    
        
        <!--_______________________________________________________________________________________________-->
        <!--_______________________________________________________________________________________________-->

        <div class = "row row-cols-1 row-cols-sm-2 row-cols-md-5 g-4 ms-auto">


          
          
            
              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>
             

              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>


              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>


              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>


              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>


              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>


              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>


              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>

              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>


              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>


              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>
             

              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>


              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>


              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>


              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>


              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>


              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>


              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>

              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>


              <div class="col">
                <div class="card h-100 bg-dark text-white">
                  <img src="images/witcher3.jpg" class="card-img-top" alt="Game Title">
                  <div class="card-body">
                    <h5 class="card-title">Game Title</h5>
                    <p class="card-text">Short game description.</p>
                    <a href="game-details.html?id=1" class="btn btn-outline-primary">View Details</a>
                  </div>
                </div>
              </div>
            
         


        </div>

        <!--_______________________________________________________________________________________________-->
      </br></br></br></br>
        <h3 class="font-weight-normal text-white">Most Popular Games</h3>
		
		
        <div class = "gallery-wrap">
        <!--img src = "images/back.png" --><i class="bi bi-arrow-right-square-fill fs-3 text-dark me-2" id = "backBtn"></i>
  
          <div class = "gallery">
  
              <div>
      
                  <span><img src = "images/woulfAmoungUs.jpg"></span>
                  <span><img src = "images/assasingCreed.png"></span>
                  <span><img src = "images/ciberPunk.jpg"></span>
                  
              </div>
      
              <div>
      
                  <span><img src = "images/witcher3.jpg"></span>
                  <span><img src = "images/witcher3.jpg"></span>
                  <span><img src = "images/witcher3.jpg"></span>
      
              </div>
      
          </div>
  
          <!--img src = "images/next.png" id = "nextBtn"--><i class="bi bi-arrow-left-square-fill fs-3 text-dark me-2"></i>
      </div> 



</main>    


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

	

   </footer>



      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

      <script>
    
        let scrollContainer = document.querySelector(".gallery");
        let backBtn = document.getElementById("backBtn");
        let nextBtn = document.getElementById("nextBtn");

        scrollContainer.addEventListener("wheel", (evt) =>{
            evt.preventDefault();
            scrollContainer.scrollLeft += evt.deltaY;
            scrollContainer.style.scrollBehavior = "auto";
        });


        nextBtn.addEventListener("click", () =>{
           scrollContainer.style.scrollBehavior = "smooth";
           scrollContainer.scrollLeft += 900;
        });

        backBtn.addEventListener("click", () =>{
           scrollContainer.style.scrollBehavior = "smooth";
           scrollContainer.scrollLeft -= 900;
        });

    </script>  

    <!--script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-Qg2CwzAO82B4+bbHu1QYv0wS09vSojyzepPUrE4Q9zAb57L5z02mknvdZ7fsAvx7" crossorigin="anonymous"></script-->
</body>
</html>