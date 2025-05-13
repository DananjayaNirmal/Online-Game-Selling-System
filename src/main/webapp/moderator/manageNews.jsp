
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
        <h2>New Post</h2>

     
        <form action="manageNews"  method="post" >
        
            <input type="hidden" name="action" value="insert">
            <input type="text" name="title" placeholder="News Title" required>
            <textarea name="content" placeholder="News Content" required style="height: 300px;"></textarea>
            
            <button type="submit">Publish</button> <a href = "moderatorDashboard.jsp" style = "text-decoration:none; color:white; margin-left:2px; color:#106cff;"> Back to Dash board </a>
        </form>
		<p style = "margin-top:40px;"> 
        <a href = "createdNews" style = "text-decoration:none; color:white;"> Open Created News </a>
        <p style = "margin-bottom:40px;">    
    </div>

</body>
</html>
    