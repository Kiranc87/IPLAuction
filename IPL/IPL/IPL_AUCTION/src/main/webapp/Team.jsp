<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="x" uri="http://www.springframework.org/tags/form"%><%--Spring mvc x tag --%>
    
<!DOCTYPE html>
<html>
<style>
#a01{
            background-image: url(https://www.insidesport.in/wp-content/uploads/2022/02/7b4b9790-8118-4c8f-b049-753b272a3255.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            
        }
         .j1
      {
        width: 180px;
        height: 25px;
        border-radius: 10px;
        background-color:transparent;
        border-color:white;
        font-size: 15px;
        font-weight: bold;
        color:white;
      }
     .j2
      {
        width: 70px;
        height: 25px;
        border-radius: 10px;
        border-color:white;
        background-color:transparent;
        font-size: 15px;
        color:fuchsia;
        font-weight: bold;
      }
      #a02{
      margin-right: 850px;
      margin-top: -40px;
      }
      .j9{
      color: orange;
      }
      .j21{
        width: 70px;
        height: 25px;
        border-radius: 10px;
        border-color:white;
        background-color:transparent;
        font-size: 15px;
        color:fuchsia;
        font-weight: bold;
        margin-right: 850px;
      margin-top: 10px;
      }
</style>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<div id="a01">
<h1 style="color: white; font-size: 45px">Team Signup</h1>
<x:form action="teamsignup" modelAttribute="team" method="post">
<div id="a02">
<h2 class="j9">Team Name:<x:input path="teamname" cssClass="j1"/></h2>
<h2 class="j9">Username: <x:input path="username" cssClass="j1"/></h2>
<h2 class="j9">Password: <x:input path="password" cssClass="j1"/></h2>
<h2 class="j9">Image Link:<x:input path="imagelink" cssClass="j1"/></h2>
<button class="j2">Save</button><button type="reset" class="j2">Cancel</button>
</x:form>
</div>

<a href="index.jsp"><button class="j21">Back</button></a>
<pre>

















</pre>
</div>
</center>
</body>
</html>