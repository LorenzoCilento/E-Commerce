$(document)
		.ready(
				function() {
					var items = jsonItems.items;
					for (var i = 0; i < items.length; ++i) {
						var item = items[i];
						$(".l_g").append(
								"<div class='col-md-3 integ'>"
									+"<img src="+ item.path + " class='img-responsive' alt=''>"
									+item.name
									+"|"
									+item.category
									+"|"
									+item.price
									+"|"
									+item.vote
									+"|"
									+item.description
									+"|"
									+item.description
									+"|"
									+item.description
									+ "</div>");
					}
				});