function update(){
	var id = parent.id;	
	var form = document.createElement("form");
	document.body.appendChild(form);	
    var input = document.createElement("input");  
    input.type = "hidden";  
    input.id = "id";
    input.name ="id";
    input.value = id;    
	form.appendChild(input);
    form.method = "post";    
	parent.document.getElementById('right').src='/goods/user/SelectById.htm?id='+id;
}
function addgoods(){
	var id = parent.id;	
	parent.document.getElementById('right').src='/goods/goods/add.htm?id='+id;
}
function list(){
	var id = parent.id;	
	parent.document.getElementById('right').src='/goods/goods/list.htm?id='+id;
}
function addorder(){
	var id = parent.id;	
	parent.document.getElementById('right').src='/goods/order/order.htm?id='+id;
}
function orderlist(){
	var id = parent.id;	
	parent.document.getElementById('right').src='/goods/order/orderList.htm?id='+id;
}