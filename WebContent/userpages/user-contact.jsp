<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>

<link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/shop-homepage.css" rel="stylesheet">
 
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">






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


#submit{
align-content: center;
align-items: center;
align-self: center;
}

</style>
<meta charset="ISO-8859-1">
<title>Aryak's Website-CONTACT ME</title>


	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->

<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts1/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts1/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor1/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css1/util.css">
	<link rel="stylesheet" type="text/css" href="css1/main.css">
	    <link href="https://fonts.googleapis.com/css?family=Nosifer&display=swap" rel="stylesheet">
	
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <!--  <div class="container">
    	<a class="navbar-brand" href="#">ARYAK's Website</a>
    	 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        	<span class="navbar-toggler-icon"></span>
      	</button>
     -->
         
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
            <a class="nav-link" href="UserServlet?id=paintings">Russian Stroke </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="UserServlet?id=articles">High School </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="UserServlet?id=memes">Memes by me </a>
          </li>
          <li class="nav-item  active">
            <a class="nav-link" href="UserServlet?id=contact">Contact me</a>
          </li>
        </ul>
      </div>
	</div>
</nav>  








<br><br>










<div class="container-contact100">
		<div class="contact100-map" id="google_map" data-map-x="40.722047" data-map-y="-73.986422" data-pin="images/icons/map-marker.png" data-scrollwhell="0" data-draggable="1"></div>

		<div class="wrap-contact100">
			<div class="contact100-form-title" style="background-image: url(items/still.png");">
				<span class="contact100-form-title-1">
					Don't be a stranger, just say HELLO!
				</span>

				<span class="contact100-form-title-2">
					CONTACT ME
				</span>
			</div>

			<form class="contact100-form validate-form" action="AdminServlet" method="post">
			    <input type="hidden" name="id" value="filledcontactform">
				<div class="wrap-input100 validate-input" data-validate="Name is required">
					<span class="label-input100">Full Name:</span>
					<input class="input100" type="text" name="name" placeholder="Enter full name">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<span class="label-input100">Email:</span>
					<input class="input100" type="email" name="email" placeholder="Enter email addess">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Phone is required">
					<span class="label-input100">Phone:</span>
					<input class="input100" name="mobile" type="tel" pattern="[0-9]{10}" placeholder="Enter phone number">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Message is required">
					<span class="label-input100">Message:</span>
					<textarea class="input100" name="comment" type="text" placeholder="Your Comment..."></textarea>
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<!--  <button id="submit" class="contact100-form-btn">
						<span>
							Submit
							<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
						</span>
					</button>
					-->
					
					
					<input id="submit" type="submit" value="SUBMIT" class="contact100-form-btn">
						
					
					
					
					
					
					
				</div>
			</form>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="vendor1/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	
<!--===============================================================================================-->
	<script src="vendor1/bootstrap/js/popper.js"></script>
	<script src="vendor1/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor1/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor1/daterangepicker/moment.min.js"></script>
	<script src="vendor1/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor1/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	
<!--===============================================================================================-->
	<script src="js1/main.js"></script>



<br>
<c:import url="footer.jsp"/>


</body>
</html>