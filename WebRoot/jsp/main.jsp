<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<span style="float: right;padding: 10px;">欢迎您 ：${user.danwei}</span>
	<div style="padding: 100px;">
    <div class="account-l fl" style="float:left; width:150px">
        <a class="list-title">信息概览</a>
        <ul id="accordion" class="accordion">
			<li>
                <div class="link"><i class="fa fa-file-text"></i>我的信息<i class="fa fa-chevron-down"></i></div>
                <ul class="submenu">
                    <li id="myorder" onClick="test()"><a>修改信息</a></li>
                </ul>
            </li> 
            <li>
                <div class="link"><i class="fa fa-leaf"></i>产品管理<i class="fa fa-chevron-down"></i></div>
                <ul class="submenu">
                    <li id="shop"><a>新增商品</a></li>
                    <li id="publicproducts"><a>修改商品</a></li>
                    <li id="productlists"><a>产品列表</a></li>
                </ul>
            </li>                       
            <li>
                <div class="link"><i class="fa fa-file-text"></i>订单管理<i class="fa fa-chevron-down"></i></div>
                <ul class="submenu">
                    <li id="myorder"><a>我的订单</a></li>
                    <li id="myrefund"><a>退款申请</a></li>
                </ul>
            </li>                                   
            <!-- 视情况而定 -->
            <li>
                <div class="link"><i class="fa fa-signal"></i>统计管理<i class="fa fa-chevron-down"></i></div>
                <ul class="submenu">
                    <li id="censusmanager"><a>月贸易量</a></li>
                    <li id="statisticmanager"><a>月订单量</a></li>
                </ul>
            </li>          
        </ul>

	</div>
	<div style="float:left;margin-left: 100px">
		<iframe id="id_iframe" name="id_iframe" width="100%" height="90%">
	</div>
</div>	
</body>
        <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
        <script src='../js/leftnav.js'></script>
		<script>
			function test(){
				alert("${user.userid}");
			}
		</script>
</html>