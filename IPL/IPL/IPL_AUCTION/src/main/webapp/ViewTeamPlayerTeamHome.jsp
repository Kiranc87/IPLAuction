<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#a01 {
	background-image: url('${p.getTeam().getImagelink}');
	background-repeat: no-repeat;
	background-size: cover;
	margin-bottom: 100px;
}

.a22 {
	color: blue;
	font-size: 20px
}

.a24 {
	color: black;
	font-size: 20px
}
</style>
</head>
<body>
	<center>
		<div id="a01">
			<pre>






</pre>
			<h1 style="color: orange;">${teamname}PLAYERS</h1>
			<%
			String msg = (String) request.getAttribute("msg");
			%>
			<%
			if (msg != null) {
			%>
			<h1>${msg }</h1>
			<%
			} else {
			%>
			<table border="2px">
				<tr class="a22">
					<th>Name</th>
					<th>Role</th>
					<th>Photo</th>
					<th>Viedio</th>
					<th>Country</th>
					<th>Price</th>
				</tr>
				<c:forEach var="p" items="${players}">
					<tr class="a24">
						<td class="a24">${p.getName()}</td>
						<td class="a24">${p.getRole()}</td>
						<td class="a24"><img alt="" height="150px" width="150px"
							src="${p.getPhoto()}"></td>
							<td><iframe width="250" height="150"
						src="${p.getPlayerviedio()}" title="YouTube video player"
						frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						allowfullscreen></iframe></td>
						<td class="a24">${p.getCountry()}</td>
						<td class="a24">${p.getPrice()}</td>
				</c:forEach>
				</tr>
			</table>
			<br>
			<%
			}
			%>
			<a href="viewteam"><button>Back</button></a>
			<pre>
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      </pre>
	</center>

	</div>
</body>
</html>