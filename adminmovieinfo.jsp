<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>婚纱详情</title>
		<link rel="stylesheet" href="bootstrap-3.3.5/css/bootstrap.min.css" />
		<script type="text/javascript" src="bootstrap-3.3.5/js/bootstrap.min.js"></script>
		<style type="text/css">
			li{
				line-height: 35px;
				border-bottom: solid gray 1px;
			}
			.con p{
				line-height: 50px;
			}
		</style>
	</head>
	<body>
		<div class="container-fluid">
			<!-- nav begin -->
			<%@include file="adminhead.jsp" %>
			<!-- nav end -->
		</div>
		
		<!-- contain begin -->
		<main class="container" style="height: 600px;">
	   		<h2 style="margin-top: 20px;">${movie.name }<small>婚纱详情</small></h2><hr>
			<div class="row">
			  <div class="col-md-3" style="margin-top: 30px;">
			  	 <img alt="" src="image/${movie.image }" style="width: 179px;height: 250px;">
			  </div>
			  <div class="col-md-9 con" style="margin-top: 30px;">
			  	<p>尺码：${movie.direct }</p>
			  	<p>类型：${movie.type==1?"鱼尾": movie.type==2?"高腰": movie.type==3?"泡泡袖": "A字裙" }</p>
			  	<p>发货地：${movie.area==1?"武汉": movie.area==2?"广州": movie.area==3?"上海":"杭州" }</p>
			  	<p>价格：${movie.length }</p>
			  	<p>简介：${movie.info }</p>
			  </div>
			</div>
		</main>
		<!-- contain end -->
		
		<!-- foot begin -->
		<footer class="container-fluid" style="background-color: #f8f8f8;text-align: center;padding-top: 20px;padding-bottom: 20px;">
			<p>©  2025 梦幻婚纱租借平台 - 让每个新娘都闪耀动人</p>
			<p>关于我们 服务条款 隐私政策 联系我们</p>
		</footer>
		<!-- foot end -->
		
	</body>
</html>