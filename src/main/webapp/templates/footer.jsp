<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet" integrity=
    "sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-Qg2CwzAO82B4+bbHu1QYv0wS09vSojyzepPUrE4Q9zAb57L5z02mknvdZ7fsAvx7" crossorigin="anonymous"></script>

</head>
<body>

    <nav class = "navbar navbar-expand navbar-dark bg-dark">
        
        <div class = "container">

            <a href = "#" class="navbar-brand">ddddddd</a>

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
                        About
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">hehe</a></li>
                        <li><a class="dropdown-item" href="#">hehe</a></li>
                        <li><a class="dropdown-item" href="#">hehe</a></li>
                    </ul>
                </li>

                <!----------------------------------------------->
                

            </ul>


            <div class="navbar-text">

                <button type="button" class="btn btn-dark btn-sm">Log in</button>
                <button type="button" class="btn btn-primary btn-sm ms-2">Sign up</button> 

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