<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>婚纱搜索</title>
		<link rel="stylesheet" href="bootstrap-3.3.5/css/bootstrap.min.css" />
		<script type="text/javascript" src="bootstrap-3.3.5/js/jquery-1.11.3.js"></script>
		<script type="text/javascript" src="bootstrap-3.3.5/js/bootstrap.min.js"></script>
		<style type="text/css">
			/* 基础样式 */
			body {
			    background-color: #fdf9f7;
			    color: #5a4b42;
			    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
			    line-height: 1.6;
			    padding-top: 70px; /* 为固定导航栏预留空间 */
			}
			
			/* 导航栏样式：新增下拉菜单适配，保持原风格统一 */
			.navbar-custom {
			    background-color: #fff;
			    border-color: #f1e9e5;
			    box-shadow: 0 2px 4px rgba(0,0,0,0.05);
			    position: fixed; /* 固定顶部，确保滚动可见 */
			    top: 0;
			    left: 0;
			    right: 0;
			    z-index: 1030; /* 确保在内容上方 */
			}
			
			.navbar-custom .navbar-brand {
			    color: #5a4b42;
			    font-weight: 500;
			    padding: 15px 20px;
			}
			
			.navbar-custom .navbar-brand:hover {
			    color: #d9b38c;
			}
			
			/* 导航链接基础样式 */
			.navbar-custom .navbar-nav > li > a {
			    color: #5a4b42;
			    padding: 15px 18px; /* 优化点击区域 */
			}
			
			.navbar-custom .navbar-nav > li > a:hover {
			    color: #d9b38c;
			    background-color: transparent;
			}
			
			/* 当前页面导航高亮：当前为婚纱搜索页，高亮对应项 */
			.navbar-custom .navbar-nav > .active > a,
			.navbar-custom .navbar-nav > .active > a:hover {
			    color: #d9b38c;
			    background-color: #f8f3ef;
			}
			
			/* 下拉菜单样式：贴合整体风格 */
			.navbar-custom .dropdown-menu {
			    background-color: #fff;
			    border: 1px solid #f1e9e5;
			    box-shadow: 0 6px 12px rgba(0,0,0,0.05);
			    margin-top: 0; /* 消除与导航项的间隙 */
			}
			
			.navbar-custom .dropdown-menu > li > a {
			    color: #5a4b42;
			    padding: 10px 20px;
			}
			
			.navbar-custom .dropdown-menu > li > a:hover {
			    color: #d9b38c;
			    background-color: #f8f3ef;
			}
			
			/* 下拉caret图标颜色：贴合文字色 */
			.navbar-custom .dropdown-toggle .caret {
			    border-top-color: #5a4b42;
			    border-bottom-color: #5a4b42;
			}
			
			.navbar-custom .dropdown-toggle:hover .caret {
			    border-top-color: #d9b38c;
			    border-bottom-color: #d9b38c;
			}
			
			/* 搜索区域样式 */
			.search-container {
			    background-color: #fff;
			    border-radius: 8px;
			    box-shadow: 0 2px 10px rgba(0,0,0,0.05);
			    padding: 30px;
			    margin-top: 30px;
			}
			
			.form-horizontal {
			    margin-bottom: 25px;
			}
			
			.form-group {
			    margin-bottom: 20px;
			}
			
			.control-label {
			    color: #5a4b42;
			    font-weight: 500;
			}
			
			.form-control {
			    border: 1px solid #f1e9e5;
			    border-radius: 4px;
			    box-shadow: none;
			    transition: border-color 0.3s ease;
			}
			
			.form-control:focus {
			    border-color: #d9b38c;
			    box-shadow: 0 0 0 2px rgba(217, 179, 140, 0.2);
			}
			
			.btn-default {
			    background-color: #d9b38c;
			    color: #fff;
			    border: none;
			    padding: 8px 20px;
			    border-radius: 4px;
			    transition: background-color 0.3s ease;
			}
			
			.btn-default:hover {
			    background-color: #c9a07c;
			    color: #fff;
			}
			
			/* 筛选区域样式 */
			.filter-section {
			    padding: 20px 0;
			    border-top: 1px solid #f1e9e5;
			}
			
			.filter-section p {
			    margin-bottom: 15px;
			    color: #5a4b42;
			    font-weight: 500;
			}
			
			.filter-section a {
			    color: #8a7666;
			    padding: 5px 10px;
			    border-radius: 4px;
			    transition: all 0.3s ease;
			}
			
			.filter-section a:hover,
			.filter-section a.active {
			    color: #d9b38c;
			    text-decoration: none;
			    background-color: #f8f3ef;
			}
			
			/* 内容区域样式 */
			.content-section {
			    margin-top: 30px;
			}
			
			.section-header {
			    margin-bottom: 20px;
			    padding-bottom: 10px;
			    border-bottom: 1px solid #f1e9e5;
			}
			
			.section-header h3 {
			    color: #5a4b42;
			    font-weight: 500;
			    margin: 0;
			}
			
			.section-header small {
			    color: #8a7666;
			}
			
			/* 重新设计婚纱卡片布局 - 解决图片尺寸不一致问题 */
			.thumbnail {
			    border: none;
			    border-radius: 6px;
			    box-shadow: 0 2px 10px rgba(0,0,0,0.05);
			    overflow: hidden;
			    transition: transform 0.3s ease, box-shadow 0.3s ease;
			    background-color: #fff;
			    height: 350px; /* 固定整体高度 */
			    display: flex;
			    flex-direction: column;
			}
			
			.thumbnail:hover {
			    transform: translateY(-5px);
			    box-shadow: 0 8px 15px rgba(0,0,0,0.1);
			}
			
			/* 图片容器 - 固定高度并确保图片适配 */
			.image-container {
			    height: 220px; /* 固定图片容器高度 */
			    overflow: hidden;
			    display: flex;
			    align-items: center;
			    justify-content: center;
			    background-color: #f8f3ef; /* 添加背景色，当图片有空白时更美观 */
			}
			
			.thumbnail img {
			    max-width: 100%;
			    max-height: 100%;
			    width: auto;
			    height: auto;
			    object-fit: contain; /* 确保图片完整显示，不会被裁剪 */
			}
			
			.caption {
			    padding: 15px;
			    text-align: center;
			    flex-grow: 1;
			    display: flex;
			    flex-direction: column;
			    justify-content: center;
			    min-height: 120px; /* 确保文字区域有足够空间 */
			    border-top: 1px solid #f1e9e5;
			}
			
			.caption h4 {
			    color: #5a4b42;
			    margin-bottom: 8px;
			    font-size: 16px;
			    line-height: 1.3;
			    /* 允许多行显示，超出显示省略号 */
			    display: -webkit-box;
			    -webkit-line-clamp: 2; /* 最多显示2行 */
			    -webkit-box-orient: vertical;
			    overflow: hidden;
			}
			
			.caption small {
			    color: #8a7666;
			    font-size: 14px;
			    line-height: 1.3;
			}
			
			/* 确保网格布局整齐 */
			.row.equal-height {
			    display: flex;
			    flex-wrap: wrap;
			}
			
			.row.equal-height > [class*='col-'] {
			    display: flex;
			    flex-direction: column;
			    margin-bottom: 20px; /* 增加底部间距 */
			}
			
			/* 页脚样式 */
			.footer {
			    background-color: #f9f3ef;
			    padding: 40px 0 20px;
			    margin-top: 50px;
			    border-top: 1px solid #f1e9e5;
				color: #8a7666;
			}
			
			.footer p {
			    margin-bottom: 10px;
			    font-size: 14px;
			}
			
			/* 响应式调整 */
			@media (max-width: 768px) {
				/* 移动端导航：下拉菜单全屏，链接居中 */
				.navbar-custom .navbar-collapse {
				    padding: 0;
				    background-color: #fff;
				}
				.navbar-custom .navbar-nav {
				    margin: 0;
				}
				.navbar-custom .navbar-nav > li {
				    text-align: center;
				}
				
				/* 移动端样式调整 */
				.search-container {
					padding: 20px;
				}
				
				.filter-section a {
					display: inline-block;
					margin-bottom: 8px;
				}
				
				.thumbnail {
					height: auto;
					margin-bottom: 20px;
				}
				
				.image-container {
					height: 180px; /* 移动端图片容器高度 */
				}
				
				.caption {
					min-height: 100px;
					padding: 12px;
				}
				
				.caption h4 {
					font-size: 15px;
				}
				
				.caption small {
					font-size: 13px;
				}
				
				/* 移动端取消flex布局 */
				.row.equal-height {
				    display: block;
				}
				
				.row.equal-height > [class*='col-'] {
				    display: block;
				}
			}
			
			/* 小屏幕手机优化 */
			@media (max-width: 480px) {
				.image-container {
					height: 150px;
				}
				
				.caption {
					padding: 10px;
					min-height: 90px;
				}
				
				.caption h4 {
					font-size: 14px;
					-webkit-line-clamp: 2; /* 小屏幕保持2行 */
				}
				
				.caption small {
					font-size: 12px;
				}
			}
			
			/* 大屏幕优化 */
			@media (min-width: 1200px) {
				.thumbnail {
					height: 370px; /* 大屏幕稍微增加高度 */
				}
				
				.image-container {
					height: 240px; /* 大屏幕图片容器稍大 */
				}
				
				.caption {
					min-height: 130px;
				}
			}
		</style>
	</head>
	<body>
		<!-- 导航栏：按统一要求修改为「首页、电影搜索、登录/注册下拉、个人信息下拉」 -->
		<nav class="navbar navbar-custom navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
						<span class="sr-only">切换导航</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- 品牌Logo：保留原图标+文字，与其他页面统一 -->
					<a class="navbar-brand" href="index.jsp">
						<span class="glyphicon glyphicon-heart text-danger"></span> 梦幻婚纱
					</a>
				</div>
				<!-- 导航内容：含下拉菜单，当前页「电影搜索」高亮 -->
				<div class="collapse navbar-collapse" id="navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<!-- 1. 首页：普通链接 -->
						<li><a href="index.jsp">首页</a></li>
						<!-- 2. 电影搜索：当前页，添加active高亮 -->
						<li class="active"><a href="search.jsp">婚纱搜索</a></li>
						<!-- 3. 登录/注册：下拉菜单 -->
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
								登录/注册 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="login.jsp">登录</a></li>
								<li><a href="register.jsp">注册</a></li>
							</ul>
						</li>
						<!-- 4. 个人信息：下拉菜单（含查看/修改） -->
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
		
		<!-- contain begin：保留原搜索页面所有功能逻辑 -->
		<main class="container">
			<div class="row">
				<section class="col-md-12 search-container" aria-label="搜索和筛选">
					<form class="form-horizontal" action="search" method="post">
					  <div class="form-group">
					    <label for="inputName" class="col-sm-2 control-label">婚纱名称</label>
					    <div class="col-sm-6">
					      <input type="text" name="name" class="form-control" id="inputName" placeholder="婚纱名称">
					    </div>
					      <button type="submit" class="btn btn-default">搜索</button>
					  </div>
					</form>
					
					<div class="filter-section">
						<p><a href="search" style="margin-right: 20px;">全部婚纱</a></p>
						<p>婚纱类型：
						   <a href="search?type=1" style="margin-right: 20px;">鱼尾</a>
						   <a href="search?type=2" style="margin-right: 20px;">高腰</a>
						   <a href="search?type=3" style="margin-right: 20px;">蓬蓬裙</a>
						   <a href="search?type=4" style="margin-right: 20px;">A字裙</a>
						</p>
						<p>发货地：
						   <a href="search?area=1" style="margin-right: 20px;">武汉</a>
						   <a href="search?area=2" style="margin-right: 20px;">广州</a>
						   <a href="search?area=3" style="margin-right: 20px;">上海</a>
						   <a href="search?area=4" style="margin-right: 20px;">杭州</a>
						</p>
					</div>
				</section>
			</div>
			
			<section class="row content-section" aria-labelledby="search-results">
			  <div class="col-md-12">
			  	<header class="section-header">
			  		<h3><span id="search-results">搜索结果</span> <small>婚纱列表</small></h3>
			  	</header>
			  	<!-- 使用equal-height类确保卡片等高排列 -->
			  	<div class="row equal-height">
			  	
				  <c:forEach items="${list }" var="m">
					  <article class="col-md-3 col-sm-6">
					    <div class="thumbnail">
					      <a href="movieinfo?mid=${m.mid }" target="_blank" class="image-container">
					     	 <img src="image/${m.image }" title="${m.name }" alt="${m.name }">
					      </a>
					      <div class="caption">
					        <h4>${m.name }</h4>
					        <small>${m.type==1?"鱼尾": m.type==2?"高腰": m.type==3?"蓬蓬裙": "A字裙" }</small>
					      </div>
					    </div>
					  </article>
				  </c:forEach>
				  
				</div>
			  </div>
			</section>
		</main>
		<!-- contain end -->
		
		<!-- foot begin：保留原页脚 -->
		<footer class="footer text-center">
			<div class="container">
				<p>© 2025 梦幻婚纱租借平台 - 让每个新娘都闪耀动人</p>
				<p>关于我们 · 服务条款 · 隐私政策 · 联系我们</p>
			</div>
		</footer>
		<!-- foot end -->
		
	</body>
</html>