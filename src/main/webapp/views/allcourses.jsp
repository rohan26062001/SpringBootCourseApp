<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Courses</title>

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

        /* Table container */
        .container {
            width: 100%;
            display: flex;
            justify-content: center;
            padding: 40px 0;
        }

        table {
            width: 70%;
            border-collapse: collapse;
            background: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 0 12px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 15px 20px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            font-size: 16px;
        }

        th {
            background: #00796b;
            color: white;
        }

        tr:hover {
            background: #e0f7fa;
        }

        .no-data {
            text-align: center;
            padding: 30px;
            font-size: 18px;
            color: #555;
        }
    </style>
</head>

<body>

    <!-- Header -->
    <div class="header">
        <h2>All Courses</h2>
        <a href="/" class="home-btn">Home</a>
    </div>

    <!-- Table Section -->
    <div class="container">
        <c:choose>
            <c:when test="${not empty courses}">
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Course Name</th>
                        </tr>
                    </thead>

                    <tbody>
                        <c:forEach var="course" items="${courses}">
                            <tr>
                                <td>${course.id}</td>
                                <td>${course.name}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:when>

            <c:otherwise>
                <div class="no-data">No courses available.</div>
            </c:otherwise>
        </c:choose>
    </div>

</body>
</html>
