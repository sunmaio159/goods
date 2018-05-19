function changecutomer(){
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
function save(){
	var id = parent.id;	
	document.getElementById("userid").value=id;
	var form = document.getElementById("order");
	var form1 = document.getElementById("goods");
	var form2 = document.createElement("form");
	document.body.appendChild(form2);	
	var toby = document.getElementById("tab");	
	var toby1 = document.getElementById("tab1");
	form2.appendChild(toby);
	form2.appendChild(toby1);
	if(form.cutomerid.value!=""){
		//document.getElementById("tab1").style.display="none";
		form.action="/goods/order/saveorder.htm?id="+id;
		form.method="post";
		form.submit();
		
		form2.action="/goods/order/saveOrderEtail.htm?id="+id;
		form2.method="post";
		form2.submit();
				
	}else{
		location.reload();
		alert("请选择客户");
		return ;
	}
	
}
function addgoods(){	
	var id = parent.id;	
	var link='/goods/order/orderaddgoods.htm?id='+id;
	var tabTitle = "test";
	var url ="link";
	var icon = 'icon-add';
	var goods;
	var popup = window.showModalDialog(link,window);
	var toby = document.getElementById("tab");
	//var popup = window.open(link,tabTitle,icon);	
	var len = [];
	var i = 0;
	var orderBH = document.getElementById("orderid").value;
	if(popup=='close'){			
		goods = document.getElementById("goods").value;
		document.getElementById("userid").value=id;
		dwr.engine.setAsync(false);
		dwrorderservic.getgoodsinfo(goods,function(ret){			
			document.getElementById("tab1").style.display="none";
			var rows = toby.rows.length;
			var j = 0;
			if(rows>1){
				j=rows-1;				
			}
			for(;i<ret.length;i++){
				 var datamap=ret[i];
				 var tr = document.createElement("tr");
	  	 		 var td1 = document.createElement("td");
	  	 		 var td2 = document.createElement("td");
	  	 		 var td3 = document.createElement("td");
	  	 		 var td4 = document.createElement("td");
	  	 		 var td5 = document.createElement("td");
	  	 		 var td6 = document.createElement("td");
	  	 		 var td7 = document.createElement("td");
	  	 		 tr.align="center";
	  	 		 
	  	 		 td1.innerHTML = j+1;
	  	 		 td2.innerHTML = datamap["goodsname"];
	  	 		 td3.innerHTML = datamap["xinghao"];
	  	 		 td4.innerHTML = datamap["danwei"];
	  	 		 td5.innerHTML = "";
	  	 		 td6.innerHTML = datamap["danjia"];
	  	 		 td7.innerHTML = datamap["danjia"];
	  	 		 	  	 		 
	  	 		 var goodsList = "orderetaillist["+j+"]";
	  	 		 
	  	 		 var orderid = document.createElement("input");
	  	 		 orderid.type = "hidden";  
			     orderid.id =  goodsList+".orderid";
			     orderid.name = goodsList+".orderid";
			     orderid.value = orderBH; 
	  	 		 td1.appendChild(orderid);
	  	 		 
	  	 		 var goodsid = document.createElement("input");
	  	 		 goodsid.type = "hidden";  
			     goodsid.id =  goodsList+".goodsid";
			     goodsid.name = goodsList+".goodsid";
			     goodsid.value = datamap["goodsid"]; 
	  	 		 td1.appendChild(goodsid); 
	  	 		 
	  	 		 var goodsname = document.createElement("input");
	  	 		 goodsname.type = "hidden";  
			     goodsname.id =  goodsList+".goodsname";
			     goodsname.name = goodsList+".goodsname";
			     goodsname.value = datamap["goodsname"]; 
	  	 		 td2.appendChild(goodsname); 
	  	 		 
	  	 		 var xinghao = document.createElement("input");
	  	 		 xinghao.type = "hidden";  
			     xinghao.id =  goodsList+".xinghao";
			     xinghao.name = goodsList+".xinghao";
			     xinghao.value = datamap["xinghao"]; 
	  	 		 td3.appendChild(xinghao);
	  	 		 
	  	 		 var div = document.createElement("div");	  	 		 
				 var sub = document.createElement("input");
	  	 		 sub.type = "button";
	  	 		 sub.style.width="20px";
	  	 		 sub.style.cssFloat="left";
	  	 		 sub.id = j;
			     sub.className = "addBtn min";
			     sub.onclick = function(){jian(this.id)};
			     sub.value = "-"; 			     
			     div.appendChild(sub);	  	
	  	 		 
	  	 		 var num = document.createElement("input");
	  	 		 num.style.width="39px";
	  	 		 num.style.cssFloat="left";
	  	 		 num.style.text="center";
	  	 		 num.type = "text";  
			     num.id = goodsList+".num";
			     num.name = goodsList+".num";
			     num.innerHTML=j;
			     num.onkeyup = function(){money(this.innerHTML)};
			     num.value = 1; 		
			     div.appendChild(num);	  	
	  	 		
	  	 		 var add = document.createElement("input");
			     add.type = "button";
	  	 		 add.style.width="20px";
	  	 		 add.style.cssFloat="left";
			     add.className = "addBtn add";
			     add.id = j;
			     add.onclick = function(){jia(this.id)};
			     add.value = "+";
			     div.appendChild(add);
			     td5.appendChild(div);
	  	 		 
	  	 		 var danjia = document.createElement("input");
	  	 		 danjia.type = "hidden";  
			     danjia.id =  goodsList+".price";
			     danjia.name = goodsList+".price";
			     danjia.value = datamap["danjia"]; 
	  	 		 td6.appendChild(danjia);	  	 		
	  	 		 
	  	 		 var jine = document.createElement("input");
	  	 		 jine.type = "hidden";  
			     jine.id =  goodsList+".jine";
			     jine.name = goodsList+".jine";
			     jine.value = datamap["danjia"]; 
	  	 		 td6.appendChild(jine);	
	  	 		 td7.id  = goodsList+".[td]"

	  	 		 tr.appendChild(td1);
	  	 		 tr.appendChild(td2);
	  	 		 tr.appendChild(td3);
	  	 		 tr.appendChild(td4);
	  	 		 tr.appendChild(td5);
	  	 		 tr.appendChild(td6);
	  	 		 tr.appendChild(td7);
	  	 	 	 toby.appendChild(tr);
	  	 	 	 
	  	 	 	 j=j+1;
			}
		})
		var toby = document.getElementById("tab");
		var rows1 = toby.rows.length;
		var trLast = document.createElement("tr");
		var td1 = document.createElement("td");
	  	var td2 = document.createElement("td");
	  	var td3 = document.createElement("td");
	  	var td4 = document.createElement("td");
	  	var td5 = document.createElement("td");
	  	var td6 = document.createElement("td");
	  	var td7 = document.createElement("td");
	  	 	td7.id="lasttd";
	  	 	td6.align="right";
	  	 	td6.innerHTML="合计：";
	  	 	td7.innerHTML="￥"+"0";
	  	var hejizhi = document.createElement("input");
	  	 	hejizhi.type = "hidden";  
			hejizhi.id = "hejizhi";
			hejizhi.name = "hejizhi";
			hejizhi.value = 0; 
	  	    td6.appendChild(hejizhi); 
	  	 	
			trLast.appendChild(td1);
	  	 	trLast.appendChild(td2);
	  	 	trLast.appendChild(td3);
	  	 	trLast.appendChild(td4);
	  	 	trLast.appendChild(td5);
	  	 	trLast.appendChild(td6);
	  	 	trLast.appendChild(td7);
			toby.appendChild(trLast);
		heji();		
	}
}

function jia(rowid){
	//alert(rowid);
	var goodsnum = "orderetaillist["+rowid+"].num";
	var danjiaid = "orderetaillist["+rowid+"].price";
	var jine     = "orderetaillist["+rowid+"].jine";
	var td = "orderetaillist["+rowid+"].[td]";
	var num = document.getElementById(goodsnum).value;	
	var danjia = document.getElementById(danjiaid).value;	
	num = parseInt(num)+1;
	document.getElementById(goodsnum).value = num;
	document.getElementById(jine).value = danjia*num;
	document.getElementById(td).innerHTML = danjia*num;
	heji();
}
function jian(rowid){
	//alert(rowid);
	var goodsnum = "orderetaillist["+rowid+"].num";
	var danjiaid = "orderetaillist["+rowid+"].price";
	var jine     = "orderetaillist["+rowid+"].jine";
	var td = "orderetaillist["+rowid+"].[td]";
	var num = document.getElementById(goodsnum).value;
	var danjia = document.getElementById(danjiaid).value;
	if(num==1){
		return alert("已到最小值");
	}else{
		num = parseInt(num)-1;
		document.getElementById(goodsnum).value = num;
		document.getElementById(jine).value = danjia*num;
		document.getElementById(td).innerHTML = danjia*num;
	}
	heji();
}
function money(rowid){
	//alert(rowid);
	var goodsnum = "orderetaillist["+rowid+"].num";
	var danjiaid = "orderetaillist["+rowid+"].price";
	var jine     = "orderetaillist["+rowid+"].jine";
	var td = "orderetaillist["+rowid+"].[td]";
	var num = document.getElementById(goodsnum).value;	
	var danjia = document.getElementById(danjiaid).value;
	num = parseInt(num);
	if(num>0){
		document.getElementById(goodsnum).value = num;
		document.getElementById(jine).value = danjia*num;
		document.getElementById(td).innerHTML = danjia*num;
	}else{
		alert("输入不合法")
		return document.getElementById(goodsnum).value=1;
	}
	heji();
}
function heji(){
	var toby = document.getElementById("tab");
	var rows1 = toby.rows.length;
	var sum=0;
	for(var x=0;x<rows1-2;x++){			
		var jine = "orderetaillist["+x+"].jine";	
		//alert(jine);
		sum = sum + parseInt(document.getElementById(jine).value);
	}
	//alert(sum);
	document.getElementById("hejizhi").value=sum;
	document.getElementById("lasttd").innerHTML="￥"+sum;
}
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