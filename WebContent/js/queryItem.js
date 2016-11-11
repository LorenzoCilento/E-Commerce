$(document).ready(
			function (){
				var item = jsonItem.item;
				var cont = 0;
				$("#img").append(
						"<img id='myImg' src="+item[0].path+" >"
                    )
                 $("#title").append(
                		 "<h1 class='page-header'>"
                		 +item[0].name
                      +"   <small>ciccio</small>"
                     +"</h1>"
                    )
	});