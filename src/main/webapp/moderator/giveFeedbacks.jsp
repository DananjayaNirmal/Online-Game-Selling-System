<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Feedback</title>
  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  
  <style>
    body {
      background-color:black;
    }

    .feedback-container {
      max-width: 600px;
      margin: 60px auto;
      background-color:#1a1a1a;
      border-radius: 10px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.05);
      padding: 40px;
    }

    .form-label {
      font-weight: 500;
    }


    .btn-primary {
      width: 100%;
      padding: 12px;
    }

    .form-title {
      text-align: center;
      margin-bottom: 30px;
      color: #343a40;
    }
  </style>
</head>
<body>

  <div class="container">
    <div class="feedback-container">
      <h2 class="form-title" style = "color:white;">We Value Your Feedback</h2>
      <form action="giveFeedbacks" method="post">

        <div class="mb-3">
        	<label for="feedback" class="form-label text-light">Enter your E-mail</label>
        	<input type = "email" class="form-control text-light" name="email" required style = "background-color:#1a1a1a; ">
        </div>
          

      
        <div class="mb-3">
          <label for="feedback" class="form-label text-light">Your Message</label>
          <textarea class="form-control" name="description" rows="4" required style = "background-color:#1a1a1a; color:white;"></textarea>
        </div>

         
        <button type="submit" class="btn btn-primary">Submit</button>

      </form>
    </div>
  </div>

</body>
</html>
