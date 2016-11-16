function getAllItems(param) {
	if (param != "all") {
		$.ajax({
			url:"LoadAllItemByCategory",
			type:"GET",
			contentType: "application/json; charset=utf-8",
			data :{category : param},
		    dataType: "json", 
		    success: function (data,status) {
		    	var items = data.item;
		    	for (var i = 0; i < items.length; ++i) {
					var item = items[i];
					$("#myThumbnail").append(               
							"<div class='col-sm-4 col-lg-4 col-md-4'>"
							+"<div class='thumbnail' id='bigThumbnail'>"
								+" <img src="+ item.path +" class='img-responsive' alt=''>"
	                          +" <div class='caption'>"
	                          +" <h4 class='pull-right'>€ " +item.price +"</h4>"
	                          +"  <h4><a href='item.jsp?id="+item.id+"'>"+item.name+"</a>"
	                              +"  </h4>"
	                           +" <p>"
	                           +"  <a href='#' class='btn btn-primary'>Piazza un'offerta</a>"
	                           +"  <a href='#' class='btn btn-success'>Compralo subito</a>"
	                           +"  </p>" 
	                           + "   <div class='ratings'>"
	                           	+		"<p>"+item.vote+" recensioni</p>"
	                           +"</div>"
	                            +"</div>"
	                            +"</div>" 
	                            +"</div>" )
	                           
	                            
	                           
				}
		    }
		});
	}
	else {
		$.ajax({
			url:"LoadAllItemController",
			type:"GET",
			contentType: "application/json; charset=utf-8",
	        dataType: "json", 
	        success: function (data,status) {
	        	var items = data.items;
				for (var i = 0; i < items.length; ++i) {
					var item = items[i];
					$("#myThumbnail").append(               
							"<div class='col-sm-4 col-lg-4 col-md-4'>"
							+"<div class='thumbnail' id='bigThumbnail'>"
								+" <img src="+ item.path +">"
	                          +" <div class='caption'>"
	                          +" <h4 class='pull-right'>€ " +item.price +"</h4>"
	                          +"  <h4><a href='item.jsp?id="+item.id+"'>"+item.name+"</a>"
	                              +"  </h4>"
	                           +" <p>"
	                           +"  <a href='#' class='btn btn-primary'>Piazza un'offerta</a>"
	                           +"  <a href='#' class='btn btn-success'>Compralo subito</a>"
	                           +"  </p>" 
	                           + "   <div class='ratings'>"
	                           	  +		"<p>"+item.vote+" recensioni</p>"
	                                +"</div>"
	                              +"</div>"
	                            +"</div>" 
	                       +"</div>" )
	                             
				}
	        }
		});
	}
}