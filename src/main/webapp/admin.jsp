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
	top:363px ;
	left:500px ;
}

 .form  a{
  
  
    position: relative;
    top:0px;
	
   
   
    
  }

  a:hover {
    
    color:white;
  }
  
  /* Style for the main form */
.data {
    max-width: 600px;
    margin: 20px auto;
}

/* Style for the table inside the form */
.data .table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
     background-color: white;
}

/* Style for table cells inside the form */
.data td {
    padding: 10px;
    border: 1px solid #ddd;
}

/* Style for the update button */
.formu .b1 {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    cursor: pointer;
}

/* Hover effect for the update button */
.formu .b1:hover {
    background-color: #45a049;
}

/* Style for the "ALL ACCOUNT" button */
form[action="view"] .b1 {
    background-color: #008CB
  }
  
  /* Style for the form with class "aa" */
.aa {
    text-align: center;
}

/* Style for the table inside the form */
.aa table {
    margin: 20px auto;
     position: relative;
    top:300.5px;
	left:29px ;
}

/* Style for the "ALL ACCOUNT" button */
.aa .b1 {
    background-color: #008CBA;
    color: white;
    padding: 10px 20px;
    border: none;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

/* Hover effect for the "ALL ACCOUNT" button */
.aa .b1:hover {
    background-color: #005266;
    
    
}
     .form  a{
  
  
    position: relative;
    top:0px;
	left:0px ;
   
   
    
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

            <form class="form" action="data" method="post">

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

<c:set var ="id" value="${acc.id}"/>
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

<form class="aa" action="view" method="post">
<table>
<tr>
<td><button type="submit" name="submitv" value="submitv" class="b1">ALL ACCOUNT</button></td>
</tr>
</table>
</form>



</body>
</html>