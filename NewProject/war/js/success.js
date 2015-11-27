function successValidation()
{
	
var number=document.getElementById("num");	
var passwd=document.getElementById("pas");
var phoneno = /^\d{10}$/;
if(number.value.match(phoneno))  
{  if(passwd!=null)
	{
	return true;
	}
else
	{
	alert("enter password");
	return false;
	}
    return true;  
}  
else  
{  
   alert("Enter valid Phone Number");  
   return false;  
}  

}