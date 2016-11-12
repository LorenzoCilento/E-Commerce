function getItem(param){
	$.ajax({
		url: "LoadItemController",
		type:"GET",
		contentType: "application/json; charset=utf-8",
		data: {id : param},
		dataType: "json",
		success: function (data){
			var item = data.item;
			$("#img").append(
					"<img id='myImg' src="+item[0].path+" >"
                )
             $("#title").append(
            		 "<h1 class='page-header'>"
            		 +item[0].name
                  +"   <small>ciccio</small>"
                 +"</h1>"
                )
		}
	});
}