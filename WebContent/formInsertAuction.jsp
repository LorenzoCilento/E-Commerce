<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="model.bean.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="it">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">

<script src="js/jquery-3.1.1.js"></script>

<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">

<title>Insert title here</title>
</head>
<body>
<div class="container well">
		<form action="AuctionController" class="form horizontal" role="form"
			method="get">
			<div class="well" id="registration" style="text-align: center;">
				<h2>Registrazione</h2>
			</div>
			<div class="form-group" id="nameForm">
				<label for="name" class="col-sm-3 control-label" id="name">ItemId
					<span> (Required)</span>
				</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="itemId"
						id="inputName" placeholder="Name" onblur="validateUsername(this.value)" required> <span
						id="glyphiconFormName"> </span> <span class="help-block">Es.
						Francesco</span>
					<div id="errName"></div>
				</div>
			</div>
			<div class="form group">
				<label for="surname" class="col-sm-3 control-label" id="surname">StartDate
					<span> (Required)</span>
				</label>
				<div class="col-sm-9">
					<input type="text" name="startDate" id="startDate"
						placeholder="Surname" class="form-control" required> <span
						class="help-block">Es. Rossi</span>
				</div>
			</div>
			<div class="form-group" id="emailForm">
				<label for="e-mail" class="col-sm-3 control-label">EndDate <span>
						(Required)</span></label>
				<div class="col-sm-9">
					<input type="text" name="endDate" id="e-mail" placeholder="E-mail"
						class="form-control" onblur="validateEmail(this.value)" required> <span class="help-block">Es.
						francescorossi@e-commerce.it</span>
				</div>
			</div>
			<div class="form-group" id="usernameForm">
				<label for="username" class="col-sm-3 control-label" id="username">State
					<span> (Required)</span>
				</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" name="state"
						id="inputusername" placeholder="username"
						onblur="checkUsername(this.value)" required> <span
						id="glyphiconFormusername"> </span>
					<div id="errusername"></div>
				</div>
			</div>
			
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
</body>
</html>