<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 10-05-2024
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            max-width: 90%; /* Adjusted to make it more responsive */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        td {
            padding: 10px 0;
        }

        input[type="text"],
        input[type="password"],
        button {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 15px;
            box-sizing: border-box;
            font-size: 16px;
            transition: border-color 0.3s; /* Added for smoother transition */
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #007bff; /* Changed focus border color */
            outline: none; /* Removed default focus outline */
        }

        button {
            background-color: #007bff;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }

        h3 {
            text-align: center;
            color: #4CAF50;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
<h3>User Registration Form</h3>
<%--@elvariable id="user" type=""--%>
<form:form action="saveAdmin" modelAttribute="user" method="post">
    <table>
        <tr>
            <td>Enter Id</td>
            <td><form:input path="id"/></td>
        </tr>
        <tr>
            <td>Enter UserName</td>
            <td><form:input path="username"/></td>
        </tr>
        <tr>
            <td>Enter Password</td>
            <td><form:input path="password"/></td>
        </tr>
    </table>
    <button type="submit">Register</button>
</form:form>
</body>
</html>
