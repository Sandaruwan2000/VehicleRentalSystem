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

.datau{
	position: relative;
	top:200px ;
}

/* Apply some basic styling to the form */
.datau {
    max-width: 400px;
    margin: 20px auto;
}

/* Style the table inside the form */
.datau table {
    width: 100%;
    border-collapse: collapse;
    background-color: white;
}

/* Style table cells */
.datau td {
    padding: 10px;
    border: 1px solid #ddd;
}

/* Style the input fields */
.datau input {
    width: 100%;
    padding: 8px;
    box-sizing: border-box;
    margin-bottom: 10px;
    background-color: #f2f2f2;
}

/* Style the submit button */
.datau button {
    background-color: #4CAF50;
    color: white;
    padding: 10px;
    border: none;
    cursor: pointer;
}

/* Add some hover effect to the button */
.datau button:hover {
    background-color: #45a049;
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





String emailu = (String) session.getAttribute("email");

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
			<td><input type="text" id="email" name="email" value="<%= emailu %>"></td>
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



    
    <%
    
    String name =request.getParameter("name");
    String email =request.getParameter("email");
    String mobile =request.getParameter("mobile");
    %>
    
    <form  class="datau"action="update" method="post">
    
   <table>

<tr>
<td>Name :</td>
<td><input type="text" id="name" name="name" value="<%= name %>" required></td>
</tr>

<tr>
<td>Email :</td>
<td><input type="email" id="email" name="email"  value="<%= email %>" readonly></td>
</tr>

<tr>
<td>Mobile :</td>
<td><input type="tel" id="mobile" name="mobile" placeholder="0123456789" pattern="[0-9]{10}"  value="<%= mobile %>" required></td>
</tr>

<tr>

<td><button id="submit" name="submit">Update</button></td>
</tr>

</table>
    
    </form>

</body>
</html>