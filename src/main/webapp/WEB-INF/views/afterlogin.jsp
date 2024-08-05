<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 16-05-2024
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Logined</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

        .container {
            padding: 20px;
        }

        .card {
            margin-bottom: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        .card img {
            max-width: 100%;
            height: auto;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .card-body {
            padding: 20px;
            text-align: center;
        }

        .card-title {
            color: #333;
            font-size: 1.25rem;
            margin-bottom: 10px;
        }

        .card-text {
            color: #666;
            font-size: 1rem;
            margin-bottom: 5px;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }

        .btn-out {
            background-color: #28a745;
            border-color: #28a745;
        }

        .btn-out:hover {
            background-color: #218838;
            border-color: #218838;
        }

        /* Custom styles for positioning buttons */
        .top-right-buttons {
            position: absolute;
            top: 20px;
            right: 20px;
        }
    </style>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <h3 class="text-center mt-4">JEWELLERY.COM</h3>

    <div class="row">
        <c:forEach items="${output}" var="data">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <img src="${data.getImage()}">
                        <h5 class="card-title">${data.getName()}</h5>
                        <p class="card-text">Color: ${data.getColor()}</p>
                        <p class="card-text">Price: ${data.getPrice()}</p>
                        <p class="card-text">${data.getDescription()}</p>
                        <a href="details?id=${data.getId()}" class="btn btn-primary">Add To Cart</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <!-- Positioning buttons at top-right corner -->
    <div class="top-right-buttons">
        <a href="/SpringJdbc_war_exploded/out" class="btn btn-out">Logout</a>
        <a href="viewcart" class="btn btn-primary">View Cart</a>
    </div>
</div>
</body>
</html>
