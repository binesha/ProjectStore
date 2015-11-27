function formValidation()
{
	
	var name = document.getElementById("name");
	var email = document.getElementById("email");
	var uname = document.getElementById("txt_username");
	var pass = document.getElementById("txt_password");
	var passagain = document.getElementById("password-again");
	var letter =/^[A-Za-z]+$/;
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/; 
	var passlen = pass.value.length; 
	
	  
	if(name.value.match(letter))  
	{ 
		if(email.value.match(mailformat))
			{
			if(uname.value.match(letter))
				{
					if (((passlen!=0) && (passlen>=7) && (passlen<12))) 
					{  
						if(pass.value==passagain.value)
							{
							return true;
							}
						else
							{
							alert(" Password didn't match  ");
							passagain.focus();
							return false;
							} 
						return true;
					}
					else
						{
						alert("Password should not be empty / length be between  7 to 12");  
						pass.focus();  
						return false;  					
						}  
				  
				return true;
				}
			else {
				alert("Username must have alphabet characters only");  
				uname.focus();  
				return false; 
			}
				return true;
			}
		else 
			
		{  
		alert("You have entered an invalid email address!");  
		email.focus();  
		return false;  
		}  
	return true;
	}  
	else  
	{  
	alert("Username must have alphabet characters only");  
	name.focus();
	return false;  
	}  
	
}	
function loginValidation()
{
	var userlogin = document.getElementById("use");
	var passlogin = document.getElementById("pas");
	
	if(( document.getElementById("use")==null)||(document.getElementById("pass")==""))
		{
		alert("username required");
		return false;
		}
	else if((passlogin==null) || (passlogin==""))
		{
		alert("password required");
		return false;
		}
	else {
		
	}

}