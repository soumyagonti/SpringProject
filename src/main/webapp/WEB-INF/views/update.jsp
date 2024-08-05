<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 17-04-2024
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Updating</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }

        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 5px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h3 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        .styled-form {
            width: 100%;
        }

        .styled-form input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .styled-form input[type="submit"] {
            background-color: #dc3545;
            color: white;
            cursor: pointer;
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .styled-form input[type="submit"]:hover {
            background-color: #c82333;
        }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h3>Update Mobile Details</h3>
    <%--@elvariable id="data" type=""--%>
    <form:form action="updateform" modelAttribute="data" method="post" class="styled-form">
        <div class="form-group">
            <label for="id">Product ID:</label>
            <form:input path="id" id="id" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="name">Product Name:</label>
            <form:input path="name" id="name" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="color">Product Color:</label>
            <form:input path="color" id="color" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="price">Adress of Product:</label>
            <form:input path="image" id="price" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="price">Product Price:</label>
            <form:input path="price" id="price" class="form-control"/>
        </div>
        <input type="submit" value="Update" class="btn btn-primary">
    </form:form>
</div>
</body>
</html>
