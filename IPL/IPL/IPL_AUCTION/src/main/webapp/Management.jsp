<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="x" uri="http://www.springframework.org/tags/form"%><%--Spring mvc form tag --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#a01{
            background-image: url(https://blogassets.airtel.in/wp-content/uploads/2021/11/Watch-IPL-2021-Live-on-Airtel-Xstream-Box.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
         .j1
      {
        width: 180px;
        height: 25px;
        border-radius: 10px;
        background-color:transparent;
        border-color:white
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
</head>

<body>
<center>
<div id="a01">
<h1 style="color: aqua;font-size: 50px ">Management Signup</h1>
<x:form action="managementsignup" modelAttribute="management" method="post">
<h1>Username: <x:input path="username" cssClass="j1"/></h1>
<h1>Password: <x:input path="password" cssClass="j1"/></h1>
<button class="j2">Save</button> <button type="reset" class="j2">Cancel</button>
</x:form>
<br>
<a href="index.jsp"><button  class="j2">Back</button></a>
<pre>


















</pre>
</div>
</center>
</body>
</html>