<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!" />
    </jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp" />
<div class="container">
    <h1>Please fill in your information.</h1>

    <%-- Display error message if username is unavailable --%>
    <% if (request.getParameter("error") != null && request.getParameter("error").equals("username")) { %>
    <div class="alert alert-danger" role="alert">
        This username is unavailable. Please choose a different username.
    </div>
    <% } else if (request.getParameter("error") != null && request.getParameter("error").equals("password")) { %>

    <%-- Display error message if passwords do not match --%>
    <div class="alert alert-danger" role="alert">
        Passwords do not match. Please enter the same password in both fields.
    </div>
    <% } %>

    <form action="/register" method="post">
        <div class="form-group">
            <label for="username">Username</label>
            <input id="username" name="username" class="form-control" type="text" required>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input id="email" name="email" class="form-control" type="text" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input id="password" name="password" class="form-control" type="password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&+=]).{4,}">
            <small id=“passwordRequirements” class=“form-text text-muted”>
                Password must be at least 4 characters long and contain at least one uppercase letter, one digit, and one special character (*).
            </small>
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Password</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password" required oninput="checkPasswordMatch">
        </div>
        <br>
        <input type="submit" class="btn btn-block">
    </form>
</div>
</body>
<script>
    function checkPasswordMatch(){
        let password = document.getElementById("password").value;
        let confirmPassword = document.getElementById("confirm_password").value;
        let passwordMatchError = document.getElementById("passwordMatchError");
        if( password !== confirmPassword){
            passwordMatchError.textContent = "Passwords don't match.";
        } else{
            passwordMatchError.textContent ="";
        }
    }
</script>
</html>