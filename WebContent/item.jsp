<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.bean.User"%>

<!DOCTYPE html>
<html lang="it">

<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script src="js/jquery-3.1.1.js"></script>

<title>BuyDream Homepage - You best E-Commerce</title>

<!-- Bootstrap Core CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="js/queryItem.js"></script>
<script type="text/javascript" src="js/getParameterFromURL.js"></script>
<script type="text/javascript">
	var id = $.urlParams('id');
	$(document).ready(function(){
		getItem(id);
		getBid(id);
	});
</script>

</head>

<body>

	<jsp:include page="navBar.jsp"></jsp:include>
	
	<!-- Page Content -->
	<div class="container">
        <!-- Portfolio Item Heading -->
        <div class="row">
            <div class="col-lg-12 col-md-12" >
              <h1 class="page-header" id="title"></h1>  
            </div>
        </div>
        <!-- /.row -->
        
        <div class="row">
        	<div class="thumbnail col-lg-4 col-md-4">
				<img id="myImg">
			</div>
			<div class="col-lg-8">
				<h1>Descrizione</h1>
				<p id="description"></p>        
			</div>
        </div>
        <div class="row">
        	<div class="col-lg-4 col-md-4" >
        		<h3 id="bidValue"></h3>
            	<h4 >Fai un offerta superiore </h4>
        	    <input type="text" id="bidText">
        	    <button class="btn btn-primary" id="btnBid">Piazza offerta</button>
        	    <h4 >Oppure </h4>
        	    <button class="btn btn-success" id="btnBuyNow"></button>
            </div>
        
        </div>
        <!-- /.row -->



			<div class="col-md-9">

				<!-- Section items -->
				<div class="row">
					<h1>Altri Prodotti</h1>
					<div class="l_g"></div>

				</div>
				<!-- /Section items -->
			</div>

		</div>




	<!-- /.container -->

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

</body>

</html>