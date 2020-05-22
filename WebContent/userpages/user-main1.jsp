<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Aryak's Website-FIRST PAGE</title>
	<link href="https://fonts.googleapis.com/css?family=PT+Serif&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nosifer&display=swap" rel="stylesheet">
    
    
    
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
 
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
 
</head>
<style type="text/css">
.cb-slideshow,.cb-slideshow:after { 
    position: fixed;
    width: 100%;
    height: 100%;
    top: 0px;
    left: 0px;
    z-index: -1; 
    margin-top: 0px;
}
.cb-slideshow li span { 
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0px;
    left: 0px;
    color: transparent;
    background-size: cover;
    background-position: 50% 50%;
    background-repeat: none;
    opacity: 0;
    z-index: -1;
    animation: imageAnimation 36s linear infinite 0s; 
}
.cb-slideshow li div { 
    z-index: 1000;
    position: absolute;
    bottom: 30px;
    left: 0px;
    width: 100%;
    text-align: center;
    opacity: 0;
    color: #fff;
    animation: titleAnimation 36s linear infinite 0s; 
}
.cb-slideshow li div h3 { 
    font-family: 'BebasNeueRegular', 'Arial Narrow', Arial, sans-serif;
    font-size: 240px;
    padding: 0;
    line-height: 200px; 
}	

.cb-slideshow li:nth-child(1) span { 
    background-image: url("16.jpg");
}
.cb-slideshow li:nth-child(2) span { 
    background-image: url("24.jpg");
    animation-delay: 6s; 
}
.cb-slideshow li:nth-child(3) span { 
    background-image: url("35.jpg");
    animation-delay: 12s; 
}
.cb-slideshow li:nth-child(4) span { 
    background-image: url("25.jpg");
    	
    animation-delay: 18s; 
}
.cb-slideshow li:nth-child(5) span { 
    background-image: url("33.jpg");
    animation-delay: 24s; 
}
.cb-slideshow li:nth-child(6) span { 
    background-image: url("39.jpg");
    animation-delay: 30s; 
}

.cb-slideshow li:nth-child(2) div { 
    animation-delay: 6s; 
}
.cb-slideshow li:nth-child(3) div { 
    animation-delay: 12s; 
}
.cb-slideshow li:nth-child(4) div { 
    animation-delay: 18s; 
}
.cb-slideshow li:nth-child(5) div { 
    animation-delay: 24s; 
}
.cb-slideshow li:nth-child(6) div { 
    animation-delay: 30s; 
}


@keyframes imageAnimation { 
    0% { opacity: 0; animation-timing-function: ease-in; }
    8% { opacity: 1; animation-timing-function: ease-out; }
    17% { opacity: 1 }
    25% { opacity: 0 }
    100% { opacity: 0 }
}

@keyframes titleAnimation { 
    0% { opacity: 0 }
    8% { opacity: 1 }
    17% { opacity: 1 }
    19% { opacity: 0 }
    100% { opacity: 0 }
}

.no-cssanimations .cb-slideshow li span{
	opacity: 1;
}
@media screen and (max-width: 1140px) { 
    .cb-slideshow li div h3 { font-size: 140px }
}
@media screen and (max-width: 600px) { 
    .cb-slideshow li div h3 { font-size: 80px }
}





.row{
    margin-left: 5px;
    margin-right: 5px;
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
#font{
    margin: 0px;
    padding: 0px;
}


input,textarea{
    margin: 15px;
    margin-top: 5px;
}
    

.fa {
  padding: 5px;
  font-size: 20px;
  width: 30px;
  height: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 5px;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
  text-align: center;
  
}


.fa-instagram {
  background: #bc2a8d;
  color: white;
}

.fa-snapchat-ghost {
  background: #fffc00;
  color: white;
  text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
}


#panela{
    float: right;
    margin-right: 0px;
    text-align-last: end;
    right: 0;
}






