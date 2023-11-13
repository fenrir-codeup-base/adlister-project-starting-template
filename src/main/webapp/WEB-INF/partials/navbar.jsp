<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar justify-content-start">
            <a class="navbar-brand" href="/index.jsp">Home</a>
            <a class="navbar-brand" href="/ads">Art-lister</a>
            <ul class="nav justify-content-end">

                <%-- Check if user is logged in --%>
                <c:if test="${sessionScope.user == null}">

                    <!-- Display registration and login links -->
                    <li class="nav-item">
                        <a class="nav-link" href="/register">Registration</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/login">Login</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.user != null}">

                    <!-- Display logout link -->
                    <li class="nav-item">
                        <a class="nav-link" href="/profile">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/logout">Logout</a>
                    </li>
                </c:if>
            </ul>
        </div>