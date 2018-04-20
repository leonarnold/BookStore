<%--
  Created by IntelliJ IDEA.
  User: maier
  Date: 02.03.2018
  Time: 08:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
    <title class="modal-title">Login</title>
</head>
<body>
<h1>Login-Page</h1>

<h2>${error}</h2>
<form action="einloggen" method="post" class="form-inline">
    Loginname: <input type="text" name="loginname" placeholder="Name" class="form-control">
    Passwort: <input type="password" name="password" placeholder="Passwort" class="form-control">
    <input type="submit" value="Einloggen" class="btn-success"/>
</form>

<a href="registrieren" class="btn btn-success"> Registrieren </a>

<script src="webjars/jquery/3.3.1/jquery.min.js" ></script>
<script src="webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>


</body>
</html>
