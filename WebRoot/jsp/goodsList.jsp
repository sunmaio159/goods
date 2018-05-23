<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.goods.entity.Goods"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Goods goods = new Goods();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>商品列表</title>
   <style>
		th {align:"center"; 
			bgcolor:"#999999";
			width: 150px ;
			padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;
			}
		td {
			text-align:center;
			vertical-align:middle;
			padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;
			}
	</style>
  </head>
  <script>
  var user = parent.a;
  </script>
<body>
	<center>	
	<form id="goods">		
		<table  border="0px" class="ad" cellpadding="0" cellspacing="1"  id="list" >		
			<tr bgcolor="#ee0026">
				<th></th>
				<th>序号</th>
				<th>商品名称</th>
				<th>商品类别</th>
				<th>商品型号</th>
				<th>商品单价</th>				
			</tr>			
			<c:forEach items="${list}" var="list" varStatus="i">
    			<tr id="tr${i.index+1}">
    				<td>
    					<input type="checkbox" id="goods${list.goodsid}" name="goodslist[${i.index}].goodsid" value="${list.goodsid}" />
    				</td>
	    			
	    			<td>
	    				<input type="text" style="display:none"  value="${i.index+1}"/>${i.index+1}
	    			</td>
	    			
	    			<td>
	    				<input id="goodsname${list.goodsid}" name="goodslist[${i.index}].goodsname" type="text" style="display:none" value="${list.goodsname}"/>
	    				<span id="span_goodsname${list.goodsid}">${list["goodsname"]}</span>
	    			</td>
	    			
	    			<td>	    				
	    			<input id="type${list.goodsid}" name="goodslist[${i.index}].type" type="text" style="display:none" value="${list.type}"/>	    			
	    			<span id="span_type${list.goodsid}">${list["type"]}<span>	    			
	    			</td>
	    			
	    			<td>
	    				<input id="xinghao${list.goodsid}" name="goodslist[${i.index}].xinghao" type="text" style="display:none" value="${list.xinghao}"/>
	    				<span id="span_xinghao${list.goodsid}">${list["xinghao"]}<span>
	    			</td>

	    			<td>
	    				<input id="danjia${list.goodsid}" name="goodslist[${i.index}].danjia" type="text" style="display:none" value="${list.danjia}"/>
	    				<span id="span_danjia${list.goodsid}">${list["danjia"]}<span>
	    			</td>	    			    			    		
    			</tr>
    		</c:forEach>    		
		</table>
		</form> 
	</center></br>
		<div style="float: right; margin-right: 50px;">
			<input id="edit" type="submit" value="编辑" onclick="goodsedit()"></input>
			<input id="goodsupdate" type="submit" value="修改" style="display:none" onclick="goodsupdate()"></input>
			<input id="cancle" type="submit" value="取消编辑" style="display:none" onclick="cancle()"></input>
			<input id="goodsdelete" type="submit" value="删除" onclick="goodsdelete()"></input>
		</div>
</body>
</html>
<script>
	 var table = document.getElementById("list"); 
	 var tr = table.getElementsByTagName("tr");
	 tr.id="";
	 for(var i=1;i<tr.length;i++){
		 if(i%2==0){
			 tr[i].style.backgroundColor="#B8B8B8";
		 }else{
			 tr[i].style.backgroundColor="#E0E0E0";
		 }		 
	 }	 	
</script>
<script type="text/javascript" src="js/goods/goodsList.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
