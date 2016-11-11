<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.bean.User"%>
<!DOCTYPE html>
<html lang="it">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="js/jquery-3.1.1.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<title>Registration</title>
</head>

<body>
	<nav class="navbar navbar-inverse" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar" aria-expanded="false">
				<span class="src-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="home.jsp">E-Commerce</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-left">
				<li class="active"><a href="home.jsp"> Home</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> Menu<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="items.jsp">Prodotti</a></li>
					</ul></li>
			</ul>
			<%
				if (session.getAttribute("user") == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="userRegistration.jsp"><span
						class="glyphicon glyphicon-user"></span> Registrati</a></li>

				<li><a href="login.jsp"><span
						class="glyphicon glyphicon-log-in"></span> Accedi</a></li>
			</ul>
			<%
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>
						<%=((User) session.getAttribute("user")).getUsername()%><b
						class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a id="logout">Logout</a></li>
					</ul></li>
			</ul>
			<script> 
									$("#logout").click(
											function() {
												window.location.href = "LogoutController";
											}
									);
								</script>
			<%
				}
			%>

			<form class="navbar-form" role="search">
				<div class="form-group" style="display: inline">
					<div class="input-group">
						<input type="text" class="form-control" size="50%"
							placeholder="Cerca"> <span class="input-group-addon"><span
							class="glyphicon glyphicon-search"> </span></span>
					</div>
				</div>
			</form>
		</div>
	</div>
	</nav>


	<div class="container well">
		<form action="AddUserServlet" class="form horizontal" role="form"
			method="post">
			<div class="well" id="registration" style="text-align: center;">
				<h2>Registrazione</h2>
			</div>
			<div class="form-group" id="nameForm">
				<label for="name" class="col-sm-3 control-label" id="name">Name
					<span> (Required)</span>
				</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="name"
						id="inputName" placeholder="Name" required> <span
						id="glyphiconFormName"> </span> <span class="help-block">Es.
						Francesco</span>
					<div id="errName"></div>
				</div>
			</div>
			<div class="form group">
				<label for="surname" class="col-sm-3 control-label" id="surname">Surname
					<span> (Required)</span>
				</label>
				<div class="col-sm-9">
					<input type="text" name="surname" id="surname"
						placeholder="Surname" class="form-control" required> <span
						class="help-block">Es. Rossi</span>
				</div>
			</div>
			<div class="form-group" id="emailForm">
				<label for="e-mail" class="col-sm-3 control-label">E-mail <span>
						(Required)</span></label>
				<div class="col-sm-9">
					<input type="text" name="email" id="e-mail" placeholder="E-mail"
						class="form-control" required> <span class="help-block">Es.
						francescorossi@e-commerce.it</span>
				</div>
			</div>
			<div class="form-group" id="usernameForm">
				<label for="username" class="col-sm-3 control-label" id="username">Username
					<span> (Required)</span>
				</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="username"
						id="inputusername" placeholder="username"
						onblur="checkUsername(this.value)" required> <span
						id="glyphiconFormusername"> </span>
					<div id="errusername"></div>
				</div>
			</div>
			<div class="form-group" id="passwordForm">
				<label for="password" class="col-sm-3 control-label" id="password">Password
					<span> (Required)</span></label>
				<div class="col-sm-9">
					<input type="password" name="password" id="inputPassword"
						placeholder="Password" class="form-control" onblur="checkPassword()" required> <span
						id="glyphiconFormPassword"></span>
					<div id="errPassword"></div>
				</div>
			</div>
			<div class="form-group" id="repeatPasswordForm">
				<label for="repeatPassword" class="col-sm-3 control-label" id="repeatPassword">RepeatPassword 
					<span> (Required)</span></label>
				<div class="col-sm-9">
					<input type="password" name="repeatPassword"
						id="inputRepeatPassword" placeholder="RepeatPassword"
						class="form-control" onblur="checkPassword()" required> <span
						id="glyphiconFormRepeatPassword"></span>
					<div id="errRepeatPassword"></div>
				</div>
			</div>
			<!-- 	<div class="form-group" id="birthdateForm">
				<label for="birthDate" class="col-sm-3 control-label">Birthdate <span> (Required)</span></label>
				<div class="col-sm-9">
					<input type="date" id="birthDate" class="form-control"> <span
						class="help-block" required>es. 01/01/2016</span>
				</div>
			</div>
			<div class="form-group">
				<label for="codiceFiscale" class="col-sm-3 control-label">Codice Fiscale <span> (Required)</span></label>
				<div class="col-sm-9">
					<input type="date" id="codiceFiscale" class="form-control"> <span
						class="help-block" required></span>
				</div>
			</div>
			<div class="form-group">
				<label for="country" id="country" class="col-sm-3 control-label">Paese</label>
				<div class="col-sm-9">
					<select id="country" class="form-control">
						<option>Afghanistan</option>
						<option>Bahamas</option>
						<option>Cambodia</option>
						<option>Denmark</option>
						<option>Ecuador</option>
						<option>Fiji</option>
						<option>Gabon</option>
						<option>Haiti</option>
						<option>Italia</option>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-3">Sesso</label>
				<div class="col-sm-6">
					<div class="row">
						<div class="col-sm-4">
							<label class="radio-inline"> <input type="radio"
								id="femaleRadio" value="Female">Female
							</label>
						</div>
						<div class="col-sm-4">
							<label class="radio-inline"> <input type="radio"
								id="maleRadio" value="Male">Male
							</label>
						</div>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-3">
					<div class="checkbox">
						<label> <input type="checkbox">I accept <a
							href="#">terms</a>
						</label>
					</div>
				</div>
			</div>
	-->
			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-3">
					<button type="submit" id="submitForm" value="register"
						class="btn btn-primary btn-block">Register<span
						id="glyphiconSubmitForm"> </span></button>
					<div id="errSubmitForm"></div>
				</div>
			</div>
			<!-- /.form-group -->
		</form>
	</div>


	
		<div class="containerFooter">
		<hr>
		<!-- Footer -->
		<footer class="container-fluid text-center">
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright by Rocco_Lorenzo &copy; 2016</p>
				</div>
			</div>
		</footer>
		</div>
		<!-- /.containerFooter -->

	<script type="text/javascript">
	function checkUsername(username){
		if(username!=""){
				$.ajax({
					type: "POST",
					url: "CheckUserController",
					data: {username:username},
					
	                success: function( data, status) {
	                	var result = data;
	                	
	                	if(result == "success"){
	                		
	                		$("#usernameForm").addClass("form-group has-success has-feedback");
	                		$("#glyphiconFormusername").addClass("glyphicon glyphicon-ok form-control-feedback");
	                		$("#submitForm").unbind();
	                		$("#submitForm").css("background-color","green");
	                	}
	                	else if(result == "error"){
							$("#usernameForm").addClass("form-group has-error has-feedback");
							$("#glyphiconFormusername").addClass("glyphicon glyphicon-remove form-control-feedback");
							$("#submitForm").bind("click",function (event) {
							    event.preventDefault();
							});
							$("#submitForm").css("background-color","red");
							$("#errSubmitForm")
							.append("<div id='invalidSubmit' class='alert alert-danger'>"
							+ "<strong>ATTENZIONE!</strong> alcuni dei campi non sono stati riempiti, correggerli per potersi registrare.</div>");
							
							$("#inputusername").prop("disabled",true);
							$("#errusername")
							.append(
									"<div id='existusername' class='alert alert-danger'>"
											+ "<strong>Errore!</strong> username non disponibile, riprova</div>");
							window.setTimeout(function() {
								$("#errusername").fadeTo(50, 0).slideUp(
										50, function() {
											$("#errusername").empty();
											$("#errusername").removeAttr("style");
										});
								$("#inputusername").val("");
								$("#usernameForm").removeClass();
								$("#glyphiconFormusername").removeClass();
								$("#inputusername").prop("disabled",false);
							}, 3000);
	                	}
	                },
	                
	                error: function(jqXHR, textStatus, errorThrown){
	                	console.log("Error into userRegistration.jsp (AJAX - checkUsername(username) ))-->" + textStatus);
	                }
	                
				});
		}
		else{
			$("#usernameForm").addClass("form-group has-warning has-feedback");
			$("#glyphiconFormusername").addClass("glyphicon glyphicon-warning-sign form-control-feedback");
			$("#inputusername").prop("disabled",true);
			$("#submitForm").bind("click",function (event) {
			    event.preventDefault(); 
			    
			});
			$("#submitForm").css("background-color","red");
			$("#errusername").append(
					"<div id='existusername' class='alert alert-warning'>"
							+ "<strong>Warning!</strong> username required!!</div>");
			window.setTimeout(function() {
				$("#errusername").fadeTo(500, 0).slideUp(
						500, function() {
							$("#errusername").empty();
							$("#errusername").removeAttr("style");
						});
				$("#inputusername").val("");
				$("#usernameForm").removeClass();
				$("#glyphiconFormusername").removeClass();
				$("#inputusername").prop("disabled",false);
			}, 3000);
		}
	}

	function checkPassword(){
		var passw1=$("#inputRepeatPassword").val();
		var passw2=$("#inputPassword").val();
		if( (( passw1 && passw2 ) != ( null)) && ( ( passw1 && passw2 ) != "" ) ){
			
			
			$.ajax({
				type: "POST",
				url: "CheckPassController",
				data: {
					password:passw1,
					repeatPassword:passw2
					},
				
                success: function( data ){ 
                	var result = data;
                	
                	if( result=="success" ){
                		
                		$("#submitForm").unbind();
            			$("#submitForm").css("background-color","green");
            			$("#passwordForm").addClass("form-group has-success has-feedback");
                		$("#glyphiconFormPassword").addClass("glyphicon glyphicon-ok form-control-feedback");
                		$("#repeatPasswordForm").addClass("form-group has-success has-feedback");
                		$("#glyphiconFormRepeatPassword").addClass("glyphicon glyphicon-ok form-control-feedback");
            			$("#errRepeatPassword").append(
            					"<div id='matchPasswords' class='alert alert-success'>"
            							+ "<strong>PASSWORDS OK!</strong></div>");
            			window.setTimeout(function() {
            				$("#errRepeatPassword").fadeTo(500, 0).slideUp(
            						500, function() {
            							$("#errRepeatPassword").empty();
            							$("#errRepeatPassword").removeAttr("style");
            						});
            			}, 3000);
                		
                	}
                	
                	else if( result=="warning" ){
                		$("#submitForm").bind("click",function (event) {
            			    event.preventDefault(); 
            			});
            			$("#submitForm").css("background-color","red");
            			$("#errSubmitForm")
						.append("<div id='invalidSubmit' class='alert alert-danger'>"
						+ "<strong>ATTENZIONE!</strong> alcuni dei campi non sono stati riempiti, correggerli per potersi registrare.</div>");
						
            			$("#passwordForm").addClass("form-group has-error has-feedback");
                		$("#glyphiconFormPassword").addClass("glyphicon glyphicon-remove form-control-feedback");
                		$("#repeatPasswordForm").addClass("form-group has-error has-feedback");
                		$("#glyphiconFormRepeatPassword").addClass("glyphicon glyphicon-remove form-control-feedback");
                		$("#inputPassword").prop("disabled",true);
                		$("#inputRepeatPassword").prop("disabled",true);
                		$("#errRepeatPassword").append(
            					"<div id='matchPasswords' class='alert alert-danger'>"
            							+ "<strong>ATTENTION!!!</strong> The passwords mismatch!</div>");
            			window.setTimeout(function() {
            				$("#errRepeatPassword").fadeTo(500, 0).slideUp(
            						500, function() {
            							$("#errRepeatPassword").empty();
            							$("#errRepeatPassword").removeAttr("style");
            						});  
            				$("#inputPassword").val("");            				
            				$("#passwordForm").removeClass();
            				$("#glyphiconFormPassword").removeClass();
            				$("#inputRepeatPassword").val("");
            				$("#repeatPasswordForm").removeClass();
            				$("#glyphiconFormRepeatPassword").removeClass();
            				$("#inputRepeatPassword").prop("disabled",false);
            				$("#inputPassword").prop("disabled",false);
            				
            			}, 3000);
                	}
                		                		
                },
                
			 	error: function(jqXHR, textStatus, errorThrown){
			 		console.log("Error into userRegistration.jsp (AJAX - checkPassword() ))-->" + textStatus);
			 	}
                
			});
		}
			 
	}
</script>
</body>
</html>