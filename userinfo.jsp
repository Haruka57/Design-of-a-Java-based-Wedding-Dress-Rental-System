<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>个人信息详情 - 梦幻婚纱租借平台</title>
		<link rel="stylesheet" href="bootstrap-3.3.5/css/bootstrap.min.css" />
		<script type="text/javascript" src="bootstrap-3.3.5/js/jquery-1.11.3.js"></script>
		<script type="text/javascript" src="bootstrap-3.3.5/js/bootstrap.min.js"></script>
		<style type="text/css">
			/* 基础样式 */
			body {
			    background-color: #fdf9f7;
			    color: #5a4b42;
			    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
			    padding-top: 70px;
			    margin: 0;
			}
			
			/* 导航栏样式 */
			.navbar-custom {
			    background-color: #fff;
			    border-color: #f1e9e5;
			    box-shadow: 0 2px 4px rgba(0,0,0,0.05);
			}
			
			/* 内容容器样式 */
			.container {
			    margin-top: 30px;
			}
			
			/* 标题样式 */
			.page-header {
			    border-bottom: 1px solid #f1e9e5;
			    margin-bottom: 30px;
			}
			
			.page-header h2 {
			    color: #5a4b42;
			    font-weight: 500;
			}
			
			/* 信息展示区域样式 */
			.info-card {
			    background-color: #fff;
			    padding: 40px;
			    border-radius: 8px;
			    box-shadow: 0 3px 12px rgba(0,0,0,0.06);
			    border: 1px solid #f1e9e5;
			    margin-bottom: 30px;
			}
			
			.info-item {
			    margin-bottom: 25px;
			    padding-bottom: 15px;
			    border-bottom: 1px solid #f1e9e5;
			}
			
			.info-item:last-child {
			    border-bottom: none;
			    margin-bottom: 0;
			}
			
			.info-label {
			    color: #8a7666;
			    font-weight: 500;
			    font-size: 16px;
			    margin-bottom: 5px;
			}
			
			.info-value {
			    color: #5a4b42;
			    font-size: 18px;
			    font-weight: 400;
			}
			
			/* 调试信息样式 */
			.debug-info {
			    background: #fff8dc;
			    padding: 15px;
			    margin-bottom: 20px;
			    border-left: 4px solid #ffd700;
			    border-radius: 4px;
			    font-size: 14px;
			}
			
			/* 页脚样式 */
			.footer {
			    background-color: #f9f3ef;
			    padding: 40px 0 20px;
			    margin-top: 50px;
			    border-top: 1px solid #f1e9e5;
			    text-align: center;
			}
			
			.footer p {
			    color: #8a7666;
			    margin-bottom: 10px;
			    font-size: 14px;
			}
			
			.footer-links a {
			    color: #8a7666;
			    margin: 0 15px;
			    text-decoration: none;
			    transition: color 0.3s ease;
			}
			
			.footer-links a:hover {
			    color: #d9b38c;
			    text-decoration: none;
			}
		</style>
	</head>
	<body>
		<!-- 导航栏 -->
		<nav class="navbar navbar-custom navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
						<span class="sr-only">切换导航</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.jsp">
						<span class="glyphicon glyphicon-heart text-danger"></span>
						梦幻婚纱
					</a>
				</div>
				<div class="collapse navbar-collapse" id="navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="index.jsp">首页</a></li>
						<li><a href="search.jsp">婚纱搜索</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
								登录/注册 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="login.jsp">登录</a></li>
								<li><a href="register.jsp">注册</a></li>
							</ul>
						</li>
						<li class="dropdown active">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
								${sessionScope.username} <span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li class="active"><a href="userinfo">查看个人信息</a></li>
								<li><a href="userupdate.jsp">修改个人信息</a></li>
								<li><a href="login.jsp">退出登录</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		
	
		
		<!-- 内容区域 -->
		<div class="container">
			<div class="page-header">
				<h2>个人信息详情 <small>${sessionScope.username}的个人资料</small></h2>
			</div>
			
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="info-card">
						<div class="info-item">
							<div class="info-label">用户名</div>
							<div class="info-value">${user.username}</div>
						</div>
						
						<div class="info-item">
							<div class="info-label">性别</div>
							<div class="info-value">${user.sex == 1 ? "男" : "女"}</div>
						</div>
						
						<div class="info-item">
							<div class="info-label">租借类型</div>
							<div class="info-value">
								<c:choose>
									<c:when test="${user.depart == 1}">婚礼仪式</c:when>
									<c:when test="${user.depart == 2}">婚纱照拍摄</c:when>
									<c:when test="${user.depart == 3}">订婚宴</c:when>
									<c:when test="${user.depart == 4}">其他重要场合</c:when>
									<c:otherwise>未设置</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					
					
				</div>
			</div>
		</div>
		
		<!-- 页脚 -->
		<div class="footer">
			<div class="container">
				<p>© 2025 梦幻婚纱租借平台 - 让每个新娘都闪耀动人</p>
				<div class="footer-links">
					<a href="#">关于我们</a>
					<a href="#">服务条款</a>
					<a href="#">隐私政策</a>
					<a href="#">联系我们</a>
				</div>
			</div>
		</div>
	</body>
</html>