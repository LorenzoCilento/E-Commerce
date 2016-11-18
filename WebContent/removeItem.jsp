<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="js/removeItem.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	removeGetItem();
});
</script>
<title>Remove item</title>
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
			<li><a href="addItem.jsp">Inserisci Prodotto</a></li>
			<li><a href="removeItem.jsp">Rimuovi Prodotto</a></li>
			<li><a href="#">Contattaci</a></li>
		</ul>
	</div>
	<!-- /#sidebar-wrapper -->
	
	<div class="container fluid col-sm-8 col-sm-offset-3">
            	
            	<!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            All Users...
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-hashtag"></i>  <a href="AdminPanel.jsp">Dashboard</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-users"></i> All Users...
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-xs-12">
               			<div class="page-struct">
               			</div>
                	</div>
                </div>
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-xs-12">
                    	<label>Choose the line number (under the column #), which you want to delete: </label>
                    	<input type="text" class="input-choose" id="valueId">
            			<button type="button" class="submit-button" id="deleteButton">Delete</button>
            		</div>
            	</div>
            </div>
            
            <script type="text/javascript">
            	$("#deleteButton").click(function() { 
            		var id = document.getElementById("valueId").value;
					removeItem(id);
				});
            </script>
</body>
</html>