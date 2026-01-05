<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<!-- 引入Bootstrap资源，确保交互正常 -->
	<link rel="stylesheet" href="bootstrap-3.3.5/css/bootstrap.min.css" />
	<script type="text/javascript" src="bootstrap-3.3.5/js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="bootstrap-3.3.5/js/bootstrap.min.js"></script>
	<style type="text/css">
		/* 婚纱风格导航栏：简洁右侧布局 */
		.navbar-custom {
		    background-color: #fff; /* 白色导航栏，贴合婚纱优雅感 */
		    border-color: #f1e9e5; /* 浅棕色边框，统一暖色调 */
		    box-shadow: 0 2px 4px rgba(0,0,0,0.05); /* 轻微阴影，增强层次 */
		    margin-bottom: 2px; /* 保留原底部间距 */
		}
		/* 导航链接基础样式 */
		.navbar-custom .navbar-nav > li > a {
		    color: #5a4b42; /* 柔和棕色文字，避免刺眼 */
		    padding: 15px 18px; /* 优化点击区域，提升体验 */
		    font-weight: 500;
		    font-size: 14px;
		}
		/* 导航链接hover与激活状态 */
		.navbar-custom .navbar-nav > li > a:hover,
		.navbar-custom .navbar-nav > li > a:focus {
		    color: #d9b38c; /* 暖棕色hover色，增强交互反馈 */
		    background-color: transparent;
		}
		.navbar-custom .navbar-nav > .active > a,
		.navbar-custom .navbar-nav > .active > a:hover {
		    color: #d9b38c;
		    background-color: #f8f3ef; /* 浅暖底色，突出当前页 */
		}
		/* 下拉菜单样式 */
		.navbar-custom .dropdown-menu {
		    background-color: #fff;
		    border: 1px solid #f1e9e5;
		    box-shadow: 0 6px 12px rgba(0,0,0,0.05); /* 柔和阴影，避免生硬 */
		    border-radius: 4px;
		    min-width: 120px; /* 适配菜单文字长度 */
		}
		/* 下拉菜单项样式 */
		.navbar-custom .dropdown-menu > li > a {
		    color: #5a4b42;
		    padding: 10px 15px; /* 优化内边距，避免拥挤 */
		    line-height: 1.6;
		}
		.navbar-custom .dropdown-menu > li > a:hover {
		    color: #d9b38c;
		    background-color: #f8f3ef; /* 与激活页一致，保持风格统一 */
		}
		/* 下拉菜单分隔线 */
		.navbar-custom .dropdown-menu .divider {
		    background-color: #f1e9e5; /* 浅棕色分隔线，贴合整体色调 */
		}
		/* 移动端汉堡按钮 */
		.navbar-custom .navbar-toggle {
		    border-color: #f1e9e5;
		    margin-right: 15px; /* 调整按钮右间距 */
		}
		.navbar-custom .navbar-toggle .icon-bar {
		    background-color: #5a4b42; /* 棕色图标条，匹配文字色 */
		}
		.navbar-custom .navbar-toggle:hover {
		    background-color: #f8f3ef;
		}
		/* 欢迎语样式（已登录状态） */
		.navbar-custom .navbar-nav > li > a.welcome-text {
		    padding-top: 15px;
		    padding-bottom: 15px;
		    cursor: default; /* 非链接，取消指针样式 */
		}
		.navbar-custom .navbar-nav > li > a.welcome-text:hover {
		    color: #5a4b42; /*  hover不变色，区分可点击链接 */
		}
	</style>
</head>
<body>
	<!-- 页眉 - 使用语义化 header 标签包裹导航栏 -->
	<header>
		<!-- 婚纱风格导航栏：所有内容居右 - 使用语义化 nav 标签 -->
	<nav class="navbar navbar-custom" role="navigation">
		<div class="container-fluid">
			<!-- 移动端汉堡按钮（仅小屏幕显示） -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
						data-target="#wedding-navbar-collapse" aria-expanded="false">
					<span class="sr-only">切换导航</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>

			<!-- 所有导航内容：统一放在右侧折叠区域 -->
			<div class="collapse navbar-collapse" id="wedding-navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<!-- 1. 核心导航：首页、婚纱搜索（居右显示） -->
					<li <c:if test="${pageContext.request.servletPath == '/index' || pageContext.request.servletPath == '/index.jsp'}">class="active"</c:if>>
						<a href="index">首页</a>
					</li>
					<li <c:if test="${pageContext.request.servletPath == '/search' || pageContext.request.servletPath == '/search.jsp'}">class="active"</c:if>>
						<a href="search">婚纱搜索</a>
					</li>

					<!-- 2. 登录状态判断：未登录显示“登录/注册”下拉 -->
					<c:if test="${username == null}">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
								登录/注册 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="login.jsp">登录账号</a></li>
								<li><a href="register.jsp">注册账号</a></li>
							</ul>
						</li>
					</c:if>

					<!-- 3. 已登录状态：欢迎语 + 个人中心下拉 -->
					<c:if test="${username != null}">
						<!-- 欢迎语：非链接，仅展示 -->
						<li><a class="welcome-text">欢迎：${username }</a></li>
						
						<!-- 个人中心下拉：包含个人信息、修改信息、退出 -->
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
								个人中心 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li <c:if test="${pageContext.request.servletPath == '/userinfo' || pageContext.request.servletPath == '/userinfo.jsp'}">class="active"</c:if>>
									<a href="userinfo">个人信息</a>
								</li>
								<li <c:if test="${pageContext.request.servletPath == '/userupdate' || pageContext.request.servletPath == '/userupdate.jsp'}">class="active"</c:if>>
									<a href="userupdatein?uid=${user.uid}">修改个人信息</a>
								</li>
								<li role="separator" class="divider"></li>
								<li><a href="loginout">退出登录</a></li>
							</ul>
						</li>
					</c:if>
				</ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
	</header>
</body>
</html>