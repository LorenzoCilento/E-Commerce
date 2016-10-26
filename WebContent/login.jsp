<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="jquery-3.1.1.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/modernizr.custom.js"></script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<title>Login</title>
</head>
<body>
<header>
		<nav class="navbar navbar-inverse" role="navigation">
			<div class="container-fluid"> 
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar" aria-expanded="false">
						<span class="src-only"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html">E-Commerce</a>
				</div>

				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav navbar-left">
						<li class="active"><a href="index.html"> Home</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> Menu<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">Link 1</a></li>
							</ul></li>
					</ul>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="#"><span class="glyphicon glyphicon-user"></span>
								Registrati</a></li>

						<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
								Accedi</a></li>
					</ul>

					<form class="navbar-form" role="search">
						<div class="form-group" style="display: inline">
							<div class="input-group">
								<input type="text" class="form-control" size="80%"
									placeholder="Cerca"> <span class="input-group-addon"><span
									class="glyphicon glyphicon-search"> </span></span>
							</div>
						</div>
					</form>
				</div>
			</div>
		</nav>
	</header>
	
	<div class = "container well">
		<form action ="ViewUsersServlet" class="form horizontal" role="form" method="get">
			<div class="well" id="registration" style="text-align: center;">
				<h2>Accedi</h2>
			</div>
			
			<div class="form group">
				<label for="name" class="col-sm-3 control-label">Username</label>
				<div class="col-sm-9">
					<input type="text" name="username" id="username" placeholder="Username"
						class="form-control" autofocus> 
				</div>
			</div>
			
			<div class="form group">
				<label for="name" class="col-sm-3 control-label">Password</label>
				<div class="col-sm-9">
					<input type="text" name="password" id="password" placeholder="Password"
						class="form-control" autofocus> 
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-3">
					<button type="submit" value="register" class="btn btn-primary btn-block">Register</button>
				</div>
			</div>
		</form>
	
	</div>

</body>
</html>