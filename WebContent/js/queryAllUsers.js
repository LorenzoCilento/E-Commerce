function getAllUsers(){
	$.ajax({
		url:"LoadAllUsersController",
		type:"GET",
		contentType: "application/json; charset=utf-8",
	    dataType: "json",
	    
	    success: function (data) {
	    	
	    	var users=data.users;
	    	
	    	if(users!=null){
	    		var cont=0;
	    		$(".page-struct").empty();
	    		for (var i = 0; i < users.length; ++i) {
	    			var user = users[i];
	    			cont++;
	    			if(i==0){
	    				$(".page-struct").append(
	    						"<div class='col-xs-12 text-center'>"
	    						+	"<div class='table-responsive'>"
	    						+   	"<table class='table table-hover table-striped'  id='div-table'>"
	    	                    +			"<thead class='headTable'>"
	    						+     			"<tr>"
	    						+					"<th>#</th>"
	    						+					"<th>Username</th>"
	    						+					"<th>Password</th>"
	    						+					"<th>Name</th>"
	    						+					"<th>Surname</th>"
	    						+					"<th>E-mail</th>"
	    						+				"</tr>"
	    						+			"</thead>"
	    						+			"<tbody class='tbody'>"
	    						+			"</tbody>"
	    						+		"</table>"
	    						+	"</div>"
	    						+"</div>"
	    												
	    				)
	    			}
    				$(".tbody").append(
						 "<tr>"
						+	"<th>"+ cont +"</th>"
						+	"<th>"+ user.username +"</th>"
						+	"<th>"+ user.password+"</th>"
						+	"<th>"+ user.name +"</th>"
						+	"<th>"+ user.surname +"</th>"
						+	"<th>"+ user.email +"</th>"
						+ "</tr>"
    				)
	    			
	    		}
	    	}
	    	
	    	
	    },
	    
	    error: function(jqXHR, textStatus, errorThrown){
	 		console.log("Error queryAllUsers.js-->" + textStatus);
	 	}
	});
	    
}