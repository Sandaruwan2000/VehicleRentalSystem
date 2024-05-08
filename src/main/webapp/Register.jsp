<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script >
function check() {
    var password = document.querySelector('input[name=password]');
    var confirm = document.querySelector('input[name=confirm]');

    if (password.value === confirm.value) {
        confirm.setCustomValidity('');
    } else {
        confirm.setCustomValidity('Password does not match');
      
    }
}
</script>

<link rel="stylesheet" type="text/css" href="front.css">
<style>
@media only screen and (max-width: 600px) {}
.email td{
    position: relative;
    left:660px;
    top:-22px;
     border: none;
    
    }
   .navbar2{
   position: relative;
   right:5px;
    }




  .email td  a{
    
    padding: 10px;
    position: relative;
   left:70px ;
   top:0px;
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
        
        
        .form{
        position: relative;
   		
    	top:200px;
        }
        
          .form {
        max-width: 400px;
        margin: 0 auto;
        font-family: Arial, sans-serif;
    }

   .b {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        background-color: white;
        
        position: relative;
   		top:150px;
    }

 .b  tr, td {
        padding: 10px;
        border: 1px solid #ddd;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"],
    input[type="tel"] {
        width: 100%;
        padding: 8px;
        box-sizing: border-box;
        margin-bottom: 10px;
         background-color: #f2f2f2;
    }

    button {
        padding: 10px;
        background-color: #007BFF;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        
    }

    button:hover {
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


<form class="form" action="register" method="post" >
<table class="b">

<tr>
<td>Name :</td>
<td><input type="text" id="name" name="name" required></td>
</tr>

<tr>
<td>Email :</td>
<td><input type="email" id="email" name="email" required></td>
</tr>



<tr>
<td>Password :</td>
<td><input type="password" id="password" name="password" onkeyup="check()" required></td>
</tr>
<tr>
<td>Conform Password :</td>
<td><input type="password" id="confirm" name="confirm"  onkeyup="check()" required ></td>
</tr>

<tr>
<td>Mobile :</td>
<td><input type="tel" id="mobile" name="mobile" placeholder="0123456789" pattern="[0-9]{10}" required></td>
</tr>

<tr>

<td><button id="submit" name="submit">Submit</button></td>
</tr>

</table>
</form>


</body>
</html>