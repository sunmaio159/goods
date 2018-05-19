function cutomeredit(){
	var check = checkbox();		
	if(check.length>0){
		for(var i=0;i<check.length;i++){
			var obj = check[i];
			var a = obj["id"];
			var str = a.substring(0, 14);
			document.getElementById(str+".cutomermc").style.display ='inline';	
			document.getElementById(str+".kehudanwei").style.display ='inline';		
			document.getElementById(str+".lxfs").style.display ='inline';		
			document.getElementById(str+".address").style.display ='inline';	
			document.getElementById("span_"+str+".cutomermc").style.display ='none';
			document.getElementById("span_"+str+".kehudanwei").style.display ='none';		
			document.getElementById("span_"+str+".lxfs").style.display ='none';		
			document.getElementById("span_"+str+".address").style.display ='none';
			document.getElementById("edit").style.display="none";
			document.getElementById("cutomerupdate").style.display="inline";
			document.getElementById("cancle").style.display="inline";
		}
	}else{
		var info="请选择至少一行数据";
		alert(info);
	}
	
}
function cutomerupdate(){
	var id = parent.id;		
	var form = document.getElementById("cutomer");
	form.action="/goods/cutomer/update.htm?id="+id;
	form.method="post";
	form.submit();		
	document.getElementById("cutomerupdate").style.display="none";
	document.getElementById("edit").style.display="inline";
}
function cutomerdelete(){
	var check = checkbox();	
	var checkboxArray = [];
	var userid = parent.id;	
	if(check.length>0){
		for(var i=0;i<check.length;i++){
			var obj = check[i];
			var id=obj.value;
			checkboxArray.push(id);
		}
		var form = document.getElementById("cutomer");
		form.action="/goods/cutomer/cutomerdelete.htm?cutomerid="+checkboxArray+"&id="+userid;
		form.method="post";
		form.submit();		
	}else{
		var info="请选择至少一行数据";
		alert(info);
	}
}
function checkbox(){
	var inputs = document.getElementsByTagName("input");
	var checkboxArray = [];
	var checked=[];
	var unchecked=[];
	for(var i=0;i<inputs.length;i++){
	  var obj = inputs[i];
	  if(obj.type=='checkbox'){
		  if(document.getElementById(obj["id"]).checked){
			  checked.push(obj);
		  }else{
			  unchecked.push(obj);
		  }
	  }
	}
	checkboxArray.push(checked,unchecked);
	return checked;
}
function cancle(){
	var check = checkbox();		
	if(check.length>0){
		for(var i=0;i<check.length;i++){
			var obj = check[i];
			var a = obj["id"];
			var str = a.substring(0, 14);
			document.getElementById(str+".cutomermc").style.display ='none';	
			document.getElementById(str+".kehudanwei").style.display ='none';		
			document.getElementById(str+".lxfs").style.display ='none';		
			document.getElementById(str+".address").style.display ='none';	
			document.getElementById("span_"+str+".cutomermc").style.display ='inline';
			document.getElementById("span_"+str+".kehudanwei").style.display ='inline';		
			document.getElementById("span_"+str+".lxfs").style.display ='inline';		
			document.getElementById("span_"+str+".address").style.display ='inline';
			document.getElementById("edit").style.display="inline";
			document.getElementById("cutomerupdate").style.display="none";
			document.getElementById("cancle").style.display="none";
		}
	}
}