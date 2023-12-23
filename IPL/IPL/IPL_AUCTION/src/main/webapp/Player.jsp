<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
   <%@ taglib prefix="x" uri="http://www.springframework.org/tags/form"%><%--Spring mvc x tag --%>
    
<!DOCTYPE html>
<html>
<style>
#a01{
            background-image: url(https://wallpapercave.com/wp/wp4789782.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
         .j1
      {
        width: 180px;
        height: 25px;
        border-radius: 10px;
        background-color:transparent;
        border-color:aqua;
        font-size: 15px;
        font-weight: bold;
        color:white;
      }
     .j2
      {
        width: 80px;
        height: 25px;
        border-radius: 10px;
        background-color:transparent;
        font-size: 15px;
        color:black;
        font-weight: bold;
      }
      
</style>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="a01">
<center>
<h1 style="color:olive;">Player Signup</h1><br>
<x:form action="playersignup" modelAttribute="player" method="post" >
<h2>Player Name:<x:input path="name" cssClass="j1"/></h2>
<h2>Player Photo:<x:input path="photo"/></h2>
<h2>Player Viedio:<x:input path="playerviedio"/></h2>
<h2>Role: </h2>
<x:select path="role">
<x:option value="Batsman">BatsMan</x:option>
<x:option value="Bowler">Bowler</x:option>
<x:option value="AllRounder">All Rounder</x:option>
<x:option value="Wicketkeeper">Wicket keeper</x:option>
</x:select>
<h2>Country: <x:input path="country"/></h2>
<h2>Base Price: <x:input path="price"/></h2>
<h2>Username: <x:input path="username"/></h2>
<h2>Password: <x:input path="password"/></h2>
<x:button>Save</x:button> <button type="reset">Cancel</button>
</x:form>
<br>
<a href="index.jsp"><button>Back</button></a>
</center>
</div>
</body>
</html>