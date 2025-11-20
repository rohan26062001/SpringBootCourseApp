<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Index Page</title>

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

        /* Page Sections */
        .container {
            display: flex;
            height: 85vh;
        }

        .section {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .left {
            background: #e0f7fa; /* light blue */
        }

        .right {
            background: #fce4ec; /* light pink */
        }

        .btn {
            padding: 15px 25px;
            font-size: 20px;
            border: none;
            cursor: pointer;
            border-radius: 10px;
            font-weight: bold;
            color: white;
            transition: 0.3s;
        }

        .student-btn {
            background: #00796b;
        }

        .student-btn:hover {
            background: #004d40;
        }

        .admin-btn {
            background: #c2185b;
        }

        .admin-btn:hover {
            background: #880e4f;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <div class="header">
        <h2>Welcome to Our Portal</h2>
        <a href="/" class="home-btn">Home</a>
    </div>

    <!-- Two Main Sections -->
    <div class="container">

        <!-- Left: Student Zone -->
        <div class="section left">
            <form action="/studentzone">
                <button type="submit" class="btn student-btn">Student Zone</button>
            </form>
        </div>

        <!-- Right: Admin Login -->
        <div class="section right">
            <form action="/adminlogin">
                <button type="submit" class="btn admin-btn">Admin Login</button>
            </form>
        </div>

    </div>

</body>
</html>