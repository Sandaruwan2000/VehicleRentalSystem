<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="front.css">
<style>
    

    .email td{
    position: relative;
    left:660px;
    top:-22px;
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
    
    <div class="photo">
  
      <img src="image/w1.jpg" alt="#Project" width="1280px" height="500px"  class="slides">
      <img src="image/logo3.jpg" alt="#Project" width="1280px" height="500px"  class="slides">
       <img src="image/w5.jpg" alt="#Project" width="1280px" height="500px"  class="slides">
      <img src="image/logo2.jpg" alt="#Project" width="1280px" height="500px"  class="slides" >
      <img src="image/logo.jpg" alt="#Project" width="1280px" height="500px"  class="slides" >
</div>

<script>
    var a = 0 ;
    change() ;//function

function   change() {
var i ;
var x =document.getElementsByClassName("slides") ;
for(i = 0 ; i < x.length ; i++) //loop
{
    x[i].style.display ="none" ;
}
a++ ;
if(a > x.length){a=1}
x[a-1].style.display ="block" ;
setTimeout(change,3000) ; 
}
</script>

<div class="p1"><a href="#"><img src="image/i1.jpg" alt="Bulding" width="400px" height="300px"></a></div>

<div class="p2"><a href="#"><img src="image/i2.jpg" alt="Bulding" width="400px" height="300px"></a></div>   
<div class="p3"><a href="#"><img src="image/i3.jpg" alt="Bulding" width="400px" height="300px"></a></div> 
<div class="p4"><a href="#"><img src="image/i7.jpg" alt="Bulding" width="400px" height="300px"></a></div>

<div class="p5"><a href="#"><img src="image/i9.jpg" alt="Bulding" width="400px" height="300px"></a></div>   
<div class="p6"><a href="#"><img src="image/i6.jpg" alt="Bulding" width="400px" height="300px"></a></div> 
    




</body>
</html>