<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>婚纱租借系统</title>
		<link rel="stylesheet" href="bootstrap-3.3.5/css/bootstrap.min.css" />
		<script type="text/javascript" src="bootstrap-3.3.5/js/bootstrap.min.js"></script>
		<style type="text/css">
			li{
				line-height: 35px;
				border-bottom: solid gray 1px;
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
		<div class="container" style="height: 600px;">
			<div class="row">
			  <div class="col-md-12" style="margin-top: 300px;">
			   		<h2 style="margin-top: 0px;text-align: center;">欢迎使用婚纱租借系统</h2>
			  </div>
			</div>
		</div>
		<!-- contain end -->
		
		<!-- foot begin -->
		<div class="container-fluid" style="background-color: #f8f8f8;text-align: center;padding-top: 20px;padding-bottom: 20px;">
			<p>© 2025 梦幻婚纱租借平台 - 让每个新娘都闪耀动人</p>
			<p>关于我们 服务条款 隐私政策 联系我们</p>
		</div>
		<!-- foot end -->
		
	</body>
</html>