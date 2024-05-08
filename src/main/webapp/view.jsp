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
    top:-38px;
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
	left:0px ;
   
   
    
  }

  a:hover {
    
    color:white;
  }

/* Style for the form */
form {
    margin: 20px auto;
    text-align: center;
}

/* Style for the table inside the form */
.table {
    width: 50%;
    border-collapse: collapse;
    margin-top: 20px;
    position: relative;
    top:220px;
	
}

/* Style for table header cells */
.table th {
    padding: 10px;
    background-color: black;
}

/* Style for table cells */
.table td {
    padding: 10px;
    border: 1px solid #ddd;
}

/* Style for the input and search button */
form input[type="email"] {
    padding: 8px;
    box-sizing: border-box;
}

form button {
    background-color: #008CBA;
    color: white;
    padding: 8px 12px;
    border: none;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

/* Hover effect for the search button */
form button:hover {
    background-color: #005266;
}

  </style>
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



<form action="enter" method="post">
    <table class="table">
    
			<tr>
            	<th>ID </th>
                
                <th>Email </th>
               
               <th>Search </th>
            </tr>    
        <c:forEach var="li" items="${accountdetails}">
            
            <tr>
            	<td>${li.id}</td>
              
                <td>${li.email}</td>
              

	<td><input type="email" id="email" name="email"><button type="submit" id="submit" name="submit">Search</button></td>


            </tr>
        </c:forEach>
    </table>
</form>


</body>
</html>