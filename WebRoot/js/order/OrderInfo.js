window.onload=function(){
	var cutomerid = document.getElementById("cutomerid").value;
	dwrorderservic.getinfo(cutomerid,function(ret){
		if(ret!=null){
			var lxfs=ret[0];
			var address=ret[1];
			document.getElementById("address").value=address;
			document.getElementById("lxfs").value=lxfs;			
		}
	})
}