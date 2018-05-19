<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>客户添加</title>
	<style>
		input {width:500px}
	</style>
  </head>
  
  <body>
<center>
<form name="addcutomerForm" action="/goods/cutomer/addcutomer.htm" method="post">
<span style="color:red">${requestScope.msg}</span>
<table width="700" border="0" class="ad" cellpadding="0" cellspacing="1" bgcolor="#999999" id="testTable">
	<input name="userid" type="hidden" id="userid" value="${userid}"/>
 　　<tr bgcolor="#ffffff">

		<td align="right" bgcolor="#EEEEEE" width="150px" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">

		客户名称 :</td>

		<td align="left" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">

		<input name="cutomermc" type="text" id="cutomermc" value="${cutomer.cutomermc}"/>		</td>

	</tr>

	<tr bgcolor="#ffffff">

		<td align="right" bgcolor="#EEEEEE" width="150px" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">		        
		客户单位 :		
		</td>
		<td align="left" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">
		<input name="kehudanwei" type="text" id="kehudanwei" value="${cutomer.kehudanwei}"/>
		</td>
	</tr>

	<tr bgcolor="#ffffff">

		<td align="right" bgcolor="#EEEEEE" width="150px" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">

		联系方式 :		</td>

		<td align="left" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">

		<input name="lxfs" type="text" id="lxfs" value="${cutomer.lxfs}"/>		</td>
	</tr>
	<tr bgcolor="#ffffff">

		<td align="right" bgcolor="#EEEEEE" width="150px" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">

		联系地址 :		</td>

		<td align="left" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">

		<input name="address" type="text" id="address"  value="${cutomer.address}"/>		</td>
	</tr>

	<tr bgcolor="#ffffff">

	<td colspan="2" align="right" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">

	<button id="tj" value="提交">提交</button>	</td>
	</tr>
</table>
</form>
</center>
</body>
</html>
