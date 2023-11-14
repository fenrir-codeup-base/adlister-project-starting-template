
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Profile</title>
</head>
<jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Edit Profile" />
</jsp:include>
<style>
    * {
        box-sizing: border-box;
    }
    .container {
        margin-top: 50px;
        text-align: center;
    }
    .form-group {
        margin-bottom: 15px;
    }
    .form-control {
        display: block;
        width: 100%;
        padding: 10px 16px;
        font-size: 18px;
        line-height: 1.3333333;
        color: #555;
        background-color: #fff;
        background-image: none;
        border: 1px solid #ccc;
        border-radius: 4px;
        transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    }
    .btn {
        background-color: #337ab7;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-family: Arial, sans-serif;
        font-size: 16px;
        transition: background-color 0.3s ease;
        width: 150px;
    }

    .btn:hover {
        background-color: #286090;
    }
    .btn:focus{
        transform: scale(0.98);
    }
</style>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Edit Profile Details</h1>
    <form action="/editprofile" method="post">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" value="${user.username}" class="form-control">
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="${user.email}" class="form-control">
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" class="form-control">
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Password</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password">
        </div>
        <input type="submit" class="btn btn-block">
    </form>
</div>

</body>
</html>
