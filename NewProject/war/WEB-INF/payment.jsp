<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="../js/payment.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/payment.css" type="text/css" />
<title>Payment details</title>
</head>
<body>

	<div class="headline">



		<h1>Billing and Payment Details</h1>


	</div>
	<!--  Start here -->
<body>
	<form action="/resultpage"  method="post" onsubmit="payValidation()">
		<div id="wrap">
			<div id="accordian">
				

				
				<div class="step" id="step1">
					<div class="number">
						<span>1</span>
					</div>
					<div class="title">
						<h1>Billing Information</h1>
					</div>
					<div class="modify">
						<i class="fa fa-plus-circle"></i>
					</div>
				</div>
				<div class="content" id="address">
					<div class="go-right">
						<div>
							<input type="text" name="first_name" value="${namefull}" id="first_name"
								placeholder="First Name" /> <label for="first_name"></label>
						</div>
						
						<div>
							
							<input type="text" name="telephone"  value="${Mob}" id="telephone" />
							 <label for="telephone"></label>
								
						</div>

						<div>
							<input type="text" name="address" value="" id="address"
								placeholder="Address" /> <label for="Address"></label>
						</div>
						<div>
							<input type="text" name="city" value="" id="city"
								placeholder="City" /> <label for="city"></label>
						</div>
						<div>
							<div class="state_options">
								<div class="select">
									<select id="state">
										<option value="1">Tamilnadu</option>
										<option value="2">Andhra Pradesh</option>
										<option value="3">Telangana</option>
										<option value="4">others</option>
									</select>
								</div>
								<label class="state" for="state"></label>
							</div>
						</div>
						<div>
							<input type="text" name="zip" value="" id="zip"
								placeholder="pin Code" /> <label for="zip"></label>
						</div>
						<div>
							<div class="country_options">
								<label class="country" for="country"></label>
								<div class="select">
									<select id="country">
										<option value="1">India</option>
										<option value="2">United states</option>
										<option value="3">United kingdom</option>
										<option value="4">others</option>
									</select>
								</div>
							</div>
						</div>

					</div>
					<a class="continue" href="#">Continue</a>
				</div>



				<div class="step" id="step2">
					<div class="number">
						<span>2</span>
					</div>
					<div class="title">
						<h1>Payment Information</h1>
					</div>
					<div class="modify">
						<i class="fa fa-plus-circle"></i>
					</div>
				</div>
				<div class="content" id="payment">
					<div class="left credit_card">
						<div class="go-right">
							<div>
								<input type="text" name="card_number" value="" id="card_number"
									placeholder="xxxx-xxxx-xxxx-xxxx" /> <label for="card_number"></label>
							</div>
							<div>
								<div class="expiry">
									<div class="month_select">
										<select name="exp_month" value="" id="exp_month"
											placeholder="">
											<option value="1">01 (Jan)</option>
											<option value="2">02 (Feb)</option>
											<option value="3">03 (Mar)</option>
											<option value="4">04 (Apr)</option>
											<option value="5">05 (May)</option>
											<option value="6">06 (Jun)</option>
											<option value="7">07 (Jul)</option>
											<option value="8">08 (Aug)</option>
											<option value="9">09 (Sep)</option>
											<option value="10">10 (Oct)</option>
											<option value="11">11 (Nov)</option>
											<option value="12">12 (Dec)</option>
										</select>
									</div>
									<span class="divider">-</span>
									<div class="year_select">
										<select name="exp_year" value="" id="exp_year" placeholder="">
											<option value="1">14</option>
											<option value="2">15 (Feb)</option>
											<option value="3">16 (Mar)</option>
											<option value="4">17 (Apr)</option>
											<option value="5">18 (May)</option>
											<option value="6">19 (Jun)</option>
					   					    <option value="7">20 (Jul)</option>
											<option value="8">22 (Aug)</option>
											<option value="9">23 (Sep)</option>
											<option value="10">24 (Oct)</option>
											<option value="11">25 (Nov)</option>
											<option value="12">26 (Dec)</option>
										</select>
									</div>
								</div>
								<label class="exp_date" for="Exp_Date">Exp Date</label>
							</div>
							<div class="sec_num">
								<div>
									<input type="text" name="ccv" value="" id="ccv"
										placeholder="ccv Code" /> <label for="ccv"></label>
								</div>
							</div>
						</div>
					</div>
					
					<input type="submit" class="continue" value="Submit" >
					
				</div>

			</div>
		</div>
	</form>
</body>

</html>