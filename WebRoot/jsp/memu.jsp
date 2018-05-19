<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <!-- Iconos -->
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
    <link rel="stylesheet" href="../css/leftnav.css" media="screen" type="text/css"/>
</head>
<body style="padding: 10px;">
<!-- Contenedor -->
    <div class="account-l fl" style="float:left; width:150px">
        <a class="list-title">信息概览</a>
        <ul id="accordion" class="accordion">
			<li>
                <div class="link"><i class="fa fa-file-text"></i>我的信息<i class="fa fa-chevron-down"></i></div>
                <ul class="submenu">
                    <li id="myinfo" onClick="update()"><a>修改信息</a></li>
                </ul>
            </li> 
            <li>
                <div class="link"><i class="fa fa-leaf"></i>产品管理<i class="fa fa-chevron-down"></i></div>
                <ul class="submenu">
                    <li id="shop" onClick="addgoods()"><a>新增商品</a></li>
                    <li id="productlists" onClick="list()"><a>产品列表</a></li>
                </ul>
            </li>
             <li>
                <div class="link"><i class="fa fa-file-text"></i>客户管理<i class="fa fa-chevron-down"></i></div>
                <ul class="submenu">
                    <li id="mycutomer" onClick="cutomerlist()"><a>我的客户</a></li>
                    <li id="addcutomer" onClick="addcutomer()"><a>新增客户</a></li>
                </ul>
            </li>                        
            <li>
                <div class="link"><i class="fa fa-file-text"></i>订单管理<i class="fa fa-chevron-down"></i></div>
                <ul class="submenu">
                    <li id="myorder" onClick="orderlist()"><a>我的订单</a></li>
                    <li id="addorder" onClick="addorder()"><a>新增订单</a></li>
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
	<div style="float:left">
	</div>
</body>
        <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
        <script src='../js/leftnav.js'></script>
        <script src='../js/memu.js' type="text/javascript" charset="utf-8"></script>
        <script src='../js/cutomer/cutomermenu.js' type="text/javascript" charset="utf-8"></script>		
</html>