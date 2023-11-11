<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <style>
        .container {
            margin-top: 50px;
            text-align: center;
        }

        h1 {
            color: #333;
            font-family: Arial, sans-serif;
        }

        form {
            margin-top: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        label {
            display: block;
            font-weight: bold;
            font-family: Arial, sans-serif;
            margin-bottom: 5px;
        }

        input[type="text"],
        textarea {
            padding: 10px;
            font-size: 16px;
            border-radius: 5px;
            border: 1px solid #ccc;
            width: 1000px;
        }

        input[type="submit"] {
            display: inline-block;
            background-color: #337ab7;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-family: Arial, sans-serif;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #286090;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
<h1>Edit Ad</h1>
<form action="/ads/edit" method="post">
    <div class="form-group">
    <input type="hidden" name="id" value="${ad.id}">
    </div>
    <div>
        <label for="title">Title:</label>
        <input type="text" name="title" id="title" value="${ad.title}">
    </div>
    <div class="form-group">
        <label for="description">Description:</label>
        <textarea name="description" id="description">${ad.description}</textarea>
    </div>
    <input type="submit" id="btn" class="btn btn-block btn-primary">
</form>
</div>
</body>
</html>
