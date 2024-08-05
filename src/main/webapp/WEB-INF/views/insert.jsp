<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 16-04-2024
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Insert</title>
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
            color: darkolivegreen;
            margin-bottom: 30px;
        }

        label {
            display: inline-block;
            width: 150px;
            margin-bottom: 10px;
            color: #333;
        }

        input[type="text"],
        input[type="file"] {
            width: calc(100% - 170px);
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            display: block;
            margin: 0 auto;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .error {
            color: brown;
        }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h3>Inserting Jewellery</h3>
    <%--@elvariable id="jewellery" type=""--%>
    <form:form modelAttribute="jewellery" action="saved" method="post">
        <label for="id">Jewellery Id:</label>
        <form:input path="id"/>
        <form:errors path="id" cssClass="error"/><br>

        <label for="name">Jewellery Name:</label>
        <form:input path="name"/>
        <form:errors path="name" cssClass="error"/><br>

        <label for="color">Jewellery Color:</label>
        <form:input path="color"/>
        <form:errors path="color" cssClass="error"/><br>

        <label for="price">Jewellery Price:</label>
        <form:input path="price"/>
        <form:errors path="price" cssClass="error"/><br>

        <label >Upload address of Image:</label>
        <input type="text" name="image"/><br>

        <label for="description">About:</label>
        <form:input path="description"/><br>

        <input type="submit" value="Insert Here">
    </form:form>
</div>
</body>
</html>
