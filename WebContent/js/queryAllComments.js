function getAllComments(){
	$.ajax({
		url:"LoadAllCommentsController",
		type:"GET",
		contentType: "application/json; charset=utf-8",
	    dataType: "json",
	    
	    success: function (data) {
	    	
	    	var comments=data.comments;
	    	
	    	if(comments!=null){
	    		$(".all-comments").empty();
	    		for (var i = 0; i < comments.length; ++i) {
					var comment = comments[i];
					cont=1;
					if(i==0)
					$(".all-comments").append(
						"<div class='col-sm-4 col-lg-4 col-md-4'>" 
						+ "<div class='container'> <h2>Table</h2> "
						+ "  <div class='table-responsive'>"
						+ "  <table class='table'> "
						+ "   <thead>"
						+      "<tr>"
						+      "<th>#</th>"
						+      "<th>Date</th>"
						+      "<th>Username</th>"
						+       "<th>ItemId</th>"
						+       "<th>Text</th>"
						+     "</tr>"
						+   "</thead>"
						+   "<tbody class='tbody'>"
						+   "</tbody>"
						+ "</table>"
						+ "</div>"
						+"</div>"
					+" </div>"
					)	
					$(".tbody").append(
							     "<tr>"
							+       "<td>"+cont+"</td>"
							+       "<td>"+ comment.date +"</td>"
							+       "<td>"+ comment.username +"</td>"
							+       "<td>"+ comment.itemId +"</td>"
							+		"<td>"+ comment.text +"</td>"
							+     "</tr>"
					)
							
	    		}
	    		
	    	}
	    },
	    error: function(jqXHR, textStatus, errorThrown){
	 		console.log("Error queryAllComment.js-->" + textStatus);
	 	}
	});
}