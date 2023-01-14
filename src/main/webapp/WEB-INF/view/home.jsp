<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: prost
  Date: 14.01.2023
  Time: 13:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
Home
<hr>
<p>
    User: <security:authentication property="principal.username"/>
    <br><br>
    Role(s): <security:authentication property="principal.authorities"/>
</p>
<hr>
<security:authorize access="hasRole('MANAGER')">
<p>
    <a href="${pageContext.request.contextPath}/leaders">Leadership meeting</a> Only for managers
    <hr>

</security:authorize>
<security:authorize access="hasRole('ADMIN')">
<p>
    <a href="${pageContext.request.contextPath}/systems">Systems meeting</a> Only for admins
</security:authorize>
</p>
<form:form action="${pageContext.request.contextPath}/logout" method="post">
    <input type="submit" value="Log out"/>
</form:form>

</body>
</html>
