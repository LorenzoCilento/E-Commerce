<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="model.bean.User"%>
<!DOCTYPE html>
<html lang="it">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery-3.1.1.js"></script>
<title>Login</title>
</head>
<body>
	<jsp:include page="navBar.jsp"></jsp:include>
	
	<div class="container">
		<div class="row" id="content">
			<form action="LoginAdminController" method="get">
				<h1>Admin</h1>
				<div>
					<input type="text" placeholder="Username" required name="username" id="username" />
				</div>
				<div>
					<input type="password" placeholder="Password" name ="password" required
						id="password" />
				</div>
				<div>
					<input type="submit" value="Log in" /> <a href="userRegistration.jsp">Registra</a>
				</div>
			</form>
			<!-- form -->
		</div>
		<!-- content -->
		
		</div>
	<!-- container -->
	
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

</body>
</html>