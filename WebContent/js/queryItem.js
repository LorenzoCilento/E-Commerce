$(document).ready(
			function (){
				var item = jsonItem.item;
				var cont = 0;
				$(".l_g").append(
						"<div class='col-sm-4 col-lg-4 col-md-4'>"
	                    +   " <div class='thumbnail'>"
	                          +" <img src="+ item[0].path +" class='img-responsive' alt=''>"
	                          +" <div class='caption'>"
	                          +" <h4 class='pull-right'>€ " + item[0].price +"</h4>"
	                          +"  <h4><a href='#'>"+item[0].name+"</a>"
	                              +"  </h4>"
	                           +" <p>"
	                           +"  <a href='#' class='btn btn-primary'>Piazza un'offerta</a>"
	                           +"  </p>" 
	                           +"   <div class='ratings'>"
	                           +"   	<p>"
		                        +"   	<span class='glyphicon glyphicon-star'></span>"
		                        +"    	 <span class='glyphicon glyphicon-star'></span>"
		                        +"     	 <span class='glyphicon glyphicon-star'></span>"
		                        +"       <span class='glyphicon glyphicon-star'></span>"
		                        +"       <span class='glyphicon glyphicon-star-empty'></span>"	
		                        +"       <span class='pull-right'>15 recensioni</span>"	
		                        +"     </p>"
	                           +" </div>"
	                            +"</div>"
	                        +"</div>"
	                        +"</div>")
			
	});