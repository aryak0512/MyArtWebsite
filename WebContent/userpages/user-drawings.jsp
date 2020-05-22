<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function myFunc() {
	// body...
	var x= document.getElementById('demo').innerHTML;
    var a=parseInt(x);
    document.getElementById('demo').innerHTML=a+1;
}
</script>

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

    <link href="https://fonts.googleapis.com/css?family=Nosifer&display=swap" rel="stylesheet">


<link href="https://fonts.googleapis.com/css?family=Dancing+Script&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Baloo+Chettan+2&display=swap" rel="stylesheet">

<style type="text/css">
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
</style>

<meta charset="ISO-8859-1">
<title>DRAWINGS</title>
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
            <a class="nav-link" href="UserServlet?id=memes">Memes by me </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="UserServlet?id=contact">Contact me</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="AdminServlet">Admin Login</a>
          </li>
        </ul>
      </div>
	</div>
</nav>  

 
 <div class="container">


	<BR><BR>
	<div class="row">
	<c:forEach items="${listItems}" var="i">
			<c:if test="${i.getCategoryid() == 2 }">
				<div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#"><c:out value="${i.getTitle() }" /> </a>
                </h4>
                 
                 <p class="card-text">
                    <img class= "images" alt="Couldnt load image." src="${i.getDescription() }">
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">
                
                <a href="AdminServlet?id=likeP&pid=${i.getId() }" ><button onclick="myFunc()" class="btn btn-primary" >LIKE</button></a> &nbsp;&nbsp;
                <a href="AdminServlet?id=viewitem&pid=${i.getId()}" class="btn btn-warning">VIEW</a> &nbsp;&nbsp;
                <font color="green"><p id="demo" style="display:inline"><B><c:out value="${i.getLikes()}"/> | LIKES</B></p></font>&nbsp;&nbsp;
               
                </small>
              </div>
            </div>
          </div>
				
			</c:if>
			
		</c:forEach>
		<HR>
	</div>

</div>
<c:import url="footer.jsp"/>
</body>
</html>