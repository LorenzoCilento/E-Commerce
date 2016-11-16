function addBid(username, ItemId, price){
	$.ajax({
		url: "AddBidServlet",
		type:"GET",
		contentType: "application/json; charset=utf-8",
		data: {username : username , itemId : ItemId , price : price},
		dataType: "json",
		success: function (data){
			var bid = data.bids;
            
			$("#bidValue").text("L'utima offerta è di "+bid[0].price+" €")
				
              
		}
	});
}