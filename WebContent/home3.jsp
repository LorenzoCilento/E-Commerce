<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.bean.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Home</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="jquery-3.1.1.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/modernizr.custom.js"></script>
<script type="text/javascript">
	var jsonItems =
<%=session.getAttribute("items")%>
	;
</script>

<script src="js/queryItem.js"></script>
</head>
<body>
	<header> <nav class="navbar navbar-inverse" role="navigation">
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
						<li><a href="LoadItemController">Prodotti</a></li>
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
				$("#logout").click(function() {
					window.location.href = "LogoutController";
				});
			</script>
			<%
				}
			%>
			<form class="navbar-form" role="search">
				<div class="form-group" style="display: inline">
					<div class="input-group">
						<input type="text" class="form-control" size="50%"
							placeholder="Cerca">
							 <span class="input-group-addon">
							 <span class="glyphicon glyphicon-search"> 
							 </span>
							 </span>
					</div>
				</div>
			</form>
		</div>
	</div>
	</nav> 
	</header>


	<div class="jumbotron text-center">
		<h1>Il miglior sito E-Commerce</h1>
		<p>Compra tutto ciò che vuoi!</p>
	</div>

	<!-- container -->
	<div class="container">

		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">

				<div class="item active">
					<img src="Media/Ducati.jpg" alt="Image">
					<div class="carousel-caption">
						<h3>Sell $</h3>
						<p>Money Money.</p>
					</div>
				</div>

				<div class="item">
					<img src="Media/Iphone.jpg" alt="Image">
					<div class="carousel-caption">
						<h3>More Sell $</h3>
						<p>Lorem ipsum...</p>
					</div>
				</div>

				<div class="item">
					<img src="Media/tv.png" alt="Image">
					<div class="carousel-caption">
						<h3>More Sell $</h3>
						<p>Lorem ipsum...</p>
					</div>
				</div>
			</div>


			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>



		<h1>Ultimi Prodotti</h1>
		<div class="row">
			<div class="l_g"></div>
		</div>

		<h1>Elettronica</h1>
		<div class="row">
			<div class="l_g"></div>
		</div>


	</div>


	<footer class="container-fluid text-center">
	<p>Footer Text</p>
	</footer>
</html>