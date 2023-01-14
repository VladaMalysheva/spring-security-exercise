<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: prost
  Date: 14.01.2023
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
  <style>
    .failed {
      color: red
    }
  </style>
</head>
<body>
<h3>My custom login page</h3>
<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="post">
  <c:if test="${param.error != null}">
    <i class="failed">Sorry, you entered wrong login or password! Try again</i>
  </c:if>
  <p>
  <input name="username" type="text">
  </p>
  <p>
    <input name="password" type="password">
  </p>
  <input type="submit" value="Login"/>
</form:form>
</body>
</html>
