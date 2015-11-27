function payValidation() {
	
	var city = document.getElementById("city");
	var state = document.getElementById("state");
	var pin = document.getElementById("zip");
	var country = document.getElementById("country");
	var cardNum = document.getElementById("card_number");
	var code = document.getElementById("ccv");
	var letters = /^[A-Za-z]+$/;
	var numbers = /^[0-9]+$/;
	var phoneno = /^\d{10}$/;
	var cardno = /^(?:5[1-5][0-9]{14})$/;
	
	if (city.value.match(letters)) {
		if ((pin.value.match(numbers)) && (pin.value.length == 6)) {
			if (cardNum.value.match(cardno)) {
				if ((code.value.length == 3) && (code.value.match(numbers))) {
					return true;
				} else {
					alert("Enter valid ccv code");
					code.focus();
					return false;
				}
				return true;
			} else {
				alert("Enter valid master card num");
				cardNum.focus();
				return false;
			}
			return true;
		} else {
			alert("Enter Valid pincode");
			pin.focus();
			return false;
		}
		return true;
	} else {
		alert("Enter city");
		city.focus();
		return false;
	}

}