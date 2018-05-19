<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">    
    <title>添加商品</title>
	<style>
		input {width:500px}
	</style>
  </head>
  
  <body>
<center>
<form name="addgoodsForm" action="/goods/goods/addgoods.htm" method="post">
<span style="color:red">${requestScope.msg}</span>
<table width="700" border="0" class="ad" cellpadding="0" cellspacing="1" bgcolor="#999999" id="testTable">
	<input name="userid" type="hidden" id="userid" value="${userid}"/>
 　　<tr bgcolor="#ffffff">

		<td align="right" bgcolor="#EEEEEE" width="150px" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">

		商品名称 :</td>

		<td align="left" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">

		<input name="goodsname" type="text" id="goodsname" value="${goods.goodsname}"/>		</td>

	</tr>

	<tr bgcolor="#ffffff">

		<td align="right" bgcolor="#EEEEEE" width="150px" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">		        
		商品类型 :		
		</td>
		<td align="left" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;"><select id="type" name="type" value="${goods.type}">
          <option value="">－－请选择商品类型－－</option>
          <option value="合金类">合金类</option>
          <option value="五金类">五金类</option>
		  <option value="玻璃钻类">玻璃钻类</option>
          <option value="玻璃刀具类">玻璃刀具类</option>
        </select></td>
	</tr>

	<tr bgcolor="#ffffff">

		<td align="right" bgcolor="#EEEEEE" width="150px" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">

		商品型号 :		</td>

		<td align="left" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">

		<input name="xinghao" type="text" id="xinghao" value="${goods.xinghao}"/>		</td>
	</tr>
	
	<tr bgcolor="#ffffff">

		<td align="right" bgcolor="#EEEEEE" width="150px" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">

		单    位 :		</td>

		<td align="left" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">

		<input name="danwei" type="text" id="danwei" value="${goods.danwei}"/>		</td>
	</tr>

	<tr bgcolor="#ffffff">

		<td align="right" bgcolor="#EEEEEE" width="150px" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">

		商品单价 :		</td>

		<td align="left" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">

		<input name="danjia" type="text" id="danjia"  value="${goods.danjia}"/>		</td>
	</tr>

	<tr bgcolor="#ffffff">

	<td colspan="2" align="left" style="padding-left: 5px; padding-top: 4px; padding-bottom: 4px; padding-right: 18px;">

	<button id="tj" value="提交">提交</button>	</td>
	</tr>
</table>

</form>
</center>
</body>
</html>
