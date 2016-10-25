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
<title>Registration</title>
</head>
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

	<div class="container well">
		<form action ="process.jsp" class="form horizontal" role="form" method="post">
			<div class="well" id="registration" style="text-align: center;">
				<h2>Registrazione</h2>
			</div>
			<div class="form group">
				<label for="name" class="col-sm-3 control-label">Nome</label>
				<div class="col-sm-9">
					<input type="text" name="name" id="name" placeholder="Nome"
						class="form-control" autofocus> <span class="help-block">Es.
						Francesco Rossi</span>
				</div>
			</div>
			<div class="form group">
				<label for="e-mail" class="col-sm-3 control-label">E-mail</label>
				<div class="col-sm-9">
					<input type="text" name="email" id="e-mail" placeholder="E-mail"
						class="form-control" autofocus> <span class="help-block">Es.
						francescorossi@e-commerce.it</span>
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-sm-3 control-label">Password</label>
				<div class="col-sm-9">
					<input type="password" id="password" placeholder="Password"
						class="form-control"> <span class="help-block"></span>
				</div>
			</div>
			<div class="form-group">
				<label for="birthDate" class="col-sm-3 control-label">Date
					di nascita</label>
				<div class="col-sm-9">
					<input type="date" id="birthDate" class="form-control"> <span
						class="help-block"></span>
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
			<!-- /.form-group -->
			<div class="form-group">
				<div class="col-sm-9 col-sm-offset-3">
					<button type="submit" value="register" class="btn btn-primary btn-block">Register</button>
				</div>
			</div>
		</form>
	</div>


	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>

</body>
</html>