<!DOCTYPE html>
<html lang="en">

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.bean.User"%>

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

<!-- Custom CSS -->
<!-- <link href="css/shop-homepage.css" rel="stylesheet">-->

<!-- [if lt IE 9 ]  -->
<script src="js/html5shiv.js"></script>
<script src="js/respond.js"></script>
<!--  [endif]  -->
<script type="text/javascript">
	var jsonItem =
<%=session.getAttribute("item")%>
	;
	alert(jsonItem);
</script>
<script type="text/javascript" >

</script>

</head>

<body>

	<!-- Navigation -->
	<nav class="navbar" role="navigation">
		<div class=navbar-inner>
			<div class="container-fluid">

				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavBar" aria-expanded="false">
						<span class="src-only"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="home.jsp">BuyDream</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="myNavBar">
					<ul class="nav navbar-nav navbar-left">
						<li class="active"><a href="home.jsp">Home</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> Menu<b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a href="items.jsp">Prodotti</a></li>
							</ul></li>
					</ul>
					<%
						if (session.getAttribute("user") == null) {
					%>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="userRegistration.jsp"> <span
								class="glyphicon glyphicon-user"></span> Registrati
						</a></li>

						<li><a href="login.jsp"> <span
								class="glyphicon glyphicon-log-in"></span> Accedi
						</a></li>
					</ul>
					<%
						} else {
					%>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <span
								class="glyphicon glyphicon-user"></span> <%=((User) session.getAttribute("user")).getUsername()%><b
								class="caret"></b>
						</a>
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
									placeholder="Cerca"> <span class="input-group-addon">
									<span class="glyphicon glyphicon-search"> </span>
								</span>
							</div>
						</div>
					</form>
				</div>
				<!-- /.navbar-collapse -->

			</div>
			<!-- /.container-fluid -->
		</div>
	</nav>
	<!-- /Navigation -->
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