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
    <title>订单添加</title>
    <script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path%>/dwr/util.js'></script>
    <script type='text/javascript' src="<%=path%>/dwr/interface/dwrorderservic.js"></script>
	<style>
	span{ float:left}
	
	th{
	   width:60px;
	   height:28px;
	}
	td{align:center;
	   bgcolor:#EEEEEE;
	   width:60px;
	   height:28px;
	   padding-left: 5px; 
	   padding-top: 4px; 
	   padding-bottom: 4px; 
	   padding-right: 18px;
	}
	</style>
	<script>
		var path = '<%=path %>';
		var goodsss = null;
	</script>
  </head>
  
  <body>
	<center>
		<div style="width:500px; height:120px">
		<input type="hidden" id="goods" name="goods" value="" onchange="add()" />
		<form id="order">
		<input type="hidden" id="userid" name="userid" value="${userid}"/>
		<span>订单编号:<input type="text" id="orderid" name="orderid" value="${orderid}"/></span>
		
		<span>&nbsp;&nbsp;&nbsp;&nbsp;订单日期:<input type="text" id="timedate" name="timedate" value="${time}" style="width:165px" /></span><br/><br/>
		
		
		<span>
		客户名称:<select id="cutomerid" name="cutomerid" onchange="changecutomer()" value="">
	          <option value=''></option>	          
           		<c:forEach items="${cutomer}" var="cutomer" varStatus="i">
           		<c:if test="${cutomer}.last">
           			<input type="text" value="sadasdasdasd"/>
           		</c:if>           		
					<option value ="<c:out value='${cutomer["cutomerid"]}'/>"><c:out value='${cutomer["cutomermc"]}'/></option> 
				</c:forEach>
	        </select>
		</span>
		
		</form><br/>
		<span>联系地址:<input type="text" id="address" name="address" value=""/></span>
		
		
		<span>&nbsp;&nbsp;&nbsp;&nbsp;联系电话:<input type="text" id="lxfs" name="lxfs" value="" style="width:165px"/></span><br/><br/>
		
		</div>
		<form id="goods">
		<table border="1" cellspacing="0" bordercolor="#000000" width = "750px" style="border-collapse:collapse;" id="tab">
			<tr>
				<th>序号</th>
				<th>产品名称</th>
				<th>规格</th>
				<th>单位</th>
				<th>数量</th>
				<th>单价</th>
				<th>金额</th>
			</tr>					
		</table>
		
		<table border="1" cellspacing="0" bordercolor="#000000" width = "750px" style="border-collapse:collapse;" id="tab1">
			<tr style="display: none">
				<th>序号</th>
				<th>产品名称</th>
				<th>规格</th>
				<th>单位</th>
				<th>数量</th>
				<th>单价</th>
				<th>金额</th>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>			
		</table>					
		<br/>
		</form>
		
		<div>		
		<input type="submit" id="save" name="save" value="保存订单" onclick="save()"/>
		<input type="submit" id="addgoods" name="addgoods" value="添加产品" onclick="addgoods()"/>
		<input type="submit" id="" name="" value="test"/>
		<div>		
	</center>
	<div id="continer"></div>
</body>
</html>
<script src="js/jquery.min.js"></script>
<script src="js/order/order.js" charset="gb2312"></script>
