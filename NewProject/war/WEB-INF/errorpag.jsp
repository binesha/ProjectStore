<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/errorpag.css" type="text/css" />
<title>error page</title>
</head>
<body>
<div id="hdr"><center>Username or password incorrect..!</center></div>

<div class="login">
	<div class="titulo">Login</div>
	<form action="/validate" onsubmit="return loginValidation()" method="post"  >
    	<input id="use" type="text"  title="Username required" placeholder="Username" name="use" >
        <input id="pas" type="password" title="Password required" placeholder="Password" name="pas" >
        <div class="olvido">
        	<div class="col"><a href="/registration">Register</a></div>
            <div class="col"><a href="#" >Fotgot Password?</a></div>
        </div>
        
        <input type="submit" value="SUBMIT" class="enviar" />
      
    </form>
</div>
</body>
</html>