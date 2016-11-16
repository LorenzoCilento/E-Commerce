function getItem(param){
	$.ajax({
		url: "LoadItemController",
		type:"GET",
		contentType: "application/json; charset=utf-8",
		data: {id : param},
		dataType: "json",
		success: function (data){
			var item = data.item;
            var img = document.getElementById("myImg");
				img.setAttribute("src",item[0].path);
			$("#title").text(item[0].name)
				
               $("#description").append(
               "<p>"+item[0].description+"</p>"
               )
               $("#btnBuyNow").text("Compralo Subito a "+item[0].price+" €");
		}
	});
}

function getBid(param){
	$.ajax({
		url: "LoadBidByItem",
		type:"GET",
		contentType: "application/json; charset=utf-8",
		data: {id : param},
		dataType: "json",
		success: function (data){
			var bid = data.bids;
			if(bid.length == 0){
				$("#bidValue1").text("Non ci sono offerte!")
				$("#bidValue2").text("Fai la prima offerta.")
			}
			else {
				$("#bidValue1").text("L'utima offerta è di "+bid[0].price+" €")
				$("#bidValue2").text("Fai un offerta superiore:")
			}
              
		}
	});
}


