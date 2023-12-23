<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
</head>
<body>
<center>
<h1 style="color: silver;">Choose Your Role</h1>
<form action="signup" method="post">
<input type="radio" name="role" value="Management">Management<br>
<input type="radio" name="role" value="Team">Team<br>
<input type="radio" name="role" value="Player">Player<br>
<button>Submit</button>
</form>
</center>
</body>
</html>