<!DOCTYPE html>
<html>
<head>
    <title>Products|Home</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        nav.navbar {
            height: 100px;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
        }
        body {
            background-image: url("https://www.madebymary.com/cdn/shop/articles/MBM.banner_3e007c2f-0a83-4f2e-b5ae-0c78dfc1e382.png?v=1661315100");
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .navbar-brand {
            font-size: 24px;
            font-weight: bold;
        }

        .navbar-toggler-icon {
            background-color: #fff;
        }

        .navbar-nav .nav-link {
            color: #fff;
            margin-right: 15px;
        }

        .navbar-nav .nav-link:hover {
            color: #ccc;
        }

        a[href="reg"] {
            color: #fff;
            margin-left: 15px;
        }

        a[href="reg"]:hover {
            color: #ccc;
        }
        /* Custom styles for positioning buttons */
        .top-right-buttons {
            position: absolute;
            top: 20px;
            right: 20px;
        }
        .btn-out {
            background-color: #c82333; /* Change to desired color */
            border-color: #c82333; /* Change border color if needed */
            color: #fff; /* Change text color */
        }

        .btn-out:hover {
            background-color: #a8182f; /* Change to desired color on hover */
            border-color: #a8182f; /* Change border color on hover if needed */
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#">Jewellery.com</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="get">Jewelleries</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="insert">Add product</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="find">Search</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="updateStarter">Update</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="delete">Delete</a>
            </li>
        </ul>
        <a href="reg">Add Admin</a>
    </div>
    <div class="top-right-buttons">
        <a href="/SpringJdbc_war_exploded/out" class="btn btn-out">Logout</a>
    </div>
</nav>
</body>
</html>
