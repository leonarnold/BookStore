<%--
  Created by IntelliJ IDEA.
  User: maier
  Date: 23.03.2018
  Time: 09:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Bücherliste</title>
</head>
<body>
<h1>Bücherliste</h1>
Ihre Bücher sind:
<table>
    <c:forEach var="book" items="${books}">
        <tr>
            <td>${book.id}</td>
            <td>${book.isbn}</td>
            <td>${book.titel}</td>
            <td>${book.autor}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
