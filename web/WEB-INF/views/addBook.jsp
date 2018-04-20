<%--
  Created by IntelliJ IDEA.
  User: maier
  Date: 13.04.2018
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/header.jsp"%>
<%@include file="../common/navigation.jsp"%>
<html>
<head>
    <title>Neues Buch</title>
</head>
<body>
<h1>Neues Buch erstellen:</h1>

<form method="post" action="addBooks.do" class="form-inline">
    Titel:<input type="text" name="titel" class="form-control" /><br>
    Autor:<input type="text" name="autor" class="form-control" /><br>
    ISBN:<input type="text" name="isbn" class="form-control" /><br>
    <input type="submit" value="Speichern" class="btn-success">
</form>


<script src="webjars/jquery/3.3.1/jquery.min.js" ></script>
<script src="webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

</body>
</html>
