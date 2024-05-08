



function check() {
            var password = document.querySelector('input[name=password]');
            var confirm = document.querySelector('input[name=confirm]');

            if (password.value === confirm.value) {
                confirm.setCustomValidity('');
            } else {
                confirm.setCustomValidity('Password does not match');
              
            }
        }
 
        
  /*  function check() {
        var password = document.getElementById("password").value;
        var confirm = document.getElementById("confirm").value;
        var passwordError = document.getElementById("passwordError");

        // Define the regex for strong password validation
        var strongPasswordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

        if (!strongPasswordRegex.test(password)) {
            passwordError.innerHTML = "Password must be strong: at least 8 characters, one uppercase letter, one lowercase letter, one digit, and one special character.";
        } else if (password !== confirm) {
            passwordError.innerHTML = "Passwords do not match!";
        } else {
            passwordError.innerHTML = "";
        }
    }
  */