<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="model.bean.User"%>
<!DOCTYPE html>
<html lang="it">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="js/jquery-3.1.1.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<title>Login</title>
</head>
<body>
<header>
		<jsp:include page="navBar.jsp"></jsp:include>
	
	<div class = "container well">
		<form action ="LoginController" class="form horizontal" method="get">
			<div class="well" id="registration" style="text-align: center;">
				<h2>Accedi</h2>
			</div>
			
			<div class="form group">
				<label for="name" class="col-sm-3 control-label">Username</label>
				<div class="col-sm-9">
					<input type="text" name="username" id="username" placeholder="USERNAME"> 
				</div>
			</div>
			
			<div class="form group">
				<label for="password" class="col-sm-3 control-label">Password</label>
				<div class="col-sm-9">
					<input type="password" name="password" id="password" placeholder="PASSWORD"
						class="form-control" > 
				</div>
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