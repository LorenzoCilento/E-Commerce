<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="model.bean.User" %>
<!DOCTYPE html>
<html lang="it">
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<link href="css/style.css" rel="stylesheet" type="text/css"
	media="all">
<script src="js/jquery-3.1.1.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>

    <title>BuyDream Homepage - You best E-Commerce</title>

    <!-- Bootstrap Core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="js/queryAllItem.js"></script>
<script type="text/javascript" src="js/queryAllCategories.js"></script>

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
                        	<li><a href="#">Prodotti</a></li>
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
	
    <!-- Page Content -->
    <div class="container">

        <div class="row">
          <div class="col-md-3">
				<h1 class="lead">Categorie</h1>
				<div class="list-group" id="listCategories">
					
				</div>
			</div>

            <div class="col-md-9">

                
				
				<!-- Section items -->
                <div class="row" >
                    <div class="l_g">
                    
                    </div>

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