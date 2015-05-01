function ValidateEmail(){    
var email = $('#email').val();

	if(email!="")
{
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if (!filter.test(email)) 
    {   
        //alert(email)
        //alert(filter.test(email.value)) 
        alert('Please provide a valid email address');
        $("#email").focus();
        return false;
    }
  }
}

function ValidatePassword(){    
var password = $('#password').val();

	if(password!="")
{
    if (password.length < 8 ||!(/[0-9]/).test(password)) 
    {   
        //alert(email)
        //alert(filter.test(email.value)) 
        alert('password must be greater than 8 characters and must contain at least 1 number');
        $("#password").focus();
        return false;
    }
  }
}

function ValidatePasswordTwo(){    
var repassword = $('#reenterpassword').val();
var password = $('#password').val();

	if(repassword!="")
{
   

    if (repassword !== password) 
    {   
        //alert(email)
        //alert(filter.test(email.value)) 
        alert('passwords must match');
        $("#reenterpassword").focus();
        return false;
    }
  }
}

