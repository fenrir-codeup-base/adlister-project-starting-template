<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to Art-Lister!" />
    </jsp:include>
</head>
<style>
    * {
        box-sizing: border-box;
    }

    html {
        /*color: whitesmoke;*/
        /*background-colo: #B2B6BB;*/
        /*z-index: 0;*/
        /*background: linear-gradient(300deg, #f1f1f6, #aaaaad, #ffffff);*/
        /*background-size: contain;*/
        /*animation: gradient-animation 3s ease infinite;*/
        /*height: 100vh;*/
        /*color: #161B33;*/
    }
    /*//Animated video*/

    .back-video {
        position: absolute;
        right: 0;
        /*bottom: 0px;*/
        z-index: 1;
    }

    .container {
        /*background video*/
        /*background: linear-gradient(300deg, #f1f1f6, #aaaaad, #ffffff);*/
        /*background-size: contain;*/
        /*animation: gradient-animation 3s ease infinite;*/
        /*height: 100vh;*/

        /*-----*/

        /*color: whitesmoke;*/
        /*background-color: #337ab7;*/
        /*background-image: url("");*/
        /*width: 100vw;*/
        /*height: 100vh;*/
        /*background-repeat: no-repeat;*/
        /*background-size: cover;*/
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    h1, h3 {
        color: whitesmoke;
        margin: 10px;
        padding: 10px;
        text-shadow: 4px 4px 8px rgba(0, 0, 0, 0.5);
        z-index: 2;
    }
    h1 {
        font-size: 90px;
    }
    h3 {
        font-size: 40px;
        color: #ffffff;
    }
    /*a {*/
    /*    text-decoration: unset;*/
    /*}*/
</style>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<video autoplay loop muted playsinline class="back-video">
    <source src="media/pexels_videos_1970039%20(1080p).mp4" type="video/mp4">
</video>
<div class="container">
    <h1>Welcome to the Art-Lister!</h1>
<%--    <h3><a href="/register">Click here to become a Member!</a></h3>--%>
<%--    <h3><a href="/login">Click here to Login</a></h3>--%>
</div>
</body>
</html>


