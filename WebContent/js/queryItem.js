$(document)
		.ready(
				function() {
					var items = jsonItems.items;
					for (var i = 0; i < items.length; ++i) {
						var item = items[i];
						$(".l_g").append(
								"<div >"
									
									+item.name
									+"|"
									+item.category
									+"|"
									+item.price
									+"|"
									+item.vote
									+"|"
									+item.description
									
									+ "</div>");
					}
				});