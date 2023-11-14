

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Your Profile" />
  </jsp:include>
  <style>

    .container {
      margin-top: 50px;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
    }

    h1, h3 {
      color: #333;
      font-family: Arial, sans-serif;
      text-align: center;
    }

    p {
      color: #667;
      font-family: Arial, sans-serif;
    }

    .col-6 {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      margin: 20px auto;
      padding: 20px;
      background-color: #f5f5f5;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    .button-group {
      display: flex;
      justify-content: center;
      margin-top: 20px;
    }

    .button-group form {
      display: flex;
      align-items: center;
      justify-content: center;
      margin: 0 10px;
    }

    .button-group button {
      background-color: #337ab7;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-family: Arial, sans-serif;
      font-size: 16px;
      transition: background-color 0.3s ease;
      width: 150px;
    }

    .button-group button:hover {
      background-color: #286090;
    }
  </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<body>
<div class="container">
  <h1>Ad Details</h1>
  <div class="col-md">
    <h1>${ad.title}</h1>
    <h3>${ad.description}</h3>
    <div class="button-group">

<%--      Edit Profile Ad--%>
      <form action="/ads/edit" method="get">
        <input type="hidden" name="id" value="${ad.id}">
        <button>Edit</button>
      </form>

<%--  Delete Profile Ad---%>
      <form action="/ads/delete" method="post">
        <input type="hidden" name="id" value="${ad.id}">
        <button>Delete</button>
      </form>
    </div>
  </div>
</div>
</body>
</html>

