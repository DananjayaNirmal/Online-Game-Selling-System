
    <nav class = "navbar navbar-expand navbar-dark" style = "background-color:#212429;">
        
        <div class = "container">

            <a href = "../home.jsp" class="navbar-brand">GAME ZONE <i class="bi bi-fire"></i></a>

            <ul class="navbar-nav">
            
            	<li class="nav-item">
                    <a href = "../home.jsp" class="nav-link">Home</a>
                </li>

                <li class="nav-item">
                    <a href = "../home.jsp" class="nav-link">Store</a>
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
                        <li><a class="dropdown-item" href="#">About Us</a></li>
                        <li><a class="dropdown-item" href="#">Contact Us</a></li>
                        <li><a class="dropdown-item" href="../moderator/giveFeedbacks.jsp">Give Feedbacks</a></li>
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

      <!--script>
    
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

    </script-->  
