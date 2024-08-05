<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Login</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
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
      width: 350px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    td {
      padding: 10px 0;
    }

    input[type="text"],
    input[type="password"],
    input[type="submit"],
    .register-btn {
      width: 100%;
      padding: 12px;
      border: none;
      border-radius: 5px;
      margin-bottom: 15px;
      box-sizing: border-box;
      text-align: center;
      font-size: 16px;
    }

    input[type="text"],
    input[type="password"] {
      border: 1px solid #ccc;
    }

    input[type="submit"] {
      background-color: #ff69b4;
      color: #fff;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
      background-color: #ff1493;
    }

    .register-btn {
      background-color: #007bff;
      color: #fff;
      text-decoration: none;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .register-btn:hover {
      background-color: #0056b3;
    }

    .error {
      color: red;
      font-size: 14px;
      margin-bottom: 15px;
      text-align: center;
    }

    .title {
      text-align: center;
      font-size: 24px;
      margin-bottom: 30px;
    }
  </style>
</head>
<body>
<form name="loginForm" action="${pageContext.request.contextPath}/get" method="post">
  <div class="title">Login</div>
  <c:if test="${error eq 'true'}">
    <div class="error">${msg}</div>
  </c:if>

  <table>
    <tr>
      <td>User Name:</td>
      <td><input type="text" name="username" placeholder="Enter User Name"></td>
    </tr>
    <tr>
      <td>Password:</td>
      <td><input type="password" name="password" placeholder="Enter Password" /></td>
    </tr>
    <tr>
      <td colspan="2"><input type="submit" value="Login" /></td>
    </tr>
  </table>
  <p>If you are new please Register below!</p>
  <a href="reg" class="register-btn">Register</a>
</form>
</body>
</html>
