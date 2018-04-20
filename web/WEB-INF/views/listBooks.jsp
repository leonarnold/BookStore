<%--
  Created by IntelliJ IDEA.
  User: maier
  Date: 23.03.2018
  Time: 09:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../common/header.jsp"%>
<%@include file="../common/navigation.jsp"%>
<html>
<head>
    <title>Bücherliste</title>
</head>
<body>
<h1>Bücherliste</h1>
<table class="table table-striped">
    <caption>Ihre Bücher sind:</caption>
    <c:forEach var="book" items="${books}">
        <tr>
            <td>${book.id}</td>
            <td>${book.isbn}</td>
            <td>${book.titel}</td>
            <td>${book.autor}</td>
            <td><a href="deleteBooks.do?id=${book.id}" class="btn btn-danger">Löschen</a></td>
        </tr>
    </c:forEach>
</table>

<a href="addBooks.do" class="btn btn-success">Neu</a>

<script src="webjars/jquery/3.3.1/jquery.min.js" ></script>
<script src="webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>


</body>
</html>
