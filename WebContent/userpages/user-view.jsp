<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@page import="java.util.*" %>
<%@page import="com.beans.Item" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Aryak's Website-VIEW</title>
    <link href="https://fonts.googleapis.com/css?family=Nosifer&display=swap" rel="stylesheet">

<link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">
  <!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Dancing+Script&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Baloo+Chettan+2&display=swap" rel="stylesheet">
  <!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
.main{
    height: 100px;
    width: 120px;
    align-content: center;
    backface-visibility: 100%;
    margin-top: 0px;

}

canvas{
    padding-left: 0;
    padding-right: 0;
    margin-left: auto;
    margin-right: auto;
    display: block;
    width: 800px;
    background-color: white;
}

#picture1{
   display: none;
}

p{
	font-size: 50px;
	margin-left: 60px;
	margin-right: 60px;
	margin-top: 10px;
	margin-bottom: 10px;

}

.desc{
	text-shadow: currentColor;
	font-family: garamond;
	font-size: 18px;
	color: brown;
	margin-left: 400px;
	margin-right: 400px;
	font-style: italic;
}

.title{
	font-weight: 45px;
	color: blue;
}


body{
	
	background-attachment: scroll;
	background-size: 100%
}


#selectbuttons{
background-color: #4CAF50;
color:white;
}
body{
background-image: url("back1.png");
background-size: cover;
background-repeat: no-repeat;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}

.images{
height: 350px;
width: 300px;
padding: 10px;
align-content: center;
}
#selectbuttons:hover{
background-color: red;
color:yellow;
}
.footer {
   padding:10px;
   position: relative;
   left: 0;
   bottom: 0;
   margin-top: 10px;
   width: 100%;
   background-color: black;
   color: white;
   text-align: center;
   font-size:10px;
}
</style>








<%//List <Item>list = (List <Item>)request.getAttribute("list");

%>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        
      <div class="container">
      <img src="logo.png" height="40px" width="65px">&nbsp;&nbsp;
    	<a class="navbar-brand" href="#">
    	      <font color="white" style="font-family: 'Nosifer', cursive; font-size:25px" >ARYAK'S</font></a>
        <font color="red" style="font-family: 'Nosifer', cursive; font-size:25px" id="font"><b>A</b></font>
        <font color="yellow" style="font-family: 'Nosifer', cursive; font-size:25px" id="font"><b>R</b></font>
        <font color="blue" style="font-family: 'Nosifer', cursive; font-size:25px" id="font"><b>T</b></font>&nbsp;&nbsp;
        <font color="white" style="font-family: 'Nosifer', cursive; font-size:25px" > WEBSITE</font></a>
    	</a>
    	 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        	<span class="navbar-toggler-icon"></span>
      	</button>
      
      	
      	<div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="UserServlet">Home
              
            </a>
          </li>
          <li class="nav-item  active">
            <a class="nav-link" href="UserServlet?id=paintings">Russian Stroke 
            <span class="sr-only">(current)</span>
            </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="UserServlet?id=articles">High School </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="UserServlet?id=memes">Memes by me</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="UserServlet?id=contact">Contact me</a>
          </li>
        </ul>
      </div>
	</div>
</nav>  


<c:forEach var="i" items="${list}">

<br>
<br>
<p class="title" align="center"><c:out value="${ i.getTitle()}"/></p>
<img id="picture1" src="<c:out value="${ i.getDescription()}"/>">
<canvas id="drawing1" width="500px" height="600px" style="border: 2px solid black";></canvas>
<script>
		var a = document.getElementById("drawing1");
        var con = a.getContext("2d");
        var pic1=document.getElementById('picture1');
        con.drawImage(pic1,50,50,400,500);
</script>
<br>


<p class="desc" align="center" > <b><c:out value="${ i.getInfo()}"/></b></p>
<br> 

</c:forEach>


<BR>

<div class="footer">
  <h4>Copyright &copy; Aryak's Website 2020 | MADE BY: Aryak Deshpande</h4>
</div>



</body>
</html>