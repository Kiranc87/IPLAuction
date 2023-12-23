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
<h1>List of All Team</h1>


	<table border="2px">
		<tr>
			<th>Id</th>
			<th>Team Name</th>
			<th>Team Profile</th>
			<th>Wallet</th>
			<th>Players</th>
		</tr>
		<%--
	List<Team> list = (List<Team>) request.getAttribute("litt");
	%>
		<%
		for (Team t : list) {
		%>
		<tr>
			<td><%=t.getId()%></td>
			<td><img alt="" src="<%=t.getImagelink()%>"></td>
			<td><%=t.getTeamname()%></td>
			<td><%=t.getWallet()%></td>
			<td><%=t.getPlayers()%></td>
			<td><%=t.isStatus()%></td>
			<td><a href="viewPlayer"><button>View Player</button></a></td>
		</tr>
		<%
		}
		--%>
		<tr>
			<c:forEach var="t" items="${list}">
			<td>${t.getId()}</td>
			<td>${t.getTeamname()}</td>
			<td><img alt="" height="150px" width="150px" src="${t.getImagelink()}"></td>
			<td>${t.getWallet()}</td>
			<td><a href="viewplayersteamhome?id=${t.getId()}"><button>View Players</button></td>
		</tr>
		</c:forEach>
	</table>
	<a href="TeamHome.jsp">Back</a>
</body>
</html>