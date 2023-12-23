<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1 style="color: lime;">Player Login</h1>
<form action="playerlogin" method="post">
<h3>UserName:<input type="text" name="username"></h3>
<h3>Password:<input type="text" name="password"></h3>
<button>Login</button> <button type="reset">Cancel</button>
</form>
<a href="index.jsp"><button>Back</button></a>
</center>
</body>
</html>