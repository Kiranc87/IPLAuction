<%@page import="IPL_AUCTION.Dao.PlayerDao"%>
<%@page import="IPL_AUCTION.Dto.Player"%>
<%@page import="java.util.List"%>
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
	<h1>View Player Team</h1>
	<table border="2px">
		<tr>
			<th>Player Id</th>
			<th>Player Name</th>
			<th>Player Photo</th>
			<th>Player Viedio</th>
			<th>Player Price</th>
			<th>Player Team</th>
			<th>Player Team photo</th>
			<th>Player Status</th>
		</tr>
		<tr>
			<c:forEach var="p" items="${player}">
				<td>${p.getId()}</td>
				<td>${p.getName()}</td>
				<td><img alt="" height="150px" width="150px"
					src="${p.getPhoto()}"></td>
				<td><iframe width="250" height="150"
						src="${p.getPlayerviedio()}" title="YouTube video player"
						frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						allowfullscreen></iframe></td>
				<td>${p.getPrice()}</td>
				<td>${p.getTeam().getTeamname()}</td>
				<td><img alt="" height="150px" width="150px"
					src="${p.getTeam().getImagelink()}"></td>
				<td>${p.getStatus()}</td>
			</c:forEach>
		</tr>
	</table>
	<a href=PlayerHome.jsp><button>Back</button></a>
</body>
</html>