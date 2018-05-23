<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>订单详情</title>
    <script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path%>/dwr/util.js'></script>
    <script type='text/javascript' src="<%=path%>/dwr/interface/dwrorderservic.js"></script>	
	<script>
		var path = '<%=path %>';		
	</script>
	
	<style>
	div{  
    	width:auto;  
    	height:auto;  
    	line-height:150%;
     }
    td {
		text-align:center;
		vertical-align:middle;
		padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;
		}  
	</style>
  </head>
  
  <body>
	<center>
		<input type="hidden" id="cutomerid" value="${order.cutomerid}"/>
		<div style="width:500px; height:70px">
				订单编号：<input type="text" id="orderid" name="orderid" value="${order.orderid}" readonly="readonly"/>
				订单日期：<input type="text" id="timedate" name="timedate" value="${order.timedate}" readonly="readonly"/></br>
				<span>
					客户名称：<input style="width:391px" type="text" id="cutomermc" name="cutomermc" value="${order.cutomermc}" readonly="readonly"/>
				</span></br>
				联系地址：<input type="text" id="address" name="lxfs" value="" readonly="readonly"/>
				联系方式：<input type="text" id="lxfs" name="lxfs" value="" readonly="readonly"/>
		</div></br>
		
		<table border="1" cellspacing="0" bordercolor="#000000" width = "750px" style="border-collapse:collapse; margin-top:0px" id="tab">
			<tr>
				<th>序号</th>
				<th>产品名称</th>
				<th>规格</th>
				<th>单位</th>
				<th>数量</th>
				<th>单价</th>
				<th>金额</th>
			</tr>			
			<c:forEach items="${list}" var="list" varStatus="i">
    			<tr>    				
	    			<td>${i.index+1}	    			
	    			</td>
	    			
	    			<td>${list["goodsname"]}	    			
	    			</td>
	    			
	    			<td>${list["xinghao"]}	    				
	    			</td>
	    			
	    			<td>${list["danwei"]}	    				
	    			</td>
	    			
	    			<td>${list["num"]}	    				
	    			</td>	
	    			
	    			<td>${list["price"]}	    				
	    			</td>
	    			
	    			<td>${list["money"]}	    				
	    			</td>    			    			    		
    			</tr>
    		</c:forEach>    						
		</table>			
	</center>	
</body>
</html>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/order/OrderInfo.js"></script>