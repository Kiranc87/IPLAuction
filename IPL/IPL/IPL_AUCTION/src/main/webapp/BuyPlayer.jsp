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
<h1>Available Players</h1>
<table border="2px">
<tr>
<th>Id</th>
<th>Name</th>
<th>Photo</th>
<th>Role</th>
<th>Price</th>
<th>Buy</th>
<th>Add</th>
<th>Sub</th>
</tr>
<c:forEach var="p" items="${players}">
<tr>
<td>${p.getId()}</td>
<td>${p.getName()}</td>
<td><img alt="" height="100px" width="100px" src="${p.getPhoto()}"></td>
<td>${p.getRole()}</td>
<td>${p.getPrice()}</td>
<td><a href="buyplayers?id=${p.getId()}"><button>Buy</button></a></td>
<td><a href="add?id=${p.getId()}"><button>add</button></a></td>
<td><a href="sub?id=${p.getId()}"><button>sub</button></a></td>
</tr>
</c:forEach>
</table>
</body>
</html>