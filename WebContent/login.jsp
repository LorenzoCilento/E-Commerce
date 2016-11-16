<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.bean.User"%>
<!DOCTYPE html>
<html lang="it">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
<title>Login</title>
</head>
<body>
	<jsp:include page="navBar.jsp"></jsp:include>
	
	<div class="container">
		 <div class="row">
		  <div class="col-lg-6 col-md-6">
		<section id="content">
			<form action="LoginController" method="get">
				<h1>Login Form</h1>
				<div>
					<input type="text" placeholder="Username" required name="username" id="username" />
				</div>
				<div>
					<input type="password" placeholder="Password" name ="password" required
						id="password" />
				</div>
				<div>
					<input id="btnSubmit" type="submit" value="Log in" /> <a href="userRegistration.jsp">Register</a>
				</div>
			</form>
			<!-- form -->
		</section>
		<!-- content -->
		
		</div>
		</div>
		
	</div>
	<!-- container -->

</body>

</body>
</html>