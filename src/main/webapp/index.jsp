<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to Art-Lister!"/>
    </jsp:include>
</head>
<style>

    * {
        box-sizing: border-box;
    }

    video {
        object-fit: cover;
        position: absolute;
        top: 0;
        left: 0;
        height: 100%;
        width: 100%;

    }

    .video-wrapper {
        width: 100%;
        height: 100vh;
        position: relative;
        overflow: hidden;
        text-align: center;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    ul.nav {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        padding: 10px;
        z-index: 2;
        list-style: none;
        text-align: right;
    }

    ul.nav li {
        display: inline;
        margin-right: 20px;
    }

    ul.nav a {
        text-decoration: none;
        color: #fff;
        font-size: 18px;
        font-weight: 400;
    }

    .header{
        font-size: 18px;
        font-weight: 400;
        position: relative;
        color: white;
        text-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;
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
</style>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="video-wrapper">
    <video autoplay loop muted playsinline class="back-video">
        <source src="media/pexels_videos_1970039%20(1080p).mp4" type="video/mp4">
    </video>
    <div class="header">
        <h1>Welcome to the Art-Lister!</h1>
    </div>
</div>

</body>
</html>


