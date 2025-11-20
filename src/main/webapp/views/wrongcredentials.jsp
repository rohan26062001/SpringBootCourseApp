<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Failed</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f4f4f4;
        }

        /* Header */
        .header {
            background: #333;
            color: #fff;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header h2 {
            margin: 0;
            font-weight: normal;
        }

        .home-btn {
            background: #ffcc00;
            padding: 10px 18px;
            color: black;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        /* Error container */
        .error-container {
            width: 100%;
            height: 85vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #fce4ec; /* same pink used in admin page */
        }

        .error-box {
            background: white;
            padding: 35px 45px;
            border-radius: 12px;
            box-shadow: 0 0 12px rgba(0,0,0,0.1);
            text-align: center;
            width: 400px;
        }

        .error-box h3 {
            font-size: 26px;
            margin-bottom: 15px;
            color: #d32f2f; /* red for error */
        }

        .error-box p {
            font-size: 18px;
            color: #555;
            margin-bottom: 25px;
        }

        .retry-btn {
            background: #c2185b;
            color: white;
            padding: 12px 25px;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
            text-decoration: none;
            display: inline-block;
        }

        .retry-btn:hover {
            background: #880e4f;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <div class="header">
        <h2>Admin Portal</h2>
        <a href="/" class="home-btn">Home</a>
    </div>

    <!-- Error message -->
    <div class="error-container">
        <div class="error-box">
            <h3>Invalid Credentials!</h3>
            <p>The username or password you entered is incorrect.</p>

            <a href="/adminlogin" class="retry-btn">Try Again</a>
        </div>
    </div>

</body>
</html>
