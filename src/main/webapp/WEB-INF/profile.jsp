<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <style>
        .container {
            margin-top: 50px;
            text-align: center;
        }

        h1, h2, h3 {
            color: #333;
            font-family: Arial, sans-serif;
        }
        h1{
            font-size: 60px;
        }
        p {
            color: #666;
            font-family: Arial, sans-serif;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        th {
            background-color: #f5f5f5;
        }

        a {
            text-decoration: none;
            color: #337ab7;
        }

        a:hover {
            text-decoration: underline;
        }

        form {
            display: inline-block;
            margin-top: 20px;
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
        .user-info {
            margin-bottom: 100px;
        }

        .user-info p {
            margin: 5px;
        }

    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>

    <c:if test="${not empty ads}">
        <h2>Your Ads:</h2>
        <table class="table">
            <thead>
            <tr>
                <th>Title</th>
                <th>Description</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="ad" items="${ads}">
                <tr>
                    <td><a href="/ads/detail?id=${ad.id}">${ad.title}</a></td>
                    <td>${ad.description}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>
    <h3> <a href="/ads/create">Click here to create a new ad!</a></h3>

    <div class="user-info">
        <p>Username: ${sessionScope.user.username}</p>
        <p>Email: ${sessionScope.user.email}</p>
    </div>
<%--    edit profile--%>
    <button><a href="/editprofile">Edit Profile</a></button>

</div>

</body>
</html>
