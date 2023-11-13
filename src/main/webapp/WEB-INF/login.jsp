<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <style>
        #btn:focus {
            outline: none;
        }
        #btn:active {
            transform: scale(0.98);
        }
    </style>
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1>Please Log In</h1>

    <%-- Display error message if password is incorrect --%>
    <% if (request.getParameter("error") != null && request.getParameter("error").equals("password")) { %>
    <div class="alert alert-danger" role="alert">
        Incorrect password. Please try again.
    </div>
    <% } %>

    <form action="/login" method="POST">
        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" class="form-control" value="${username}" required>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password"  required>
        </div>
        <input type="submit" id="btn" class="btn btn-primary btn-block" value="Log In">
    </form>
</div>
</body>
</html>