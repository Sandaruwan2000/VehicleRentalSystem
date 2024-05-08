<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="front.css">

<style>
    

    .email td{
    position: relative;
    left:700px;
    top:-18px;
     border: none;
    
    }
    
    .email input[type="text"]{
    font-family: "Signika", Sans-serif;
     font-size: large;
       font: bold;
     background-color:rgb(0, 0, 53);
	  color:rgb(239, 244, 11);
	width:150px ;
	height:30px ;
    }
    
    .navbar2{
   position: relative;
   right:5px;
    }

.data{
	position: relative;
	top:200px ;
}



.formu{
	position: relative;
	top:400px ;
}



    .data {
        margin-top: 20px;
    }

    .table {
        width: 80%;
        margin: auto;
        border-collapse: collapse;
        margin-top: 20px;
    }

    .table td,
    .table th {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    .table th {
        background-color: #333;
        color: #fff;
    }

    .formu {
        text-align: center;
        margin-top: 20px;
    }

    .b1 {
        background-color: #333;
        color: #fff;
        padding: 10px 20px;
        text-decoration: none;
        border: none;
        cursor: pointer;
        font-size: 16px;
    }
    
    .form  a{
  
  
    position: relative;
    top:0px;
	left:-10px ;
   
   
    
  }

  a:hover {
    
    color:white;
  }


  </style>
</head>
</head>
<body>


<%





String email = (String) session.getAttribute("email");

%>



<header class="header">

        <div class="navbar1">
            <a href="#"><img src="image/logo.jpg" class="newlogo"></a>
            
        </div>
        <div class="navbar2">
            <ul >
                <li><a href="#"><b>HOME</b></a></li>
                <li><a href="front.jsp"><b>BOOK</b></a></li>
                <li><a href="#"><b>NEWS</b></a></li>
                <li><a href="#"><b>ABOUT US</b></a></li>
            </ul>

            <form class="form" >

			<table class="email">
			<tr>
			<td><input type="text" id="email" name="email" value="<%= email %>"></td>
			<td><b><a href="Home.jsp" style="">LOGOUT</a></b></td>
			</tr>
			<tr>
			
			</tr>
			</table>
			
			
			</form>
            
         </div>
		<div class="navbar3">
            <a href="#"><img src="image/logo4.jpg" class="newlogo1"></a>
            
        </div>
        
        
      
      
      
    </header>



<form class="data">
<table class="table">


<c:forEach var="acc" items = "${accountdetails}">

<c:set var ="name" value="${acc.name}"/>
<c:set var ="email" value="${acc.email}"/>
<c:set var ="password" value="${acc.password}"/>
<c:set var ="mobile" value="${acc.mobile}"/>
<tr>
<td>User Name :</td>
<td>${acc.name}</td>
</tr>
<tr>
<td>Email :</td>
<td>${acc.email}</td>
</tr>

<tr>
<td>Mobile Number :</td>
<td>${acc.mobile}</td>
</tr>

</c:forEach>
</table>
</form >

<table class="formu">
<tr>
<td>
<c:url value="update.jsp" var="updateaccount">

<c:param name="name" value="${name}"/>
<c:param name="email" value="${email}"/>
<c:param name="mobile" value="${mobile}"/>

</c:url>
<a href="${updateaccount}"><button type="submit" name="submit" value="submit" class="b1">Update</button></a></td>


</tr>
</table>



</body>
</html>