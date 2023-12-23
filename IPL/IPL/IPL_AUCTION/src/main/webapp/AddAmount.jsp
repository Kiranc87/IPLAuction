<%@page import="IPL_AUCTION.Dto.Team"%>
<%@page import="IPL_AUCTION.Dao.TeamDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
#a01{
            background-image: url(https://thumbs.dreamstime.com/b/beautiful-modern-simple-dark-blue-abstract-background-presentation-design-corporate-business-institution-modern-simple-173847662.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
        .j2
      {
        width: 80px;
        height: 25px;
        border-radius: 10px;
        background-color:transparent;
        font-size: 20px;
        color:rgb(34, 30, 30);
      }
      .j1
      {
        width: 180px;
        height: 30px;
        border-radius: 10px;
        background-color:transparent;
        font-size: 20px;
        color:rgb(34, 30, 30);
      }
</style>
</head>
<body>
<% int id=Integer.parseInt(request.getParameter("id"));%>
<%TeamDao dao=new  TeamDao();
Team team=dao.findById(id);%>
<form action="addamount">
<center>
<div id="a01">
<h2 style="color: black; font-size: 35px">Before the amount present in the team is <%=team.getWallet() %></h2><br>
<form action="addamount">
<input type="text" name="id" value="<%=id%>" hidden="hidden">
<h2 style="color: fuchsia; font-size: 30px">Add Amount:<input type="number" name="amount" class="j1"></h2><br>
<button class="j2">Add</button> <button type="reset" class="j2">Cancel</button><br><br>
</form>
  <a href="viewallteam" ><buttonclass="j2">Back</button></a>
  <pre>
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  </pre>
  </div>
  </center>
</body>
</html>