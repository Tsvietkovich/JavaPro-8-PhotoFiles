<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 28.10.2017
  Time: 23:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Photolist</title>
</head>
<body>
<div align="center">
    <h1>The list of all photos</h1>

    <form action="/deleteselected" method="POST">
    <table border="2" width="70%" cellpadding="2">
        <tr><th>Id</th><th>Photo</th><th>Delete</th></tr>
            <c:forEach items="${ids}" var="id">
            <tr>
                <td>Photo ID: ${id}</td>
                <td><img src="/photo/${id}"></td>
                <td><input type="checkbox" name="photo_id" value="${id}"></td>
            </tr>
            </c:forEach>
    </table>
    <br/><input type="submit" value="Delete selected"/>
    </form>
    <input type="submit" value="Return to the first page" onclick="window.location='/';" />
</div>
</body>
</html>
