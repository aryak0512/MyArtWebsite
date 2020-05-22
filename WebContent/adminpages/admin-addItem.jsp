<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link href="https://fonts.googleapis.com/css?family=Nosifer&display=swap" rel="stylesheet">

<meta charset="ISO-8859-1">
<title>ADD ITEM</title>

</head>
<body>
<br>
<br>
<h3>ADD ITEM</h3>
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
            
	<div class="row">
		<div class="col-lg-12 col-md-12 mb-4">
		<form method="post" action="AdminServlet">
		<input type="hidden" name="id" value="addItemToDB">
		<input type="hidden" name="cid" value="${cid}">
		
		Title: <input type="text" class="form-control" name="title">
		<BR><BR>
		Description: <BR>
		 <textarea name="description"></textarea>
		 <BR><BR>
		
		Info: <BR>
		 <textarea name="info"></textarea>
		 <BR><BR>
		 <input type="submit" value="ADD ITEM">
		</form>
	    </div>
	</div>
</div>
<c:import url="footer.jsp"/>
</body>
</html>