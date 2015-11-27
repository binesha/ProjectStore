<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="../js/success.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/loginSuccess.css" type="text/css" />
<title>Success Page</title>

</head>
<body>

	
	<div style="text-align: right;">
		<h1>
			<input type=text value="welcome guest" readonly> <a href="/">
				<input type=button value="Log Out">
			</a>
		</h1>
	</div>

	<div id="dolphincontainer">
		<div id="dolphinnav">
			<ul>
				<li><a href="" class="current"><span>Home</span></a></li>
				<li><a href="/offers"><span>plans and Services</span></a></li>
				<li><a href=""><span>Schemes</span></a></li>
				<li><a href=""><span>About Us</span></a></li>
				<li><a href="/contact"><span>Contact</span></a></li>


			</ul>
		</div>
	</div>

	<h1 class="register-title">Online Recharge</h1>
	<div class="register">
		<div class="register-switch">
			<input type="radio" name="sex" value="F" id="sex_f"
				class="register-switch-input" checked> <label for="sex_f"
				class="register-switch-label">Prepaid</label> <input type="radio"
				name="sex" value="M" id="sex_m" class="register-switch-input">
			<label for="sex_m" class="register-switch-label">Postpaid</label>
		</div>
			
			<form action="/storeMob" onsubmit="successValidation()" >
			<input type="text" class="register-input" id="num12" name="num12" placeholder="Enter Mobile Number" > 
			
				<input type="password" class="register-input" id="pas" placeholder="Password" >

			<div class="select-table">
				<label class="operator" for="operator">Select operator: </label> <select
					id="operator">
					<option value="airtel">Airtel</option>
					<option value="vodafone">Vodafone</option>
					<option value="idea">Idea</option>
					<option value="docomo">Docomo</option>
					<option value="reliance">Reliance</option>
					<option value="bsnl">BSNL</option>
					<option value="aircel">Aircel</option>
				</select>


			</div>


			<div class="select-table">
				<label class="operator" for="operator">Select Circle: </label> <select
					id="operator">
					<option value="ap">Tamilnadu</option>
					<option value="telangana">Telangana</option>
					<option value="tamil">Andhra pradesh</option>
					<option value="kerala">Kerala</option>
					<option value="karnataka">Karnataka</option>
					<option value="mumbai">Maharastra</option>
					<option value="delhi">Delhi</option>
				</select>
			</div>
			
		
			<input type="submit" value="Recharge Now" class="register-button"> 
		</form>
		
	</div>




</body>
</html>