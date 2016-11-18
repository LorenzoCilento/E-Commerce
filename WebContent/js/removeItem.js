function removeGetItem(){
	$.ajax({
		url:"LoadAllUserItemController",
		type:"GET",
		contentType: "application/json; charset=utf-8",
	    dataType: "json",
	    
	    success: function (data) {
	    	
	    	var items=data.items;
	    	
	    	if(items!=null){
	    		var cont=0;
	    		$(".page-struct").empty();
	    		for (var i = 0; i < items.length; ++i) {
	    			var item = items[i];
	    			cont++;
	    			if(i==0){
	    				$(".page-struct").append(
	    						"<div class='col-xs-12 text-center'>"
	    						+	"<div class='table-responsive'>"
	    						+   	"<table class='table table-hover table-striped'  id='div-table'>"
	    	                    +			"<thead class='headTable'>"
	    						+     			"<tr>"
	    						+					"<th>id</th>"
	    						+					"<th>name</th>"
	    						+					"<th>category</th>"
	    						+					"<th>price</th>"
	    						+					"<th>username</th>"
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
						 "<tr class=''"+cont +">"
						+	"<th>"+ item.id +"</th>"
						+	"<th>"+ item.name+"</th>"
						+	"<th>"+ item.category +"</th>"
						+	"<th>"+ item.price +"</th>"
						+	"<th>"+ item.username +"</th>"
						+ "</tr>"
    				)
	    			
	    		}
	    	}
	    	
	    	
	    },
	    
	    error: function(jqXHR, textStatus, errorThrown){
	 		console.log("Error removeItem.js-->" + textStatus);
	 	}
	});	    
}
	
function removeItem(param){	
	$.ajax({
		url:"RemoveItemController",
		type:"POST",
		data:{itemId : param},
	    success: function (data) {
	    	alert("L'oggetto è stato rimosso");
	    	removeGetItem();
	    }
	});
}

