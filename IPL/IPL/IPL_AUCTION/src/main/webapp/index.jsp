<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="x" uri="http://www.springframework.org/tags/form" %>  
<html>
<head>
<style>
        #a01{
            background-image: url(https://drop.ndtv.com/homepage/ndtv_sports/images/ipl.png);
            background-repeat: no-repeat;
            background-size: cover;
        }
        #a02{
            margin-right: 900px;
            margin-top: 90px;
        }
        .j1
      {
        width: 200px;
        height: 35px;
        border-radius: 10px;
        background-color:aquamarine;
        font-size: 15px;
        font-weight: bold;
        color:rgb(34, 30, 30);
      }
      .a03{
        color: aliceblue;
      }
      
    </style>
</head>
    <body >
        <div id="a01">
        <center>
        <h1 style="color: gray;">${msg}</h1>
        <h1 style="color:red; ">WELCOME TO IPL AUCTION</h1>
        <div id="a02">
      <h2><a href="ManagementLogin.jsp" ><button class="j1">Login As Management</button></a><br><br></h2>
        <h2> <a href="TeamLogin.jsp" ><button class="j1">Login As Team</button></a><br><br></h2>
        <h2> <a href="PlayerLogin.jsp" ><button class="j1">Login As Player</button></a><br><br></h2>
            <h3><a href="Signup.jsp" class="a03">New?Click here to Signup</a></h3>
        <pre>
        
        
        
        
        
        
        
       
        </pre>
        </div>
        </center>
        </div>
        </body>
</html>
