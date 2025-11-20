<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Zone</title>

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

        /* Page container */
        .container {
            width: 100%;
            height: 85vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #e0f7fa; /* light blue student zone color */
        }

        .box {
            background: white;
            padding: 35px 45px;
            border-radius: 12px;
            text-align: center;
            box-shadow: 0 0 12px rgba(0,0,0,0.1);
        }

        .btn {
            padding: 15px 25px;
            font-size: 20px;
            border: none;
            border-radius: 10px;
            background: #00796b;
            color: white;
            cursor: pointer;
            transition: 0.3s;
            font-weight: bold;
            text-decoration: none;
            display: inline-block;
            margin-top: 10px;
        }

        .btn:hover {
            background: #004d40;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <div class="header">
        <h2>Student Zone</h2>
        <a href="/" class="home-btn">Home</a>
    </div>

    <!-- Main Section -->
    <div class="container">
        <div class="box">
            <a href="/allcourses" class="btn">Get All Courses</a>
        </div>
    </div>

</body>
</html>
