<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Course</title>

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
            background: #e0f7fa; /* Student zone-like light blue */
        }

        .form-box {
            background: white;
            padding: 35px 45px;
            border-radius: 12px;
            box-shadow: 0 0 12px rgba(0,0,0,0.1);
            width: 380px;
            text-align: center;
        }

        .form-box h3 {
            margin-bottom: 25px;
            font-size: 24px;
            color: #00796b; /* greenish blue */
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
            background: #00796b;
            color: white;
            cursor: pointer;
            transition: 0.3s;
        }

        .submit-btn:hover {
            background: #004d40;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <div class="header">
        <h2>Course Management</h2>
        <a href="/" class="home-btn">Home</a>
    </div>

    <!-- Form Section -->
    <div class="form-container">
        <div class="form-box">
            <h3>Add New Course</h3>

            <form action="/savecourse" method="post">

                <label for="id">Course ID</label>
                <input type="number" id="id" name="id" placeholder="Enter course ID" required>

                <label for="name">Course Name</label>
                <input type="text" id="name" name="name" placeholder="Enter course name" required>

                <button type="submit" class="submit-btn">Add Course</button>
            </form>
        </div>
    </div>

</body>
</html>
