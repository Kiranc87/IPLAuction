<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#a01{
            background-image: url(https://media.istockphoto.com/id/177427917/photo/close-up-of-red-cricket-ball-and-bat-sitting-on-grass.jpg?b=1&s=170667a&w=0&k=20&c=WGO8Ikx5NSa1W7KC922jlzgnSq46gnP6G14cGWsvVUw=);
            background-repeat: no-repeat;
            background-size: cover;
        }
        .j1
      {
        width: 180px;
        height: 25px;
        border-radius: 10px;
        background-color:transparent;
        font-size: 20px;
        font-weight: bold;
        color:gray;
        border-color:black;
      }
      .j2
      {
        width: 80px;
        height: 25px;
        border-radius: 10px;
        border-color:black;
        background-color:transparent;
        font-size: 20px;
        font-weight: bold;
        color:gray;
      }
      #a12{
      margin-right: 700px;
      margin-top: 120px;
      }
</style>
</head>
<body>
<center>
<div id="a01">
<h1 style="color: white;">${msg}</h1>
<h1 style="color:red; font-size: 50px">Management Home</h1>
<div id="a12">
<a href="viewallteam" ><button class="j1">View Team</button></a><br><br>
<a href="viewallplayer" ><button class="j1">View Player</button></a><br><br>
<a href="index.jsp"><button class="j2">Back</button></a>
</div>
<pre>














</pre>
</div>
</center>
</body>
</html>