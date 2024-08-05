<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Mobile Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            color: #333;
            padding: 20px;
        }

        h3 {
            text-align: center;
            color: darkolivegreen;
            margin-bottom: 30px;
        }

        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            padding: 20px;
            transition: transform 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
        }

        .card img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .card-title {
            font-size: 1.25rem;
            color: #333;
            margin-bottom: 10px;
        }

        .card-text {
            color: #666;
            margin-bottom: 10px;
        }

        .btn-container {
            text-align: center;
            margin-top: 20px;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            display: inline-block;
            transition: background-color 0.3s;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
    </style>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h3>DETAILS OF MOBILE</h3>

<div class="container">
    <div class="card-container">
        <c:forEach items="${product}" var="data">
            <div class="card">
                <img src="${data.getImage()}">
                <h5 class="card-title">${data.getName()}</h5>
                <p class="card-text">Color: ${data.getColor()}</p>
                <p class="card-text">Price: ${data.getPrice()}</p>
                <p class="card-text">${data.getDescription()}</p>
                <a href="cart?id=${data.getId()}" class="btn btn-primary">Add to Cart</a>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
