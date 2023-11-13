<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to Art-Lister!"/>
    </jsp:include>
</head>
<style>
    .page-wrapper {
        display: flex;
        flex-direction: column;
        min-height: 100dvh;
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
        position: absolute;
        top: 0;
        left: 0;
        z-index: -1;
        overflow: hidden;
        text-align: center;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .container.hero h1 {
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

<div class="page-wrapper position-relative">
    <div class="video-wrapper">
        <video autoplay loop muted playsinline class="back-video">
            <source src="media/pexels_videos_1970039%20(1080p).mp4" type="video/mp4">
        </video>
    </div>
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
    <div class="container flex-grow-1 d-flex flex-column justify-content-center hero">
        <div class="row">
            <div class="col d-flex flex-column align-items-center">
                <h1>Welcome to the Adlister</h1>
            </div>
        </div>
    </div>
</div>

</body>
</html>


