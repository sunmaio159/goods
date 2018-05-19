function cutomerlist(){
	var id = parent.id;
	parent.document.getElementById('right').src='/goods/cutomer/cutomerList.htm?id='+id;
}
function addcutomer(){	
	var id = parent.id;
	parent.document.getElementById('right').src='/goods/cutomer/userinfo.htm?id='+id;
}