</style>
<body>
<%String cmsg=(String)request.getAttribute("cmsg"); %>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="panel">
<!--  
    <div class="container" style="margin-left: 0px; margin-right:0px;">
        <img src="logo.png" height="40px" width="65px">&nbsp;&nbsp;
        <a class="navbar-brand" href="#" id="left">
        <font color="white" style="font-family: 'Nosifer', cursive; font-size:25px" >ARYAK'S</font></a>
        <font color="red" style="font-family: 'Nosifer', cursive; font-size:25px" id="font"><b>A</b></font>
        <font color="yellow" style="font-family: 'Nosifer', cursive; font-size:25px" id="font"><b>R</b></font>
        <font color="blue" style="font-family: 'Nosifer', cursive; font-size:25px" id="font"><b>T</b></font>&nbsp;&nbsp;
        <font color="white" style="font-family: 'Nosifer', cursive; font-size:25px" > WEBSITE</font></a>
        <button  class="navbar-toggler" id="panela" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon" id="panela"></span>
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
            
        
        
        
        <div class="collapse navbar-collapse" id="navbarResponsive" id="panela">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active" >
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
          <li class="nav-item">
            <a class="nav-link" href="UserServlet?id=contact">Contact me</a>
          </li>

        </ul>
      </div>
    </div>
</nav>  




    <div class="row">
     
      <div class="col-lg-3">
      <br>
      <p align="center" class="indented" id="about"><font color="red">About me</font></p>
      <img src="aryak.png" class="indented" width="250px" height="300px" id="myimage">
      <p class="indented" style="font-family: 'PT Serif', serif; font-size:35px"><b>"I am an artistic person engineered to make memes."</b>
      </p>      
      </div>
     



      <div class="col-lg-6">
        
      </div>





      <div class="col-lg-3">
      
            <br>
        <form style="float:right;" action="AdminServlet?id=filledcontactform" method="post">
        <fieldset style="box-shadow:currentColor;border-radius: 18px; align-content: center; background-color:white;  border:1px solid  black;">
        <br>
        <p align="center" style="font-family: 'Dancing Script', cursive; color: blue; font-style:bold; font-size:40px; ">Contact me</p>
        <a href="https://www.facebook.com/aryak.deshpande" target="_blank" class="fa fa-facebook"  style="margin-top: 5px; margin-bottom: 5px; margin-left:35px;margin-right: 10px; "></a> FACEBOOK
        <br>
        <a href="https://www.instagram.com/aryak0512" target="_blank" class="fa fa-instagram"  style="margin-top: 5px; margin-bottom: 5px; margin-left:35px;margin-right: 10px; "></a> INSTAGRAM
        <br>
        <a href="#" class="fa fa-snapchat-ghost" target="_blank" style="margin-top: 5px; margin-bottom: 5px; margin-left:35px;margin-right: 10px;"></a> SC/aryak05
        <br>
        
        <p style="margin:0px; padding: 0px; text-align:center;"><b>OR</b></p>
        
        <p align="center" style="font-family: 'Dancing Script', cursive; color: blue; font-style:bold; font-size:20px;">Let me know your thoughts:</p>
        <input type="text" name="name" placeholder="Full Name" pattern="[A-Za-z ]{1,32}" style="background-color: transparent;border-radius: 6px;  text-align: center; "required />
        <br>
        <input type="email" name="email" placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" style="background-color: transparent; border-radius: 6px;  text-align: center;"required/>
        <br> 
        <textarea placeholder="Message for me" name="message" cols="21" rows="2" style="background-color: transparent; border-radius: 6px;  text-align: center;" required></textarea>
        <BR>
        <font color="red" style="padding:10px; font-size:15px;"><%out.print(cmsg); %></font>
        <br>
        <input type="submit" value="Send Message" style="background-color: green;border-radius: 6px;  color:white; padding:5px; "/>
        <br>
        </fieldset>
      </form>











      </div>

    </div>






    </div>

    



<ul class="cb-slideshow">
	        <li><span>Image 01</span></li>
            <li><span>Image 02</span></li>
            <li><span>Image 03</span></li>
            <li><span>Image 04</span></li>
            <li><span>Image 05</span></li>
            <li><span>Image 06</span></li>
</ul>
<hr size="2" >


<div class="footer">
  <p>Copyright &copy; Aryak's Website 2020 | MADE BY: Aryak Deshpande</p>
</div>




</body>
</html>