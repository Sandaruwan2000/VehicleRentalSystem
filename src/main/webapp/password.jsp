<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
function myFunction() {
  var x = document.getElementById("password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>

    <link rel="stylesheet" type="text/css" href="front.css">
<style>
    

    .email td{
    position: relative;
    left:660px;
    top:-22px;
     border: none;
    
    }
    
    .login input[type="text"],
    .login input[type="password"] {
        width: 100%;
        padding: 8px;
        box-sizing: border-box;
        margin-bottom: 10px;
        background-color: #f2f2f2; 
    }
    
    .navbar2{
   position: relative;
   right:5px;
    }




  .email td  a{
    
    padding: 10px;
    position: relative;
   left:70px ;
  }
  
  
  
 .email td a:visited {
            color: yellow;
        }

        .email td a:hover {
            color: white;
        }

        .email td a:active {
            color: red;
        }
        
        .login ,.f{
         position: relative;
  top:300px ;
  left:100px;
  
        }
        
          .a {
        border-collapse: collapse;
        width: 50%;
        
        
    }

    .a{
        border: 1px solid #ddd; /* Add border style */
        background-color: white;
         position: relative;
  
  		left:280px;
  		top:300px
    }

    .a td, .b td {
        padding: 8px;
        text-align: left;
        border: 1px solid #ddd; /* Add border style */
    }

    .a button, .f button {
        padding: 10px;
        background-color: #007BFF;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .a button:hover, .f button:hover {
        background-color: #0056b3;
    }
    
    
  </style>
</head>
<body>

<header class="header">

        <div class="navbar1">
            <a href="#"><img src="image/logo.jpg" class="newlogo"></a>
            
        </div>
        <div class="navbar2">
            <ul >
                <li><a href="#"><b>HOME</b></a></li>
                <li><a href="Home.jsp"><b>BOOK</b></a></li>
                <li><a href="#"><b>NEWS</b></a></li>
                <li><a href="#"><b>ABOUT US</b></a></li>
            </ul>

            

			<table class="email">
			<tr>
			
			<td><b><a href="Register.jsp">SINGIN</a></b></td>
			<td><b><a href="Login.jsp">SINGUP</a></b></td>
			</tr>
			</table>
			
			
			
            
         </div>
		<div class="navbar3">
            <a href="#"><img src="image/logo4.jpg" class="newlogo1"></a>
            
        </div>
        
        
      
      
      
    </header>

<form action="change" method="post">
<table class="a">

<tr>
<td>Email: <input type="email" id="email" name="email"></td>

</tr>  
<tr>
<td><input type="password" id="password" name="password"></td>
<td><input type="checkbox" onclick="myFunction()">Show Password</td>
</tr>
<tr>
<td><button type="submit" name="cpassword" id="cpassword">CHANGE PASSWORD </button>
</td></tr>
</table>
</form>

</body>
</html>