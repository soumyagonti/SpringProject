<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Form</title>
    <style>
        h2{text-align: center;color: darkolivegreen}
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        #form-container {
            width: 400px; /* Adjust width as needed */
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        table input[type="text"],
        table select {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box; /* Ensures padding and border are included in the width */
        }

        table button[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        table button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h2>Delivery Address</h2>
<div id="form-container">
    <%--@elvariable id="address" type=""--%>
    <form:form action="saving" method="post" modelAttribute="address">
        <table>
            <tr>
                <td><label>Name:</label></td>
                <td><form:input path="name" /></td>
            </tr>
            <tr>
                <td><label>Mobile:</label></td>
                <td><form:input path="number" /></td>
            </tr>
            <tr>
                <td><label>H.no:</label></td>
                <td><form:input path="house" /></td>
            </tr>
            <tr>
                <td><label>Street/Village:</label></td>
                <td><form:input path="street" /></td>
            </tr>
            <tr>
                <td><label>Mandal:</label></td>
                <td><form:input path="mandal" /></td>
            </tr>
            <tr>
                <td><label>District:</label></td>
                <td><form:input path="district" /></td>
            </tr>
            <tr>
                <td><label>State:</label></td>
                <td><form:input path="state" /></td>
            </tr>
            <tr>
                <td><label>Pincode:</label></td>
                <td><form:input path="pincode" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit" class="btn btn-info">₹Pay</button>
                </td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>
