
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
<form action="/deletead" method="POST">
  <h1>Ad Deleted</h1>
  <br>
  <input type="submit" class="btn btn-block" value="Return to Profile">
</form>
</body>
</html>

