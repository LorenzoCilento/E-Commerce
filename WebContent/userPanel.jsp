<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="model.bean.User"%>
<!DOCTYPE html>
<html lang="it">

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>UserPanel</title>
	
	<!-- Bootstrap Core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
     <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

   <jsp:include page="navBar.jsp"></jsp:include>
  
  <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a>
                        Il tuo profilo
                    </a>
                </li>
                <li>
                    <a href="#">Account</a>
                </li>
                <li>
                    <a href="#">Aste a cui stai partecipando</a>
                </li>
                <li>
                    <a href="#">Acquistati</a>
                </li>
                <li>
                    <a href="addItem.jsp">Inserisci Prodotto</a>
                </li>
                <li>
                    <a href="#">Rimuovi Prodotto</a>
                </li>
                <li>
                    <a href="#">Contattaci</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

</body>

</html>