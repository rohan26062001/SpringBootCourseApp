<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Save Failed</title>

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

        .header h2 { margin: 0; font-weight: normal; }

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
            background: #fce4ec; /* admin/error hue */
        }

        .error-box {
            background: white;
            padding: 35px 45px;
            border-radius: 12px;
            box-shadow: 0 0 12px rgba(0,0,0,0.1);
            text-align: center;
            width: 420px;
        }

        .error-box h3 {
            font-size: 26px;
            margin-bottom: 12px;
            color: #d32f2f; /* red for error */
        }

        .error-box p {
            font-size: 16px;
            color: #555;
            margin-bottom: 22px;
        }

        .action-btn {
            display: inline-block;
            padding: 12px 22px;
            margin: 6px;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
            cursor: pointer;
            border: none;
        }

        .btn-danger {
            background: #c2185b;
            color: white;
        }

        .btn-danger:hover { background: #880e4f; }

        .btn-secondary {
            background: #ffcc00;
            color: black;
        }

        .btn-secondary:hover { opacity: 0.9; }
    </style>
</head>
<body>

    <!-- Header -->
    <div class="header">
        <h2>Course Management</h2>
        <a href="/" class="home-btn">Home</a>
    </div>

    <!-- Failure Message -->
    <div class="error-container">
        <div class="error-box">
            <h3>Failed to Save Course</h3>
            <p>${course_save_error}</p>

            <a href="/addcourse" class="action-btn btn-danger">Try Again</a>
            <a href="/" class="action-btn btn-secondary">Go to Home</a>
        </div>
    </div>

</body>
</html>
