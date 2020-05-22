<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>UPDATE ITEM</title>
    <link href="https://fonts.googleapis.com/css?family=Nosifer&display=swap" rel="stylesheet">

</head>
<body>
<br>
<h3>UPDATE ITEM</h3>
<br>
<br>
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
		<form method="post" action="AdminServlet?id=updateItem">

		Title: <input type="text" class="form-control" name="title" value="<c:out value="${title}"/>">
		<BR><BR>
		Description: <BR>
		 <textarea name="des"><c:out value="${description}"/></textarea>
              <br>  
         Info: <BR>
		 <textarea name="info"><c:out value="${info}"/></textarea>
		 <BR>
		 <BR>
		 <input type="submit" value="UPDATE ITEM">
		 
		 <input type="hidden" name="title" value="${title}">
		 <input type="hidden" name="pid" value="${pid}">
		 <input type="hidden" name="description" value="${description}">
		</form>
	</div>
	</div>
</div>
<c:import url="footer.jsp"/>
</body>
</html>