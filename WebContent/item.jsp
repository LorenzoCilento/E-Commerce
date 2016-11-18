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
<script type="text/javascript" src="js/queryAllItems.js"></script>
<script type="text/javascript" src="js/getParameterFromURL.js"></script>
<script type="text/javascript">
	var itemId = $.urlParams('id');
	$(document).ready(function() {
		getItem(itemId);
		getBid(itemId);
		getAllItems("all");
	});
</script>

</head>

<body>

	<jsp:include page="navBar.jsp"></jsp:include>

	<!-- Page Content -->
	<div class="container">

		<!-- Portfolio Item Heading -->
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<h1 class="page-header" id="title"></h1>
			</div>
		</div>
		<!-- /.row -->

		<div class="row">
			<div class="col-lg-6 col-md-6">
				<div class="thumbnail">
					<img id="myImg">
				</div>
			</div>
			<div class="col-lg-6 col-md-6">
				<h1>Descrizione</h1>
				<p id="description"></p>
			</div>
			<div class="col-lg-4 col-md-4">
				<h3 id="bidValue1"></h3>
				<%
					if (session.getAttribute("user") != null) {
				%>
				<h4 id="bidValue2"></h4>
				<div>
					<input type="text" id="bidText" placeholder="inserisci">
					<button class="btn btn-primary" value="placeBid" id="btnBid">Piazza
						offerta</button>
					<h4>Oppure</h4>
					<button class="btn btn-success" id="btnBuyNow"></button>
				</div>
				<%
					} else {
				%>
				<h2>Per acquistare il prodotto effettua il login o registrati</h2>
				<%
					}
				%>
			</div>
		</div>
		<div class="row"></div>
		<!-- /.row -->



		<div class="col-md-9">
			<!-- Section items -->
			<div class="row" id="myThumbnail">
				<hr>
				<h1>Altri Prodotti</h1>
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

	<script type="text/javascript">
		$("#btnBid").click(function addBid() {
			var price = document.getElementById("bidText").value;
			$.ajax({
				url : "AddBidServlet",
				type : "GET",
				data : {
					itemId : itemId,
					price : price
				},
				success : function(response) {

					if(response == "success"){
						alert("L'offerta è stata aggiunta");
						getItem(itemId);
						getBid(itemId);
					} else {
						alert("L'offerta è troppo bassa");
						getItem(itemId);
						getBid(itemId);
					}
				}
			});
		});
	</script>

</body>

</html>