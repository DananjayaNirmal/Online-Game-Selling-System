<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us - Game Zone</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #0f1c2e;
            color: #f5f6fa;
        }
        .header {
            background: linear-gradient(to right, #1abc9c, #3498db);
            padding: 40px 20px;
            text-align: center;
        }
        .header h1 {
            margin: 0;
            font-size: 48px;
            color: #fff;
            text-transform: uppercase;
            letter-spacing: 2px;
        }
        .header p {
            font-size: 18px;
            color: #ecf0f1;
            margin-top: 10px;
        }
        .content {
            max-width: 1000px;
            margin: 40px auto;
            padding: 30px;
            background-color: #1e2f47;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.3);
        }
        .content h2 {
            color: #1abc9c;
            margin-bottom: 20px;
        }
        .content p {
            line-height: 1.8;
            font-size: 16px;
            margin-bottom: 20px;
        }
        .features {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .feature {
            background-color: #273c59;
            padding: 20px;
            margin-top: 20px;
            border-radius: 8px;
            width: 48%;
            box-sizing: border-box;
            transition: transform 0.3s ease;
        }
        .feature:hover {
            transform: translateY(-5px);
        }
        .feature h3 {
            color: #f1c40f;
            margin-bottom: 10px;
        }
        .footer {
            text-align: center;
            padding: 20px;
            font-size: 14px;
            color: #95a5a6;
        }
        @media (max-width: 768px) {
            .feature {
                width: 100%;
            }
        }
    </style>
</head>
<body>

<div class="header">
    <h1>Game Zone</h1>
    <p>Your ultimate destination for digital gaming</p>
</div>

<div class="content">
    <h2>Who We Are</h2>
    <p>
        <strong>Game Zone</strong> is more than just a digital marketplace — it’s a vibrant hub built by gamers, for gamers. 
        Whether you're a competitive player, a casual explorer, or an indie developer, Game Zone brings you a wide selection of exciting, high-quality games at your fingertips.
    </p>

    <h2>Our Mission</h2>
    <p>
        We’re on a mission to revolutionize how games are discovered, purchased, and enjoyed. With secure payments, instant downloads, and a seamless user experience, 
        we empower developers to thrive and gamers to explore new worlds.
    </p>

    <div class="features">
        <div class="feature">
            <h3>🎮 Endless Game Variety</h3>
            <p>From action-packed shooters to thoughtful puzzle adventures, we’ve got something for every gamer.</p>
        </div>
        <div class="feature">
            <h3>🚀 Instant Downloads</h3>
            <p>Purchase your favorite game and start playing in seconds. No delays, no hassle — just pure gaming.</p>
        </div>
        <div class="feature">
            <h3>🛡️ Trusted & Secure</h3>
            <p>Your data and purchases are safe with us. We use top-grade encryption for all transactions.</p>
        </div>
        <div class="feature">
            <h3>🌍 Global Community</h3>
            <p>Join a global network of developers and players. Share feedback, earn ratings, and grow together.</p>
        </div>
    </div>
</div>

<div class="footer">
    &copy; 2025 Game Zone. All rights reserved.
</div>

</body>
</html>
