function validateUsername(username){
	if(username!=null && username!=""){
		var reg = new RegExp(/^[0-9a-zA-Z]{3,15}$/);
		if( reg.test(username))
			window.alert("true");
		else{
			window.alert("Error! Insert only letter and number.");
			$("#inputName").val("");
		}
	}
}

function validateEmail(email){
	var emailPattern = new RegExp(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/);
	if(emailPattern.test(email))
		window.alert("true");
	else
		window.alert("false");
}
