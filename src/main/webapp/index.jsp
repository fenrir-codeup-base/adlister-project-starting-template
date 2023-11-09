<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<style>
    * {
        box-sizing: border-box;
    }


    .container {
        /*background-color: #337ab7;*/
        background-image: url("");
        width: 100vw;
        height: 100vh;
        background-repeat: no-repeat;
        background-size: cover;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    h1, h3 {
        color: #337ab7;
        margin: 0;
        padding: 20px;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
    }
    h1 {
        font-size: 50px;
    }
</style>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1>Welcome to the Adlister!</h1>
    <h3><a href="/register">Click here to become a Member!</a></h3>
    <h3><a href="/login">Click here to Login</a></h3>
</div>
</body>
</html>
