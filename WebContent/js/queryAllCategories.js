$.ajax({
		url:"LoadAllCategoriesController",
		type:"GET",
		contentType: "application/json; charset=utf-8",
        dataType: "json", 
        success: function (data,status) {
        	var categories = data.categories;
			for (var i = 0; i < categories.length; ++i) {
				var category = categories[i];
				var cont = 0;
				$("#listCategories").append(
						"<a href='items.jsp?cat="+category.name+"' id='categoryButton' class='list-group-item'>"+category.name+"</a>")
			}
        }
	});