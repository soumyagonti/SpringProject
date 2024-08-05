<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 14-05-2024
  Time: 18:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Order Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            color: #333;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h3 {
            text-align: center;
            color: darkolivegreen;
            margin-top: 0;
        }

        .order-id {
            text-align: center;
            font-size: 1.2em;
            margin-bottom: 20px;
        }

        .confirmation-message {
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="order-id">
        <p>Order ID: ${random}</p>
    </div>
    <h3 class="confirmation-message">Your Order is placed Successfully</h3>
</div>
</body>
</html>
