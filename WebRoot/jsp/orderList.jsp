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
    <title>订单列表</title>
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
		a:link,a:visited{
		 	text-decoration:none;  /*超链接无下划线*/
			}
		a:hover{
		 	text-decoration:underline;  /*鼠标放上去有下划线*/
			}
	</style>
  </head>
  <script>
  var user = parent.a;  
  </script>
<body>
	<center>
	<span style="color:red">${requestScope.msg}</span>	
	<form id="goods">		
		<table  border="0px" class="ad" cellpadding="0" cellspacing="1"  id="list" >		
			<tr bgcolor="#ee0026">
				<th style="width :40px"></th>
				<th>序号</th>
				<th>订单编号</th>
				<th>客户名称</th>
				<th>订单日期</th>					
			</tr>			
			<c:forEach items="${list}" var="list" varStatus="i">
    			<tr>
    				<td><input type="checkbox" id="order[${i.index}].orderid" name="order[i].orderid" value="${list.orderid}" />	    			
	    			</td>
	    			
	    			<td>${i.index+1}	    			
	    			</td>
	    			
	    			<td>
	    				<a id="${list.orderid}" href="javascript:openNew('${list.orderid}')">${list["orderid"]}</a>	    				
	    			</td>
	    			
	    			<td>${list["cutomermc"]}	    				
	    			</td>
	    			
	    			<td>${list["timedate"]}	    				
	    			</td>		    				    			    			    	
    			</tr>
    		</c:forEach>    		
		</table>
		</form> 
	</center></br>		
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
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/order/orderlist.js"></script>