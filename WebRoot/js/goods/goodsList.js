function goodsedit(){
	var inputs = document.getElementsByTagName("input");
	var checkboxArray = [];
	for(var i=0;i<inputs.length;i++){
	  var obj = inputs[i];
	  if(obj.type=='checkbox'){
		  if(document.getElementById(obj["id"]).checked){
		    	var a = obj["id"].substring(5);		    					
		    	document.getElementById("goodsname"+a).style.display ='inline';		    	
		    	document.getElementById("type"+a).style.display ='inline';
		    	document.getElementById("xinghao"+a).style.display ='inline';
		    	document.getElementById("danjia"+a).style.display ='inline';
		    	document.getElementById("span_goodsname"+a).style.display="none";	    	
		    	document.getElementById("span_type"+a).style.display="none";
		    	document.getElementById("span_xinghao"+a).style.display="none";
		    	document.getElementById("span_danjia"+a).style.display="none";
		    	document.getElementById("edit").style.display="none";
		    	document.getElementById("goodsupdate").style.display="inline";
		    	document.getElementById("cancle").style.display="inline";
			}		  
	  }
	}	
}
function goodsupdate(){
	var id = parent.id;		
	var form = document.getElementById("goods");
	form.action="/goods/goods/update.htm?id="+id;
	form.method="post";
	form.submit();		
	document.getElementById("goodsupdate").style.display="none";
	document.getElementById("edit").style.display="inline";
}
function goodsdelete(){
	var inputs = document.getElementsByTagName("input");
	var checkboxArray = [];
	for(var i=0;i<inputs.length;i++){
	  var obj = inputs[i];
	  if(obj.type=='checkbox'){
		  if(document.getElementById(obj["id"]).checked){
			  var a = obj["id"].substring(5);
			  checkboxArray.push(a);
		  }
		}
	  }
	var id = parent.id;		
	var form = document.createElement("form");
	document.body.appendChild(form);	
    form.method = "post";
    form.action='/goods/goods/deletelist.htm?list='+checkboxArray+"&id="+id;
    form.submit();
}
function cancle(){
	var inputs = document.getElementsByTagName("input");
	var checkboxArray = [];
	for(var i=0;i<inputs.length;i++){
	  var obj = inputs[i];
	  if(obj.type=='checkbox'){
		  if(document.getElementById(obj["id"]).checked){
		    	var a = obj["id"].substring(5);
		    	document.getElementById("goodsname"+a).style.display ='none';		    	
		    	document.getElementById("type"+a).style.display ='none';
		    	document.getElementById("xinghao"+a).style.display ='none';
		    	document.getElementById("danjia"+a).style.display ='none';
		    	document.getElementById("span_goodsname"+a).style.display="inline";		    	
		    	document.getElementById("span_type"+a).style.display="inline";
		    	document.getElementById("span_xinghao"+a).style.display="inline";
		    	document.getElementById("span_danjia"+a).style.display="inline";
		    	document.getElementById("edit").style.display="inline";
		    	document.getElementById("goodsupdate").style.display="none";
		    	document.getElementById("cancle").style.display="none";
			}		  
	  }
	}	
}
