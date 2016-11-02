$(document)
		.ready(
				function() {
					var items = jsonItems.items;
					for (var i = 0; i < menu.length; ++i) {
						var item = items[i];
						$(".l_g").append(
								+"<div class='col-md-3 integ'>"
								+ "<div class='l_g_r'>"
								+ "<div id="+ i +" class='integer'>"
								+ "<a href='#'><h3>"
								+item.name
								+ "</div>"
								+ "</div>"
								+ "</div>"
						)
					}
				});

