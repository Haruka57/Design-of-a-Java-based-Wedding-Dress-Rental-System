<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>梦幻婚纱租借平台 - 首页</title>
		<link rel="stylesheet" href="bootstrap-3.3.5/css/bootstrap.min.css" />
		<script type="text/javascript" src="bootstrap-3.3.5/js/jquery-1.11.3.js"></script>
		<script type="text/javascript" src="bootstrap-3.3.5/js/bootstrap.min.js"></script>
		<style type="text/css">
			/* 整体香槟色主题 */
			body {
				background-color: #fdf9f7;
				color: #5a4b42;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
				padding-top: 0;
			}
			
			/* 导航栏样式 */
			.navbar-custom {
				background-color: #fff;
				border-color: #f1e9e5;
				box-shadow: 0 2px 4px rgba(0,0,0,0.05);
				margin-bottom: 0;
			}
			
			.navbar-custom .navbar-brand {
				color: #5a4b42;
				font-weight: 500;
			}
			
			.navbar-custom .navbar-nav > li > a {
				color: #5a4b42;
			}
			
			.navbar-custom .navbar-nav > li > a:hover {
				color: #d9b38c;
			}
			
			.navbar-custom .navbar-nav > .active > a {
				background-color: #f9f3ef;
				color: #d9b38c;
			}
			
			/* 轮播图样式 - 减小尺寸且无文字 */
			.carousel {
				margin-bottom: 30px;
			}
			
			.carousel-inner > .item > img {
				width: 100%;
				height: 350px;
				object-fit: cover;
			}
			
			/* 内容区域样式 */
			.container {
				margin-bottom: 40px;
			}
			
			h3 {
				color: #5a4b42;
				border-bottom: 2px solid #d9b38c;
				padding-bottom: 10px;
				margin-bottom: 20px;
			}
			
			/* 婚纱卡片样式 */
			.thumbnail {
				border: 1px solid #f1e9e5;
				border-radius: 6px;
				transition: all 0.3s ease;
				background-color: #fff;
				height: 350px;
				overflow: hidden;
				margin-bottom: 20px;
			}
			
			.thumbnail:hover {
				box-shadow: 0 5px 15px rgba(0,0,0,0.1);
				transform: translateY(-5px);
				border-color: #d9b38c;
			}
			
			.thumbnail img {
				border-radius: 6px 6px 0 0;
				width: 100%;
				height: 250px;
				object-fit: cover;
			}
			
			.caption h4 {
				color: #5a4b42;
				font-weight: 500;
				margin-top: 10px;
				font-size: 16px;
				white-space: nowrap;
				overflow: hidden;
				text-overflow: ellipsis;
			}
			
			.caption small {
				color: #d9b38c;
			}
			
			/* 热门婚纱列表样式 */
			ol {
				padding-left: 20px;
			}
			
			ol li {
				line-height: 35px;
				border-bottom: solid 1px #f1e9e5;
				margin-bottom: 10px;
				padding-bottom: 10px;
			}
			
			ol li:last-child {
				border-bottom: none;
			}
			
			a {
				color: #8a7666;
				text-decoration: none;
				transition: color 0.3s ease;
			}
			
			a:hover {
				color: #d9b38c;
				text-decoration: none;
			}
			
			/* 页脚样式 */
			.footer-custom {
				background-color: #f9f3ef;
				padding: 30px 0;
				border-top: 1px solid #f1e9e5;
				margin-top: 40px;
			}
			
			.footer-custom p {
				color: #8a7666;
				margin-bottom: 5px;
			}
			
			.footer-links {
				margin-top: 15px;
			}
			
			.footer-links a {
				margin: 0 10px;
				font-size: 14px;
			}
			
			/* 确保数据正常显示 */
			.row {
				margin-left: -15px;
				margin-right: -15px;
			}
			
			.col-md-3, .col-md-4, .col-md-9 {
				padding-left: 15px;
				padding-right: 15px;
			}
		</style>
	</head>
	<body>
		<!-- 页眉 - 使用语义化 header 标签 -->
		<header>
			<!-- 导航栏 - 使用语义化 nav 标签 -->
			<nav class="navbar navbar-custom navbar-static-top">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
							<span class="sr-only">切换导航</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="index.jsp">
							<span class="glyphicon glyphicon-heart" style="color: #d9b38c;"></span>
						</a>
					</div>
					<div class="collapse navbar-collapse" id="navbar-collapse">
						<ul class="nav navbar-nav navbar-right">
							<li class="active"><a href="index.jsp">首页</a></li>
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
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
									个人信息 <span class="caret"></span>
								</a>
								<ul class="dropdown-menu">
									<li><a href="userinfo.jsp">查看个人信息</a></li>
									<li><a href="userupdate.jsp">修改个人信息</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</header>

		<!-- 主要内容区域 - 使用语义化 main 标签 -->
		<main>
			<!-- 轮播图 - 无文字描述 -->
			<div id="weddingCarousel" class="carousel slide" data-ride="carousel">
				<!-- 指示器 -->
				<ol class="carousel-indicators">
					<li data-target="#weddingCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#weddingCarousel" data-slide-to="1"></li>
					<li data-target="#weddingCarousel" data-slide-to="2"></li>
				</ol>
				
				<!-- 轮播内容 - 删除了所有文字描述 -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="image/wedding1.png" alt="奢华婚纱展示">
					</div>
					<div class="item">
						<img src="image/wedding2.png" alt="精致婚纱展示">
					</div>
					<div class="item">
						<img src="image/wedding3.png" alt="优雅婚纱展示">
					</div>
				</div>
				
				<!-- 控制按钮 -->
				<a class="left carousel-control" href="#weddingCarousel" role="button" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">上一张</span>
				</a>
				<a class="right carousel-control" href="#weddingCarousel" role="button" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">下一张</span>
				</a>
			</div>
			
			<!-- 婚纱展示区域 - 使用语义化 section 标签 -->
			<section class="container">
				<div class="row">
					<!-- 推荐婚纱区域 - 使用语义化 article 标签 -->
					<article class="col-md-9">
						<h3>推荐婚纱 <small>每一件都独具匠心</small></h3>
						<div class="row">
							<c:forEach items="${list}" var="m">
								<div class="col-md-3">
									<div class="thumbnail">
										<a href="movieinfo?mid=${m.mid}" target="_blank">
											<img src="image/${m.image}" style="width: 100%; height: 250px;" title="${m.name}" alt="${m.name}">
										</a>
										<div class="caption">
											<h4>${m.name} <small>&nbsp;${m.type==1?"鱼尾": m.type==2?"高腰": m.type==3?"泡泡袖": "A字裙"}</small></h4>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</article>
					
					<!-- 热门婚纱区域 - 使用语义化 aside 标签 -->
					<aside class="col-md-3">
						<h3>热门婚纱 <small>畅销款式</small></h3>
						<ol>
							<c:forEach items="${listhit}" var="m">
								<li>
									<a href="movieinfo?mid=${m.mid}" target="_blank">${m.name}</a>
								</li>
							</c:forEach>
						</ol>
					</aside>
				</div>
			</section>
		</main>
		
		<!-- 页脚 - 使用语义化 footer 标签 -->
		<footer class="footer-custom">
			<div class="container text-center">
				<p>© 2025 梦幻婚纱租借平台 - 让每个新娘都闪耀动人</p>
				<nav class="footer-links">
					<a href="#">关于我们</a>
					<a href="#">服务条款</a>
					<a href="#">隐私政策</a>
					<a href="#">联系我们</a>
				</nav>
			</div>
		</footer>
		
		<script type="text/javascript">
			// 初始化轮播图
			$(document).ready(function(){
				$('#weddingCarousel').carousel({
					interval: 5000, // 5秒自动切换
					pause: "hover"  // 鼠标悬停时暂停
				});
			});
		</script>
	</body>
</html>