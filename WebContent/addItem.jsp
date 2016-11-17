<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="model.bean.User"%>
<!DOCTYPE html>
<html lang="it">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Inserisci oggetto</title>

<!-- Bootstrap Core CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

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
			<li class="sidebar-brand"><a> Il tuo profilo </a></li>
			<li><a href="#">Account</a></li>
			<li><a href="#">Aste a cui stai partecipando</a></li>
			<li><a href="#">Acquistati</a></li>
			<li><a href="" id="btnAddItem">Inserisci Prodotto</a></li>
			<li><a href="#">Rimuovi Prodotto</a></li>
			<li><a href="#">Contattaci</a></li>
		</ul>
	</div>
	<!-- /#sidebar-wrapper -->

	<div class="container well col-sm-8 col-sm-offset-3">
		<form action="AddUserServlet" class="form horizontal" role="form"
			method="post">
			<div class="well" id="registration" style="text-align: center;">
				<h2>Inserisci Prodotto</h2>
			</div>
			<div class="form-group" id="nameForm">
				<label for="name" class="col-sm-3 col-md-3 col-lg-3 control-label"
					id="name">Nome <span> (Required)</span>
				</label>
				<div class="col-sm-9 col-md-9 col-lg-9">
					<input type="text" class="form-control" name="name" id="inputName"
						placeholder="Name" required> <span id="glyphiconFormName">
					</span> <span class="help-block">Es. Iphone 5s<small>[Minimum
							3 and maximum 15 letter]</small></span>
					<div id="errName"></div>
				</div>
			</div>
			<div class="form group">
				<label for="surname"
					class="col-sm-3 col-md-3 col-lg-3 control-label" id="surname">Prezzo
					<span> (Required)</span>
				</label>
				<div class="col-sm-9 col-md-9 col-lg-9">
					<input type="text" name="price" id="price" placeholder="Surname"
						class="form-control" required> <span class="help-block">Es.
						20 <small>[Minimum 3 and maximum 15 letter]</small>
					</span>
				</div>
			</div>
			<div class="form-group" id="emailForm">
				<label for="e-mail" class="col-sm-3 col-md-3 col-lg-3 control-label">Descrizione
					<span> (Opzionale)</span>
				</label>
				<div class="col-sm-9 col-md-9 col-lg-9">
					<textarea rows="3" placeholder="inserisci qui la tua descrizione"></textarea>
				</div>
			</div>
			
			<div class="form-group" id="usernameForm">
				<label for="username"
					class="col-sm-3 col-md-3 col-lg-3 control-label" id="username">Categoria
					<span> (Required)</span>
				</label>
				<div class="col-sm-9 col-md-9 col-lg-9">
					<select>
						<option>Abbigliamento</option>
						<option>Elettronica</option>
						<option>Motori</option>

					</select>
				</div>
			</div>
			
			<div class="form-group">
				<label
					class="col-sm-3 col-md-3 col-lg-3 control-label" >Foto			
				</label>
				<div class ="col-sm-9 col-md-9 col-lg-9">
					<input type="text" class="form-control">
					<input type="file" >
				</div>
			</div>
			
			<div class="form-group">
				<div
					class="col-sm-9 col-md-9 col-lg-9 col-sm-offset-3 col-md-offset-3 col-lg-offset-3">
					<button type="submit" id="submitForm" value="register"
						class="btn btn-primary btn-block">
						Inserisci<span id="glyphiconSubmitForm"> </span>
					</button>
					<div id="errSubmitForm"></div>
				</div>
			</div>
			<!-- /.form-group -->
		</form>
	</div>

</body>

</html>