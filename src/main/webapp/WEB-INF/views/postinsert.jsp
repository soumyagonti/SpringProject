<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 17-04-2024
  Time: 10:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Mobile Details</title>
    <style>
        h3
        {
            text-align: center;
            color: darkolivegreen;
        }
    </style>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h3>Newly Inserted Record of Mobile</h3>

<table class="table table-hover">
    <thead>
    <tr>
        <th scope="col">Id</th>
        <th scope="col">Name</th>
        <th scope="col">Color</th>
        <th scope="col">Price</th>
        <th scope="col">Image</th>
        <th scope="col">Description</th>
    </tr>
    </thead>
    <tbody>
        <tr>
            <td>${jew.id}</td>
            <td >${jew.name}</td>
            <td>${jew.color}</td>
            <td>${jew.price}</td>
            <td><img src="${jew.getImage()}"></td>
            <td>${jew.description}</td>
        </tr>
    </tbody>
</table>
</body>
</html>
