<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="model.bean.User"%>
<!DOCTYPE html>
<html lang="it">  
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BuyDream Homepage - Your best E-Commerce</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery-3.1.1.js"></script>
<script src="bootstrap/js//bootstrap.min.js"></script>
</head>
<body>
	<!-- Navigation -->
    <nav class="navbar navbar-inverse" role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                 data-target="#myNavBar" aria-expanded="false">
                    <span class="src-only"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="home.jsp">BuyDream</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="myNavBar">
                <ul class="nav navbar-nav navbar-left">
                    <li class="active">
                        <a href="home.jsp">Home</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        	Menu<b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                        	<li><a href="items.jsp?cat=all">Prodotti</a></li>
                        </ul>
                    </li>
                </ul>
                	<%	if(session.getAttribute("user") == null) { %>
							<ul class="nav navbar-nav navbar-right">
								<li>
									<a href="userRegistration.jsp">
										<span class="glyphicon glyphicon-user"></span>
											Registrati
									</a>
								</li>

								<li>
									<a href="login.jsp">
										<span class="glyphicon glyphicon-log-in"></span>
											Accedi
									</a>
								</li>
							</ul>
					<%} else { %>
							<ul class="nav navbar-nav navbar-right">
								<li class="dropdown">
									<a href="#" class="dropdown-toggle"	data-toggle="dropdown">
										<span class="glyphicon glyphicon-user"></span> 
										<%=((User)session.getAttribute("user")).getUsername() %><b class="caret"></b>
									</a>
									<ul class="dropdown-menu">
										<li><a id="logout" >Logout</a></li>
									</ul>
								</li>
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
							placeholder="Cerca">
									<span class="input-group-addon">
										<span class="glyphicon glyphicon-search"> 
										</span>
									</span>
            		</div>
            	</div>
            </form>
            </div>
            <!-- /.navbar-collapse -->
            
        </div>
        <!-- /.container-fluid -->
    </nav>
	<!-- /Navigation -->
</body>
</html>