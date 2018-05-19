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
<script>
	var a = "${user.danwei}";
	var id = "${user.id}";	
</script>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>管理中心</title>
    
    <frameset cols="*" rows="50, *" id="frame_main" border="0">
	    <frame id="top" src="/goods/jsp/top.jsp" noresize="noresize" name="header"> 	
	    </frame>
	    <frameset cols="181, *">
	        <frame id="left" src="/goods/jsp/memu.jsp" name="left" noresize="noresize" />
	        <frame id="right" name="right" noresize="noresize">        
	    </frameset>
	    <noframe>
		   <body>  
		   	<input id="user" type="hidden" value="${user.danwei}"/>  	    
		   </body>
		</noframe>
	</frameset>	
</head>
</html>