<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Jewellery|Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .container {
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        .card {
            margin-bottom: 20px;
            background-color: #fff;
            border-radius: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 20px rgba(0, 0, 0, 0.1);
        }

        .card img {
            max-width: 100%;
            height: auto;
            border-top-left-radius: 20px;
            border-top-right-radius: 20px;
        }

        .card-body {
            padding: 20px;
            text-align: center;
        }
        .card-title {
            color: #333;
            font-size: 1.5rem;
            margin-bottom: 10px;
        }
        .card-text {
            color: #666;
            font-size: 1.1rem;
            margin-bottom: 10px;
        }
        .btn-primary {
            background-color: #ff69b4;
            border-color: #ff69b4;
            border-radius: 20px;
            padding: 10px 20px;
            font-size: 1.1rem;
            transition: background-color 0.3s, border-color 0.3s;
        }
        .btn-primary:hover {
            background-color: #ff1493;
            border-color: #ff1493;
        }
        .login-button-container {
            position: absolute;
            top: 20px; /* Adjust as needed */
            right: 20px; /* Adjust as needed */
        }

        /* Error Message Styling */
        .error-container {
            background-color: #f44336; /* Red */
            color: white;
            text-align: center;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 10px;
        }
    </style>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="#">JEWELLERY.COM</a>
        </div>
    </nav>
</header>

<c:if test="${error eq 'true'}">
    <div class="error-container">${msg}</div>
</c:if>

<div class="container">
    <div class="row">
        <c:forEach items="${output}" var="data">
            <div class="col-md-4">
                <div class="card">
                    <img class="card-img-top" src="${data.getImage()}">
                    <div class="card-body">
                        <a href="/SpringJdbc_war_exploded/get" class="card">
                            <h5 class="card-title">${data.getName()}</h5>
                        </a>
                        <p class="card-text">Color: ${data.getColor()}</p>
                        <p class="card-text">Price: ${data.getPrice()}</p>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    <div class="login-button-container">
        <a href="/SpringJdbc_war_exploded/login" class="btn btn-primary">Login</a>
    </div>
</div>
<footer class="bg-dark text-white text-center py-3">
    <p>&copy; 2024 JEWELLERY.COM. All rights reserved.</p>
</footer>
</body>
</html>
