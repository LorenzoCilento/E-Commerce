<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Home</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="jquery-3.1.1.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/modernizr.custom.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #8C8C8C;
	padding: 25px;
}

.carousel-inner img {
	width: 100%; /* Set width to 100% */
	margin: auto;
	min-height: 200px;
}

.jumbotron {
	background-color: #32CD32;
	color: white;
	margin-bottom: 0;
}

/* Hide the carousel text when the screen is less than 600 pixels wide */
@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
	}
}
</style>
</head>
<body>
	<div>
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
								<li><a href="/E-Commerce//MyServlet">Link 1</a></li>
							</ul></li>
					</ul>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="userRegistration.html"><span
								class="glyphicon glyphicon-user"></span> 
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
	</div>


	<div class="jumbotron text-center">
		<h1>Il miglior sito E-Commerce</h1>
		<p>Compra tutto ciò che vuoi!</p>
	</div>


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
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>



	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>

</body>
</html>