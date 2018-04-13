<%--
  Created by IntelliJ IDEA.
  User: maier
  Date: 13.04.2018
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Neues Buch</title>
</head>
<body>
<p>neues Buch erstellen:</p>

<form method="post" action="addBooks.do">
    Titel:<input type="text" name="titel" /><br>
    Autor:<input type="text" name="autor" /><br>
    ISBN:<input type="text" name="isbn" /><br>
    <input type="submit" value="Speichern">
</form>
</body>
</html>
