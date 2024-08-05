<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 17-04-2024
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleted</title>
    <style>
        h4{
            color: brown;
            text-align: center;
        }
        .button{
            text-align: center;
        }
        .form-group{
            text-align: center;
        }
        .card-title{
            text-align: center;
        }
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<%--        <form action="form" method="get">--%>
<%--           Enter your id to delete:--%>
<%--            <input type="number" name="id"/><br><br>--%>
<%--            <input type="submit" value="Delete"/>--%>
<%--        </form>--%>
        <div class="container mt-5">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title">Delete a record</h2>
                    <form action="form">
                        <div class="form-group">
                            <label >Enter id to Delete</label>
                            <input type="number" name="id" class="form-control" required>
                        </div>
                        <div class="button">
                            <button type="submit" class="btn btn-primary">Delete</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
</body>
</html>
