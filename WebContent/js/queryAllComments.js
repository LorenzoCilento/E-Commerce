function getAllComments(){
	$.ajax({
		url:"LoadAllCommentsController",
		type:"GET",
		contentType: "application/json; charset=utf-8",
	    dataType: "json",
	    
	    success: function (data) {
	    	
	    	var comments=data.comments;
	    	
	    	if(comments!=null){
	    		var cont=0;
	    		$(".page-struct").empty();
	    		for (var i = 0; i < comments.length; ++i) {
					var comment = comments[i];
					cont++;
					if(i==0)
					$(".page-struct").append(
						"<div class='col-xs-12 text-center'>"
						+	"<div class='table-responsive'>"
						+   	"<table class='table table-hover table-striped'  id='div-table'>"
	                    +			"<thead class='headTable'>"
						+     			"<tr>"
						+					"<th>#</th>"
						+					"<th>Date</th>"
						+					"<th>Username</th>"
						+					"<th>ItemId</th>"
						+					"<th>Text</th>"
						+				"</tr>"
						+			"</thead>"
						+			"<tbody class='tbody'>"
						+			"</tbody>"
						+		"</table>"
						+	"</div>"
						+"</div>"
												
					)	
					$(".tbody").append(
							 "<tr>"
							+	"<th>"+ cont +"</th>"
							+	"<th>"+ comment.date +"</th>"
							+	"<th>"+ comment.username +"</th>"
							+	"<th>"+ comment.itemId +"</th>"
							+	"<th>"+ comment.text +"</th>"
							+ "</tr>"
					)
							
	    		}
	    		
	    	}
	    },
	    error: function(jqXHR, textStatus, errorThrown){
	 		console.log("Error queryAllComment.js-->" + textStatus);
	 	}
	});
}