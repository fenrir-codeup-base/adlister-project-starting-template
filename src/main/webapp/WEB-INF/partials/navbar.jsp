<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <%-- Check if user is logged in --%>
            <c:if test="${sessionScope.user == null}">
                <!-- Display registration and login links -->
                <li><a href="/register">Registration</a></li>
                <li><a href="/login">Login</a></li>
            </c:if>
            <c:if test="${sessionScope.user != null}">
                <!-- Display logout link -->
                <li><a href="/logout">Logout</a></li>
            </c:if>
        </ul>
    </div><!-- /.navbar-collapse -->
</nav>