<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.bean.User"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
<script type="text/javascript">
<%session.setAttribute("check",false);%>
</script>
<script type="text/javascript">
	function checkUsername(username){
		if(username!=""){
				$.ajax({
					type: "POST",
					url: "CheckUserController",
					data: {username:username},
					
	                success: function( data, status) {
	                	var result = data;
	                	if(result == "success"){
	                		
	                		$("#usernameForm").addClass("form-group has-success has-feedback");
	                		$("#glyphiconFormUsername").addClass("glyphicon glyphicon-ok form-control-feedback");
	                	}
	                	else if(result == "error"){
							$("#usernameForm").addClass("form-group has-error has-feedback");
							$("#glyphiconFormUsername").addClass("glyphicon glyphicon-remove form-control-feedback");	
							$("#err")
							.append(
									"<div id='existUsername' class='alert alert-danger'>"
											+ "<strong>Errore!</strong> Username non disponibile, riprova</div>");
							window.setTimeout(function() {
								$("#err").fadeTo(500, 0).slideUp(
										500, function() {
											$("#err").empty();
											$("#err").removeAttr("style");
										});
								$("#inputUsername").val("");
								$("#usernameForm").removeClass();
								$("#glyphiconFormUsername").removeClass();
							}, 3000);
	                	}
	                },
	                
	                error: function(jqXHR, textStatus, errorThrown){
	                	console.log("Error into registration.jsp-->" + textStatus)
	                }
	                
				});
		}
		else{
			$("#usernameForm").addClass("form-group has-warning has-feedback");
			$("#glyphiconFormUsername").addClass("glyphicon glyphicon-warning-sign form-control-feedback");
			$("#err").append(
					"<div id='existUsername' class='alert alert-warning'>"
							+ "<strong>Warning!</strong> Username required!!</div>");
			window.setTimeout(function() {
				$("#err").fadeTo(500, 0).slideUp(
						500, function() {
							$("#err").empty();
							$("#err").removeAttr("style");
						});
				$("#inputUsername").val("");
				$("#usernameForm").removeClass();
				$("#glyphiconFormUsername").removeClass();
			}, 3000);
		}
	}
	</script>
</head>

<body>
	
	
	 <div id="usernameForm">
      <label class="col-sm-2 control-label" for="inputSuccess">User Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="inputUsername" placeholder="Username" onblur="checkUsername(this.value)">
        <span id="glyphiconFormUsername"> </span>
        <div id="err"></div>
      </div>
    </div>
</body>
</html>