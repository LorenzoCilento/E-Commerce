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
<script src="bootstrap/js/bootstrap.min.js"></script>

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
</script>

</head>

<body>

	<jsp:include page="navBar.jsp"></jsp:include>
	<!-- Page Content -->
	<div class="container">
        <!-- Portfolio Item Heading -->
        <div class="row">
            <div class="col-lg-12" id="title" >
                
            </div>
        </div>
        <!-- /.row -->
		<!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-8" id="img">
                
            </div>

            <div class="col-md-4">
                <h3>Project Description</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae. Sed dui lorem, adipiscing in adipiscing et, interdum nec metus. Mauris ultricies, justo eu convallis placerat, felis enim.</p>
                <h3>Project Details</h3>
                <ul>
                    <li>Lorem Ipsum</li>
                    <li>Dolor Sit Amet</li>
                    <li>Consectetur</li>
                    <li>Adipiscing Elit</li>
                </ul>
            </div>

        </div>
        <!-- /.row -->


		<div class="row">
			<div class="col-md-5" id="img">
				<div class="col-md-9">
					<h1 id="title"></h1>
				</div>
			</div>

			<div class="col-md-9">

				<!-- Section items -->
				<div class="row">
					<div class="l_g"></div>

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
					<p>Copyright by Rocco_Lorenzo &copy; 2016</p>
				</div>
			</div>
		</footer>

	</div>
	<!-- /.containerFooter -->

</body>

</html>