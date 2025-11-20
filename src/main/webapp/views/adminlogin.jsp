<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>

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

        /* Form container */
        .form-container {
            width: 100%;
            height: 85vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #fce4ec; /* matches admin section color */
        }

        .form-box {
            background: white;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 0 12px rgba(0,0,0,0.1);
            width: 350px;
            text-align: center;
        }

        .form-box h3 {
            margin-bottom: 25px;
            font-size: 24px;
            color: #c2185b;
        }

        label {
            float: left;
            margin-bottom: 6px;
            font-weight: bold;
            color: #444;
        }

        input {
            width: 100%;
            padding: 12px;
            margin-bottom: 18px;
            border-radius: 6px;
            border: 1px solid #bbb;
            font-size: 16px;
        }

        .submit-btn {
            width: 100%;
            padding: 13px;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            font-weight: bold;
            background: #c2185b;
            color: white;
            cursor: pointer;
            transition: 0.3s;
        }

        .submit-btn:hover {
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

    <!-- Admin Form -->
    <div class="form-container">
        <div class="form-box">
            <h3>Admin Login</h3>

            <form action="/admin-auth" method="post">

                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Enter admin username" required>

                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter password" required>

                <button type="submit" class="submit-btn">Login</button>
            </form>
        </div>
    </div>

</body>
</html>
