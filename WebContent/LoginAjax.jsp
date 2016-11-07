<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<title>Responsive Ajax Contact Form</title>
<script>
function checkUserAvailable(username) {
		
			$
					.ajax({
						url : "CheckUserController",
						type : "POST",
						data : {
							'username' : username
						},
						success : function(data, textStatus, jqXHR) {
							var result = data;
							
							if (result == "true") {
								alert("dfdf");
								$("#loginForm").prop("disabled", true);
								$("#username").css("border",
										"1.5px solid #21C600");
							} else {
								alert("fdffdfd");
								$("#loginForm").prop("disabled", true);
								$("#username")
										.css("border", "1.5px solid red");
								$(".error-alert")
										.append(
												"<div id='wrongpasswords' class='alert alert-danger'>"
														+ "<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>"
														+ "<strong>Errore!</strong> Username non disponibile, riprova</div>");
								window.setTimeout(function() {
									$(".error-alert").fadeTo(500, 0).slideUp(
											500, function() {
												$(this).empty();
												$(this).removeAttr('style');
											});
								}, 3000);

							}
						},
						error : function(jqXHR, textStatus, errorThrown) {
							console.log("Errore durante il post");
						}
					});
		
	}
</script>
</head>
<body>
	<div class="form group" id="loginForm">
	<div class="error-alert"></div>
	<form>
		<label for="name" class="col-sm-3 control-label">Username</label>
		<div class="col-sm-9">
			<input type="text" name="username" id="username" onfocus="this.value='';" onblur="checkUserAvailable(this.value);" placeholder="USERNAME"> 
		</div>

		<label for="password" class="col-sm-3 control-label">Password</label>
		<div class="col-sm-9">
			<input type="password" name="password" id="password" placeholder="PASSWORD"
				class="form-control" > 
		</div>
		<div class="form-group">
				<div class="col-sm-9 col-sm-offset-3">
					<button type="submit" value="register" class="btn btn-primary btn-block">Accedi</button>
				</div>
		</div>
	</form>
	</div>
		
</body>
</html>