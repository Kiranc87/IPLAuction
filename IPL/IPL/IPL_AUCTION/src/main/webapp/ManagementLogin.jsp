<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
#a01{
            background-image: url(https://www.insidesport.in/wp-content/uploads/2022/02/d328c576-1802-4e00-9030-aef9d7372a26.jpg);
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
        width: 100px;
        height: 25px;
        border-radius: 5px;
        border-color:white;
        background-color:transparent;
        font-size: 15px;
        font-weight: bold;
        color:orange;
      }
      .a1{
      font-size: 40px
      }
      .j3{
     color: aqua;
      }
      #a90{
            margin-right: 850px;
            margin-top: 280px;
        }
      
</style>
</head>
<body>
<center>
<div id="a01">
<h1>${msg}</h1>
<h1 style="color: white;" class="a1">Management Login</h1>
<div id="a90">
<form action="managementlogin" method="post">
<h2 class="j3">UserName:<input type="text" name="username" class="j1"></h2>
<h2 class="j3">Password:<input type="text" name="password" class="j1"></h2>
<button class="j2">Login</button> <button type="reset" class="j2">Cancel</button><br><br>
</form>
<a href="index.jsp" ><button class="j2">Back</button></a>
</div>
<pre>




</pre>
</div>
</center>
</body>
</html>