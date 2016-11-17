$("#btnBid").click(function addBid(){
	var price = document.getElementById("bidText").value;
	$.ajax({
		url: "AddBidServlet",
		type:"GET",
		data:{itemId : itemId , price : price},
		success:function(response){
			alert("L'offerta è stata aggiunta"+response);
		},
		error:function(response){
			if(response=="ok")
				alert("ciccio")
				else{
			alert("error"+response+" "+itemId);
			getItem(itemId);
			getBid(itemId);
				}
		}
	});
});