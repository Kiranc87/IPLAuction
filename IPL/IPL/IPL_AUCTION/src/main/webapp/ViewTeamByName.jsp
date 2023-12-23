<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
<form action="fetchusingteamname">
Select Team:
<select name="teamname">
<c:forEach var="team" items="${team}">
<option value="${team.getTeamname()}">${team.getTeamname()}</option>
</c:forEach>
</select>
<button>Search</button>
<a href="TeamHome.jsp"><button>Back</button></a>
</form>
</body>
</html>