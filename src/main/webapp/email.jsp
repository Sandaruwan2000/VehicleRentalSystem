<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Email Page</title>
    <script>
        // JavaScript function to display an alert box
        function showAlert() {
        	
        	
            alert("This email already has an account. Please use a different email.");
            window.location.href = "Register.jsp"
        }
    </script>
</head>
<body>
    <!-- Call the JavaScript function to display the alert box -->
    <script>
        showAlert();
    </script>
</body>
</html>
