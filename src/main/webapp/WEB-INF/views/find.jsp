<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 17-04-2024
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Finding</title>
    <style>
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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
        <div class="container mt-5">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title">Search a record</h2>
                    <form action="findform">
                        <div class="form-group">
                            <label >Enter id to Search</label>
                            <input type="number" name="id" class="form-control" required>
                        </div>
                        <div class="button">
                            <button type="submit" class="btn btn-primary">Search</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
</body>
</html>
