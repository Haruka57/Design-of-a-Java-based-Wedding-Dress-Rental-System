<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加婚纱</title>
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
	   		<h2 style="margin-top: 20px;">婚纱管理<small>新增婚纱</small></h2><hr>
			<div class="row">
			  <div class="col-md-10" style="margin-top: 30px;">
			     <form class="form-horizontal" action="addmovie" method="post">
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">婚纱名称</label>
					    <div class="col-sm-10">
					      <input type="text" name="name" class="form-control" id="inputEmail3" placeholder="婚纱名称">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="sizeSelect" class="col-sm-2 control-label">尺码</label>
					    <div class="col-sm-10">
					      <select name="direct" class="form-control" id="sizeSelect">
							  <option value="S">S</option>
							  <option value="M">M</option>
							  <option value="L">L</option>
							  <option value="XL">XL</option>
							</select>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">婚纱图片</label>
					    <div class="col-sm-10">
					      <input type="text" name="image" class="form-control" id="inputPassword3" placeholder="婚纱图片">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">婚纱价格</label>
					    <div class="col-sm-10">
					      <input type="text" name="length" class="form-control" id="inputPassword3" placeholder="婚纱价格">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">婚纱类型</label>
					    <div class="col-sm-10" style="text-align: left;">
					         <select name="type" class="form-control">
							  <option value="1">鱼尾</option>
							  <option value="2">高腰</option>
							  <option value="3">蓬蓬裙</option>
							  <option value="4">A字裙</option>
							</select>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">发货地</label>
					    <div class="col-sm-10" style="text-align: left;">
					         <select name="area" class="form-control">
							  <option value="1">武汉</option>
							  <option value="2">广州</option>
							  <option value="3">上海</option>
							  <option value="4">杭州</option>
							</select>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">婚纱简介</label>
					    <div class="col-sm-10">
					    <textarea rows="3" cols="106" name="info"></textarea>
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-10 col-sm-2">
					      <button type="submit" class="btn btn-default">ADD</button>
					    </div>
					  </div>
					</form>
			  	 
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