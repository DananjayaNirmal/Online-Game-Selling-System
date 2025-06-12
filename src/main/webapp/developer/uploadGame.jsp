<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Upload Game</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #1c2b36; /* Dark blue background */
            color: white;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: 50px auto;
            background-color: #2c3e50; /* Slightly lighter shade of blue for the container */
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h1 {
            text-align: center;
            color: #ecf0f1; /* Lighter text color for heading */
        }
        label {
            font-size: 16px;
            color: #bdc3c7; /* Lighter label color for contrast */
            margin-top: 10px;
            display: block;
        }
        input[type="text"], input[type="number"], input[type="file"], textarea {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #34495e;
            border-radius: 4px;
            box-sizing: border-box;
            background-color: #34495e;
            color: #ecf0f1;
        }
        input[type="submit"] {
            background-color: #3498db;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            margin-top: 20px;
        }
        input[type="submit"]:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Upload Game</h1>
    <form action="uploadGameServlet" method="post" enctype="multipart/form-data">
        <label for="gamename">Game Name:</label>
        <input type="text" name="gamename" id="gamename" required><br>

        <label for="gametype">Game Type:</label>
        <input type="text" name="gametype" id="gametype" required><br>

        <label for="gameprice">Game Price:</label>
        <input type="number" name="gameprice" id="gameprice" required><br>

        <label for="gamedescription">Description:</label>
        <textarea name="gamedescription" id="gamedescription" rows="4" required></textarea><br>

        <label for="gameimage">Game Image:</label>
        <input type="file" name="gameimage" id="gameimage" accept="image/*" required><br>

        <!-- Hidden status field -->
        <input type="hidden" name="status" value="pending">

        <input type="submit" value="Upload Game">
    </form>
</div>

</body>
</html>
