<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>婚纱管理</title>
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
		<div class="container" style="height: 100%;">
	   		<h2 style="margin-top: 20px;">婚纱管理<small>婚纱列表</small></h2><hr>
			<div class="row">
			  <div class="col-md-12" style="margin-top: 30px;">
			    <a class="btn btn-info" href="adminmovieadd.jsp">增加</a>
			    <span style="color: red;">${info }</span>
			  	<table class="table table-hover">
			  		<tr>
			  			<th>名称</th>
			  			<th>尺码</th>
			  			<th>类型</th>
			  			<th>发货地</th>
			  			<th>价格</th>
			  			<th>操作</th>
			  		</tr>
			  		<c:forEach items="${list }" var="m">
			  			<tr>
				  			<td>${m.name }</td>
				  			<td>${m.direct }</td>
				  			<td>${m.type==1?"鱼尾": m.type==2?"高腰": m.type==3?"蓬蓬裙": "A字裙" }</td>
				  			<td>${m.area==1?"武汉": m.area==2?"广州": m.area==3?"上海":"杭州" }</td>
				  			<td>${m.length }</td>
				  			<td>
				  				<a href="movieinfo?f=1&mid=${m.mid }" target="_blank">详情&nbsp;&nbsp;</a> 
				  				<a href="delmovie?mid=${m .mid }"   target="_blank"
				  				  onclick="javascript:if(!confirm('是否确认删除?')){return false;}">删除&nbsp;&nbsp;</a>
								<a href="movieupdatein?mid=${m.mid }">修改&nbsp;&nbsp;</a>
  								<c:if test="${m.flag==1 }">
	  								<a href="moviepush?flag=2&mid=${m.mid }">推首</a>
  								</c:if>
  								<c:if test="${m.flag==2 }">
	  								<a href="moviepush?flag=1&mid=${m.mid }">撤首</a>
  								</c:if>
				  			</td>
				  		</tr>
			  		</c:forEach>
			  	</table>
			  </div>
			</div>
		</div>
		<!-- contain end -->
		
		<!-- foot begin -->
		<div style="background-color: #f8f8f8;text-align: center;padding-top: 20px;padding-bottom: 20px;">
			<p>© 2025 梦幻婚纱租借平台 - 让每个新娘都闪耀动人</p>
			<p>关于我们 服务条款 隐私政策 联系我们</p>
		</div>
		<!-- foot end -->
		
	</body>
</html>