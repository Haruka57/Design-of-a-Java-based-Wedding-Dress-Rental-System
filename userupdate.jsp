<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>修改个人信息 - 梦幻婚纱租借平台</title>
		<link rel="stylesheet" href="bootstrap-3.3.5/css/bootstrap.min.css" />
		<script type="text/javascript" src="bootstrap-3.3.5/js/jquery-1.11.3.js"></script>
		<script type="text/javascript" src="bootstrap-3.3.5/js/bootstrap.min.js"></script>
		<style type="text/css">
			/* 基础样式：与其他页面保持一致 */
			body {
			    background-color: #fdf9f7;
			    color: #5a4b42;
			    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
			    padding-top: 70px;
			    margin: 0;
			}
			
			/* 导航栏样式复用 */
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
			
			/* 表单样式优化 */
			.form-horizontal {
			    background-color: #fff;
			    padding: 30px;
			    border-radius: 8px;
			    box-shadow: 0 3px 12px rgba(0,0,0,0.06);
			    border: 1px solid #f1e9e5;
			}
			
			.form-group {
			    margin-bottom: 25px;
			}
			
			.control-label {
			    color: #8a7666;
			    font-weight: 500;
			}
			
			.form-control {
			    border: 1px solid #e6d9cf;
			    border-radius: 4px;
			    height: 44px;
			    transition: all 0.3s ease;
			}
			
			.form-control:focus {
			    border-color: #d9b38c;
			    box-shadow: 0 0 0 3px rgba(217, 179, 140, 0.2);
			}
			
			/* 按钮样式 */
			.btn-primary {
			    background-color: #d9b38c;
			    border-color: #d9b38c;
			    color: #fff;
			    padding: 10px 20px;
			    font-size: 16px;
			    border-radius: 4px;
			}
			
			.btn-primary:hover {
			    background-color: #c9a07c;
			    border-color: #c9a07c;
			    color: #fff;
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
			
			/* 错误提示 */
			.error-message {
			    color: #a94442;
			    margin-top: 5px;
			    font-size: 14px;
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
								个人信息 <span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li><a href="userinfo.jsp">查看个人信息</a></li>
								<li class="active"><a href="userupdate.jsp">修改个人信息</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		
		<!-- 内容区域 -->
		<main class="container">
			<div class="page-header">
				<h2>个人信息管理 <small>修改个人资料</small></h2>
			</div>
			
			<section class="row">
				<div class="col-md-8 col-md-offset-2">
					<form class="form-horizontal" action="userupdate" method="post" onsubmit="return validateForm()">
						<input type="hidden" name="uid" value="${user.uid }">
						
						<div class="form-group">
							<label for="username" class="col-sm-3 control-label">用户名</label>
							<div class="col-sm-9">
								<input type="text" name="username" value="${user.username}" class="form-control" id="username" placeholder="请输入用户名" required>
							</div>
						</div>
						
						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">密码</label>
							<div class="col-sm-9">
								<input type="password" name="password" value="${user.password }" class="form-control" id="password" placeholder="请输入密码" required>
								<div id="passwordError" class="error-message"></div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="sex" class="col-sm-3 control-label">性别</label>
							<div class="col-sm-9">
								<select name="sex" class="form-control" id="sex">
									<option value="1" <c:if test="${user.sex == 1}">selected</c:if>>男</option>
									<option value="2" <c:if test="${user.sex == 2}">selected</c:if>>女</option>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="depart" class="col-sm-3 control-label">租借用途</label>
							<div class="col-sm-9">
								<select name="depart" class="form-control" id="depart">
									<option value="1" <c:if test="${user.depart == 1}">selected</c:if>>婚礼仪式</option>
									<option value="2" <c:if test="${user.depart == 2}">selected</c:if>>婚纱照拍摄</option>
									<option value="3" <c:if test="${user.depart == 3}">selected</c:if>>订婚宴</option>
									<option value="4" <c:if test="${user.depart == 4}">selected</c:if>>其他重要场合</option>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-9">
								<button type="submit" class="btn btn-primary">保存修改</button>
								<a href="userinfo.jsp" class="btn btn-default" style="margin-left: 10px;">取消</a>
							</div>
						</div>
					</form>
				</div>
			</section>
		</main>
		
		<!-- 页脚 -->
		<footer class="footer">
			<div class="container">
				<p>© 2025 梦幻婚纱租借平台 - 让每个新娘都闪耀动人</p>
				<div class="footer-links">
					<a href="#">关于我们</a>
					<a href="#">服务条款</a>
					<a href="#">隐私政策</a>
					<a href="#">联系我们</a>
				</div>
			</div>
		</footer>

		<script>
			// 表单验证
			function validateForm() {
				var password = document.getElementById("password").value;
				var passwordError = document.getElementById("passwordError");
				
				// 简单的密码验证
				if (password.length < 6) {
					passwordError.textContent = "密码长度不能少于6个字符";
					return false;
				}
				
				passwordError.textContent = "";
				return true;
			}
			
			// 页面加载完成后执行
			$(function() {
				// 为密码输入框添加实时验证
				$("#password").on("blur", function() {
					var password = $(this).val();
					if (password.length < 6) {
						$("#passwordError").text("密码长度不能少于6个字符");
					} else {
						$("#passwordError").text("");
					}
				});
			});
		</script>
	</body>
</html>
