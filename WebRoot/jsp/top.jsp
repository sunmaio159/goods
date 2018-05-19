<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.goods.entity.User"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <!-- Iconos -->
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
    <link rel="stylesheet" href="../css/leftnav.css" media="screen" type="text/css"/>
</head>
<body>
	<span id="user" value="${user.danwei}" style="float: right;padding: 10px;" />	
</body>
        <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
        <script src='../js/leftnav.js'></script>        
</html>
<script>
window.onload=function(){
	var user = parent.a;
	document.getElementById("user").innerHTML ="欢迎："+user;
}
</script>