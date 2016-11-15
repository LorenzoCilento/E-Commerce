<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.bean.User"%>
<!DOCTYPE html>
<html lang="it">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all">

<link href="bootstrap.css" rel="stylesheet" type="text/css" media="all">

<script src="js/jquery-3.1.1.js"></script>

<title>BuyDream Homepage - Your best E-Commerce</title>
<!-- Bootstrap Core CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="js/queryAllItems.js"></script>
<script type="text/javascript" src="js/queryAllCategories.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	getAllItems("all");
});
</script>
</head>

<body>
	
	<jsp:include page="navBar.jsp"></jsp:include>
	
	<!-- Page Content -->
	<div class="container">

		<div class="row">
			<div class="col-md-3">
				<h1 class="lead">Categorie</h1>
				<div class="list-group" id="listCategories"></div>
			</div>

			<div class="col-md-9">

				<div class="row carousel-holder">

					<div class="col-md-12">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
								<li data-target="#myCarousel" data-slide-to="2"></li>
							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<img class="slide-image" src="Media/Ducati.jpg" alt="ducati">
									<div class="carousel-caption">
										<h3>Sell $</h3>
										<p>Money Money.</p>
									</div>
								</div>
								<div class="item">
									<img class="slide-image" src="Media/Iphone.jpg" alt="iphone">
									<div class="carousel-caption">
										<h3>More Sell $</h3>
										<p>Lorem ipsum...</p>
									</div>
								</div>
								<div class="item">
									<img class="slide-image" src="Media/tv.png" alt="tv">
									<div class="carousel-caption">
										<h3>More Sell $</h3>
										<p>Lorem ipsum...</p>
									</div>
								</div>
							</div>
							<!-- /Wrapper for slides -->

							<!-- Left and right controls -->
							<a class="left carousel-control" href="#myCarousel" role="button"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a> <a class="right carousel-control" href="#myCarousel"
								role="button" data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span> <span
								class="sr-only">Next</span>
							</a>
							<!-- /Left and right controls -->
						</div>
					</div>

				</div>

				<!-- Section items -->
				<div class="row" id="myThumbnail">
					<h1>Ultimi Prodotti</h1>
				</div>
				<!-- /Section items -->
			</div>
		</div>

	</div>

	<!-- /.container -->

	<div class="containerFooter">
		<hr>

		<!-- Footer -->
		<footer class="container-fluid text-center">
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright by Rocco_Lorenzo&copy; 2016</p>
				</div>
			</div>
		</footer>
	</div>
	<!-- /.containerFooter -->
</body>
</html>