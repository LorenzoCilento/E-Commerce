<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="model.bean.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<script src="jquery-3.1.1.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/modernizr.custom.js"></script>
<title>E-Commerce</title>
</head>
<script type="text/javascript">
	var jsonItems =
<%=session.getAttribute("items")%>
	;
</script>
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

						<% if(session.getAttribute("user") == null) { %>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="userRegistration.jsp"><span class="glyphicon glyphicon-user"></span>
								Registrati</a></li>

						<li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>
								Accedi</a></li>
					</ul>
				<%} else { %>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><span
								class="glyphicon glyphicon-user"></span> 
								<%=((User)session.getAttribute("user")).getUsername() %><b class="caret"></b></a>
								<ul class="dropdown-menu">
								<li><a id="logout" >Logout</a></li>
							</ul></li>
								</ul>
								<script> 
									$("#logout").click(
											function() {
												window.location.href = "LogoutController";
											}
									);
								</script>
				<%} %>
					<form class="navbar-form" role="search">
						<div class="form-group" style="display: inline">
							<div class="input-group">
								<input type="text" class="form-control" size="50%"
									placeholder="Cerca"> <span class="input-group-addon"><span
									class="glyphicon glyphicon-search"> </span></span>
							</div>
						</div>
					</form>

				</div>
			</div>
		</nav>
	</header>


	<!-- content -->
	<div class="content">
		<div class="container">
			<h2>Ultimi Prodotti Inseriti</h2>
			<div class="load_more">
				<ul id="myList">
					<li>
						<div class="l_g"></div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- container -->

	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>

</body>
</html>