<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
#a01{
            background-image: url(https://img.freepik.com/free-vector/blue-pink-halftone-background_53876-99004.jpg?w=2000);
            background-repeat: no-repeat;
            background-size: cover;
        }
        .a21{
        color: olive;
        font-size: 20px
        }
        .a22{
        color: aqua;
        font-size: 20px
        }
        .a23{
        border-radius: 5px;
        background-color:transparent;
        color: black;
font-size: 15px        }
        .a24{
        color: black;
        font-size: 20px
        }
</style>
</head>
<body>
<center>
<div id="a01">
<h1 style="color: black;" font-size: 50px">List of All Players</h1>

	<table border="2px">
		<tr class="a22">
			<th>Id</th>
			<th>Player Name</th>
			<th>Photo</th>
			<th>Role</th>
			<th>Country</th>
			<th>Status</th>
			<th>Price</th>
			<th>Change Status</th>
		</tr>
		<tr>
			<c:forEach var="p" items="${players}">
			<td class="a24">${p.getId()}</td>
			<td class="a24">${p.getName()}</td>
			<td class="a24"><img alt="" height="150px" width="150px" src="${p.getPhoto()}"></td>
			<td class="a24">${p.getRole()}</td>
			<td class="a24">${p.getCountry()}</td>
			<td class="a24">${p.getStatus()}</td>
			<td class="a24">${p.getPrice()}</td>
			<td><a href="changeplayerstatus?id=${p.getId()}"><button class="a23">Change Status</button></td>	
		</tr>
		</c:forEach>
	</table>
	<a href="ManagementHome.jsp " class="a21">Back</a>
	<pre>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	</pre>
	</div>
	</center>
</body>
</html>