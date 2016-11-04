$(document)
		.ready(
				function() {
					var items = jsonItems.items;
					for (var i = 0; i < items.length; ++i) {
						var item = items[i];
						$(".l_g").append(
								"<div class='col-sm-4 col-lg-4 col-md-4'>"
			                        +   " <div class='thumbnail'>"
			                          +" <img src="+ item.path +" alt=''>"
			                          +" <div class='caption'>"
			                          +" <h4 class='pull-right'>€" + item.price +"</h4>"
			                          +"  <h4><a href='#'>"+item.name+"</a>"
			                              +"  </h4>"
			                               +" <p>"+item.description+"</p>"
			                               +"   <div class='ratings'>"
			                               +"     <p class='pull-right'>15 reviews</p>"
			                           +" </div>"
			                           +" <p>"
			                           +"  <a href='#' class='btn btn-primary'>Piazza un'offerta</a>"
			                           +"  </p>"
			                             
			                            +"</div>"
			                        +"</div>"
			                        +"</div>");
					}
				});