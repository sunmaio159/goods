<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
  </head>
  
  <body>
    <div id="user">
    	<center>
		<input id="userid" name="userid" placeholder="请输入用户名" class="name"/>
		<input id="userpass" name="userpass" placeholder="请输入密码" class="name" type="password"/>      
        <input id="reg" name="submit" class="btn" type="button" value="注册" onclick="reg()"/>
        <input id="login" name="submit" class="btn" type="button" value="登录" onclick="login()"/>
        <span style="color:red;" align="center">${requestScope.msg}</span>        
        </center>>
	</div>
	
	  <script src='js/jquery-1.7.1.js'></script>
	  <script src='js/user/user.js'></script>
  </body>
</html>

