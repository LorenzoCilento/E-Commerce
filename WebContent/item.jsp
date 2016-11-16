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
	});
	$(document).ready(function(){
		getBid(id);
	});
	function placeBid () {
		alert("ccc");
	}
	
	function addBid(){		
		var price = document.bidForm.bidText.value;
		$.ajax({
			url: "AddBidServlet",
			type:"GET",
			data:{itemId : id , price : price},
			success:function(data){
				alert("ci");
			}
		});
	}
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
        	<div class="col-lg-6 col-md-6">
			<div class="thumbnail">
				<img id="myImg">
			</div>				
			</div>
			<div class="col-lg-6 col-md-6">
				<h1>Descrizione</h1>
				<p id="description"></p>        
			</div>
        	<div class="col-lg-4 col-md-4" >
        		<h3 id="bidValue1"></h3>
            	<h4 id="bidValue2"></h4>
            	<form method="post" name="bidForm">
	        	    <input type="text" name="bidText">
	        	    <button class="btn btn-primary" value="placeBid" id="btnBid" onclick="addBid()" >Piazza offerta</button>
	        	    <h4 >Oppure </h4>
	        	    <button class="btn btn-success" id="btnBuyNow"></button>
        	    </form>
            </div>
        </div>
        <div class="row">
        
        </div>
        <!-- /.row -->



			<div class="col-md-9">
			<!-- Section items -->
				<div class="row" id="myThumbnail">
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

</body>

</html>