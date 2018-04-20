<%--
  Created by IntelliJ IDEA.
  User: maier
  Date: 09.03.2018
  Time: 09:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User registration</title>

</head>
<body>
<form method="post" action="registrieren" class="form-inline">
    Benutzername:<input type="text" name="username" class="form-control">
    Passwort:<input type="password" name="password" class="form-control">

    <input type="submit" value="Registrieren" class="btn btn-success">
</form>

<script src="webjars/jquery/3.3.1/jquery.min.js" ></script>
<script src="webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
<link href="webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">

</body>
</html>
