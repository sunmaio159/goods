<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <script>
    	var userid = '${userid}';
    	var jsons;
    </script>
    <style type="text/css">  
      body{  
     font-size:14px;  
      margin:0;}  
     div{  
     width:auto;  
     height:auto;  
     line-height:150%;}  
     ul{  
     list-style:none;  
     margin-left:-20px;}  
    ul li:hover{  
     background-color:#DDDDDD;  
     color:#FF0000;  
     cursor:pointer;}  
 </style> 
    <title>订单添加产品</title>
    <script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path%>/dwr/util.js'></script>
    <script type='text/javascript' src="<%=path%>/dwr/interface/dwrorderservic.js"></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div id="continer"></div>
    <div>
    	<input id="add" type="submit" value="添加" onclick="check()"/>
    </div>
  </body>
</html>
<script src="js/jquery-1.7.1.js"></script>
<script src="js/json2.js"></script>
<script src="js/order/addgoodsList.js" charset="gb2312"></script>