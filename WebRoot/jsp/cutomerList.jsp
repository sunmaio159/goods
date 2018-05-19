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
    <title>客户列表</title>
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
  </script
><body>
	<center>	
	<form id="cutomer">			
		<table  border="0px" class="ad" cellpadding="0" cellspacing="1"  id="list" >		
			<tr bgcolor="#ee0026">
				<th style="width :40px"></th>
				<th>序号</th>
				<th>客户名称</th>
				<th>客户单位</th>
				<th>联系方式</th>
				<th>联系地址</th>				
			</tr>			
			<c:forEach items="${list}" var="list" varStatus="i">
    			<tr id="tr${i.index+1}">
    				<td style="width :40px"><input type="checkbox" id="cutomerlist[${i.index}].cutomerid" name="cutomerlist[${i.index}].cutomerid" value="${list["cutomerid"]}" /></td>
	    			<td>
	    				${i.index+1}
	    			</td>
	    			
	    			<td>
	    				<input id="cutomerlist[${i.index}].cutomermc" name="cutomerlist[${i.index}].cutomermc" style="display: none" value="${list["cutomermc"]}"/>
	    				<span id="span_cutomerlist[${i.index}].cutomermc">${list["cutomermc"]}<span>
	    			</td>
	    			
	    			<td>
	    				<input id="cutomerlist[${i.index}].kehudanwei" name="cutomerlist[${i.index}].kehudanwei" style="display: none" value="${list["kehudanwei"]}"/>
	    				<span id="span_cutomerlist[${i.index}].kehudanwei">${list["kehudanwei"]}<span>
	    			</td>
	    			
	    			<td>
	    				<input id="cutomerlist[${i.index}].lxfs" name="cutomerlist[${i.index}].lxfs" style="display: none" value="${list["lxfs"]}"/>
	    				<span id="span_cutomerlist[${i.index}].lxfs">${list["lxfs"]}<span>
	    			</td>
	    			
	    			<td>
	    				<input id="cutomerlist[${i.index}].address" name="cutomerlist[${i.index}].address" style="display: none" value="${list["address"]}"/>
	    				<span id="span_cutomerlist[${i.index}].address">${list["address"]}<span>
	    			</td>	    			    			    		
    			</tr>
    		</c:forEach>    		
		</table>
		</form> 
	</center></br>
		<div style="float: right; margin-right: 50px;">
			<input id="edit" type="submit" value="编辑" onclick="cutomeredit()"></input>
			<input id="cancle" type="submit" value="取消编辑" style="display:none" onclick="cancle()"></input>
			<input id="cutomerupdate" type="submit" value="修改" style="display:none" onclick="cutomerupdate()"></input>
			<input id="cutomerdelete" type="submit" value="删除" onclick="cutomerdelete()"></input>
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
<script type="text/javascript" src="js/cutomer/cutomerList.js" charset="gb2312"></script>
