<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="update">
<h2>Player Id:<input type="text" name="id" value="${player.getId()}" readonly="true"></h2>
<h2>Player Name:<input type="text" name="name" value="${player.getName()}"></h2>
<h2>Before Role:<input type="text" value="${player.getRole()}" readonly="true"></h2>
<h2>Role: </h2>
<select name="role"}">
<option value="Batsman">BatsMan</option>
<option value="Bowler">Bowler</option>
<option value="AllRounder">All Rounder</option>
<option value="Wicketkeeper">Wicket keeper</option>
</select>
<h2>Country: <input type="text" name="country" value="${player.getCountry()}"></h2>
<h2>Base Price: <input type="text" name="price" value="${player.getPrice()}"></h2>
<button>Edit</button> <button type="reset">Cancel</button>
</form>
<a href=PlayerHome.jsp><button>Back</button></a>
</body>
</html>