<%--
  Created by IntelliJ IDEA.
  User: jeremiahmatthews
  Date: 11/9/23
  Time: 10:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>deleted</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<form action="/deleteUser" method="POST">
    <h1>Profile Deleted</h1>
    <br>
    <input type="submit" class="btn btn-primary btn-block" value="Return to Login">
</form>
</body>
</html>
