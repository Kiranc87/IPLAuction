<%@page import="java.util.List"%>
<%@page import="IPL_AUCTION.Dto.Team"%>
<%@ page language="java" contentType="text/html; chartet=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta chartet="ISO-8859-1">
<title>View All Team</title>
<style >
#a01{
            background-image: url(https://img.freepik.com/free-vector/abstract-design-background_1048-8430.jpg?w=2000);
            background-repeat: no-repeat;
            background-size: cover;
        }
        .a21{
        color: olive;
        font-size: 20px
        }
        .a22{
        color: red;
        font-size: 20px
        }
        .a23{
        border-radius: 10px;
        background-color:transparent;
        color: black;
font-size: 20px        }
        .a24{
        color: black;
        font-size: 20px
        }
</style>
</head>
<body>
<center>
<div id="a01">
<h1 style="color: black;" font-size: 50px">List of All Team</h1>


	<table border="2px">
		<tr class="a22">
			<th>Id</th>
			<th>Team Name</th>
			<th>Team Profile</th>
			<th>Status</th>
			<th>Wallet</th>
			<th>Players</th>
			<th>Change Status</th>
			<th>Add Amount</th>
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
		<tr class="a24">
			<c:forEach var="t" items="${list}">
			<td class="a24">${t.getId()}</td>
			<td class="a24">${t.getTeamname()}</td>
			<td ><img alt="" height="150px" width="150px" src="${t.getImagelink()}"></td>
			<td class="a24">${t.isStatus()}</td>
			<td class="a24">${t.getWallet()}</td>
			<td><a href="viewplayers?id=${t.getId()}"><button class="a23">View Players</button></td>
			<td><a href="changestatus?id=${t.getId()}"><button class="a23">Change Status</button></td>
			<td><a href="AddAmount.jsp?id=${t.getId()}"><button class="a23">Add Amount</button></td>
		</tr>
		</c:forEach>
	</table>
	<a href="ManagementHome.jsp" class="a21">Back</a>
	<pre>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	</pre>
	</div>
	</center>
</body>
</html>