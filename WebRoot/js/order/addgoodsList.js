window.onload=function(){
	var id = userid;
	dwr.engine.setAsync(false);
	var jsonData;
	dwrorderservic.getgoods(id,function(ret){
		jsonData = ret;							
	})	
	jsons = eval('(' + jsonData + ')');	
	var ul = createTree(jsons,-1) ; 
         $("#continer").append(ul) ;            
         $("ul[class] li").each(function(){  
             $(this).click(function(){  
                 $(this).next().toggle() ;  
             }) ;  
         }) ;     
}

function createTree(jsons,nodeid){		 
         if(jsons != null){  
             var ul = '<ul class="">' ;              
             for(var i=0;i<jsons.length;i++){ 
                 if(jsons[i]["nodeid"] == nodeid){  
                     ul += '<li>'+'<input type="checkbox" id='+jsons[i].id+' value='+jsons[i]["goodsid"]+' />' + jsons[i]["name"]  ; 
                     ul += "</li>";
                     ul += createTree(jsons,jsons[i]["id"]);  
                 }  
             }  
             ul += "</ul>" ;  
        }  
         return ul ;  
     }
function check(){
	var check = checkbox();
    var checkboxArray = [];
	if(check.length>0){
		for(var i=0;i<check.length;i++){
			var obj = check[i];
			checkboxArray.push(obj);			
		}
		var win = window.dialogArguments;
		win.document.getElementById("goods").value=checkboxArray;
		win.goodsss=checkboxArray;
		window.returnValue = "close";
		window.close(); 
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
			  checked.push(obj.value);
		  }else{
			  unchecked.push(obj);
		  }
	  }
	}
	checkboxArray.push(checked,unchecked);
	return checked;
}