<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   

<!DOCTYPE html>
<html>
<head>
    <link href="https://fonts.googleapis.com/css?family=Nosifer&display=swap" rel="stylesheet">

<script src="https://cdn.ckeditor.com/4.14.0/standard/ckeditor.js"></script>

<link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">
 
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
 
<title>Aryak's Website-ADMIN LOGIN</title>
<% String Msg= (String)request.getAttribute("msg"); %>
<% String username= (String)request.getAttribute("username"); %>
<meta charset="ISO-8859-1">

<title>ADMIN LOGIN</title>

<style type="text/css">

.footer {
   padding:10px;
   position: relative;
   left: 0;
   bottom: 0;
   margin-top: 10px;
   width: 100%;
   background-color: transparent;
   color: white;
   text-align: center;
}

@viewport {
  width: device-width ;
  zoom: 1.0 ;
}
@media screen and (max-width:320px) {
  /* CSS for screens that are 320 pixels or less will be put in this section */
  body{
background-image: url("back1.png");
background-repeat: no-repeat;
background-size: 100% 200%;

}
}
.col-lg-3{
background-color: white;
}
p{
padding: 5px;
}
#myimage{
padding-left: 10px;
  padding-right: 10px;
}
body{
background-image: url("back1.png");
background-repeat: no-repeat;
background-size: cover;
}

.indented {
  padding-left: 10px;
  padding-right: 10px;
  text-align: left;
  font-family: 'Dancing Script', cursive;
  font-size: 24px;
}
.aboutme{
font-family: 'Baloo Chettan 2', cursive;
font-size: 28px;
font-weight: bold;
}








.header {
  overflow: hidden;
  background-color: black;
  padding: 10px;
  margin-left: 0px;
  margin-right: 0px;
}

.header a {
  float: left;
  color: white;
  font-weight:bold;
  text-align: center;
  padding: 10px 10px;
  text-decoration: none;
  font-size: 15px; 
  line-height: 25px;
  border: 10px;
}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
  padding-bottom:5px;
  color:yellow;
  font-family: 'Open Sans', sans-serif;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}

.header a.active {
  background-color: #4CAF50;
  color: white;
}

.header-right {
  float: right;
}
#name{
font-weight:lighter;
font-size: 15px;
}
#label{
color:white;
}
@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
    background-color: black;
  }
  
  .header-right {
    float: none;
  }
}

.indented {
  padding-left: 10px;
  padding-right: 10px;

  margin-right: 10px;
  margin-left: 10px;

  width: 250px;
  text-align: left;
  font-family: 'Dancing Script', cursive;
  font-size: 20px;
  background-color: white;
  text-align: center;
  
}

#about{
font-size: 28px;

color: blue;
margin-bottom: 0px;
}

.active {
  background-color: #4CAF50;
}
ul {
  list-style-type: none;
  margin-right: 0;
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











</style>
	
</head>
<body>
<div class="container">

     
<br>

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
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="UserServlet?id=paintings">My Paintings </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="UserServlet?id=articles">My Articles</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="UserServlet?id=memes">My Meme Collection</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="UserServlet?id=contact">Contact me</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="AdminServlet">Admin Login</a>
          </li>
        </ul>
      </div>
	</div>
</nav>  
















<p class="text-center">
<h2 align="center"><B>ADMIN LOGIN</B></h2>
</p>
<hr>
<p class="text-center">
<font color="red"><% out.println(Msg);%></font>
</p>

<div class="container">
<form action="AdminServlet?id=login" method="post">
<p class="text-center">

<font color="blue"><b>PLEASE ENTER YOUR CRENDENTIALS:</b></font>
<BR><BR>
<b>Username:</b>
<input type="text" name="username" value="<%out.print(username);%>" required>

<br><br>
<b>Password:</b>
<input type="password" name="password" required>
<br>
<br>
<br>
<input type="submit" class="btn btn-primary" value="LOGIN"/>&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" class="btn btn-warning" value="RESET"/>
</p>
<br><br><br><br><br>
</form>
</div>
</div>
<div class="footer">
  <p>Copyright &copy; Aryak's Website 2020 | MADE BY: Aryak Deshpande</p>
</div>
</body>

</html>