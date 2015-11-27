

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="../js/register.js" ></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/registration.css" type="text/css" />
<title>Registration form</title>

</head>
<body>

<div class="main">
      <div class="one">
        <div class="register">
          <h3>Create your account</h3>
          <form id="reg-form"  action="/store" onsubmit="return formValidation()" method="post" >
            <div>
              <label for="name">Name</label>
              <input type="text" id="name"  name="name"/>
            </div>
            <div>
              <label for="email">Email</label>
              <input type="text" id="email"  name="email" />
            </div>
            <div>
              <label for="username">Username</label>
              <input id="txt_username" name="username"  tabindex="3" type="text">
              
            </div>
            <div>
              <label for="password">Password</label>
              <input type="password" id="txt_password" name="password1"  tabindex="4">
            </div>
            <div>
              <label for="password-again">Password Again</label>
              <input type="password" name="password-again" id="password-again" >
            </div>
            <div>
              <label></label>
            <!--  <a href="/store">
             <input type="button" value="Create" id="create-account" class="button"/> </a>-->
            </div>
                         <center><input type="submit" value="Create-account" class="button"></center>
            
          </form>
          
         
          </div>
        </div>
      </div>
   
</body>
</html>