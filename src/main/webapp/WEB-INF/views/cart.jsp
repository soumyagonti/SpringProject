<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h3 {
            text-align: center;
            color: #333333;
            margin-bottom: 20px;
        }
        .item {
            margin-bottom: 20px;
            padding-bottom: 20px;
            border-bottom: 1px solid #dddddd;
        }
        .item h4 {
            margin: 0;
            color: #333333;
            font-size: 20px;
        }
        .item p {
            margin: 0;
            color: #666666;
            font-size: 16px;
        }
        .btn-container {
            text-align: center;
            margin-top: 20px;
        }
        .btn {
            padding: 10px 20px;
            font-size: 18px;
            background-color: #007bff;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h3>Cart Page</h3>
    <div class="item">
        <h4>${op.name}</h4>
        <p>${op.price}</p>
    </div>
</div>
<div class="btn-container">
    <form action="address" method="post">
        <button type="submit" class="btn">BUY NOW!</button>
    </form>
</div>
</body>
</html>
