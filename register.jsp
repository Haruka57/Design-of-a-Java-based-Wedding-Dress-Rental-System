<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>婚纱租借平台 - 注册</title>
    <!-- 引入本地Bootstrap资源 -->
    <link rel="stylesheet" href="bootstrap-3.3.5/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap-3.3.5/css/bootstrap-theme.css">
    <style>
        /* 基础样式 */
        body {
            background-color: #fdf9f7;
            color: #5a4b42;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            padding-top: 50px;
        }
        
        /* 导航栏样式 */
        .navbar-custom {
            background-color: #fff;
            border-color: #f1e9e5;
            box-shadow: 0 2px 4px rgba(0,0,0,0.05);
        }
        
        .navbar-custom .navbar-brand {
            color: #5a4b42;
            font-weight: 500;
            padding: 15px 20px;
        }
        
        .navbar-custom .navbar-brand:hover {
            color: #d9b38c;
        }
        
        /* 轮播图样式 - 减小高度 */
        .carousel {
            margin-bottom: -120px; /* 增大负值使注册框上移更多 */
        }
        
        .carousel-inner > .item > img {
            width: 100%;
            height: 400px; /* 轮播图高度减小为400px */
            object-fit: cover;
        }
        
        .carousel-caption {
            bottom: 80px; /* 调整标题位置适应轮播高度变化 */
            text-align: center;
        }
        
        .carousel-caption h3 {
            font-size: 36px;
            margin-bottom: 20px;
            text-shadow: 0 2px 4px rgba(0,0,0,0.3);
        }
        
        .carousel-caption p {
            font-size: 18px;
            max-width: 600px;
            margin: 0 auto;
            text-shadow: 0 1px 2px rgba(0,0,0,0.3);
        }
        
        /* 注册卡片样式 - 上移位置并减小尺寸 */
        .register-container {
            position: relative;
            z-index: 10;
            margin-bottom: 80px; /* 减少底部距离 */
        }
        
        .register-card {
            background-color: #fff;
            border-radius: 6px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
            padding: 30px; /* 减小内边距 */
            max-width: 500px; /* 减小最大宽度 */
            margin: 0 auto;
            border: 1px solid #f1e9e5;
        }
        
        .register-header {
            text-align: center;
            margin-bottom: 25px; /* 减小底部距离 */
            padding-bottom: 15px;
            border-bottom: 1px solid #f1e9e5;
        }
        
        .register-header h3 {
            color: #5a4b42;
            font-weight: 500;
            margin: 0;
            font-size: 24px; /* 减小标题字体 */
        }
        
        /* 表单样式 - 减小元素尺寸 */
        .form-group {
            margin-bottom: 20px; /* 减小表单组间距 */
        }
        
        .form-control {
            border: 1px solid #e6d9cf;
            border-radius: 4px;
            height: 40px; /* 减小输入框高度 */
            transition: all 0.3s ease;
            font-size: 14px; /* 减小输入框字体 */
        }
        
        .form-control:focus {
            border-color: #d9b38c;
            box-shadow: 0 0 0 3px rgba(217, 179, 140, 0.2);
        }
        
        .input-group-addon {
            background-color: #f9f3ef;
            border-color: #e6d9cf;
            color: #8a7666;
            padding: 6px 12px; /* 减小附加组件尺寸 */
        }
        
        .control-label {
            color: #8a7666;
            font-weight: 400;
            padding-top: 8px; /* 调整标签位置 */
            font-size: 14px; /* 减小标签字体 */
        }
        
        /* 按钮样式 - 减小尺寸 */
        .btn-primary {
            background-color: #d9b38c;
            border-color: #d9b38c;
            color: #fff;
            height: 40px; /* 减小按钮高度 */
            font-size: 15px; /* 减小按钮字体 */
            border-radius: 4px;
        }
        
        .btn-primary:hover, 
        .btn-primary:focus, 
        .btn-primary:active {
            background-color: #c9a07c;
            border-color: #c9a07c;
            color: #fff;
        }
        
        /* 链接区域 */
        .link-area {
            text-align: center;
            margin-top: 20px; /* 减小顶部距离 */
            font-size: 14px; /* 减小链接字体 */
        }
        
        .link-area a {
            color: #8a7666;
            margin: 0 10px;
            text-decoration: none;
        }
        
        .link-area a:hover {
            color: #d9b38c;
            text-decoration: none;
        }
        
        /* 页脚样式 */
        .footer {
            background-color: #f9f3ef;
            padding: 40px 0 20px;
            margin-top: 50px;
            border-top: 1px solid #f1e9e5;
        }
        
        .footer p {
            color: #8a7666;
            margin-bottom: 10px;
            font-size: 14px;
        }
        
        .footer-links {
            margin-top: 20px;
        }
        
        .footer-links a {
            color: #8a7666;
            margin: 0 10px;
            font-size: 12px;
        }
        
        .footer-links a:hover {
            color: #5a4b42;
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
                <a class="navbar-brand" href="#">
                    <span class="glyphicon glyphicon-heart text-danger"></span>
                </a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
						<!-- 1. 首页：普通链接 -->
						<li><a href="index.jsp">首页</a></li>
						<!-- 2. 电影搜索：当前页，添加active高亮 -->
						<li class="active"><a href="search.jsp">电影搜索</a></li>
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
    
    <!-- 轮播图 -->
    <div id="carousel-example" class="carousel slide" data-ride="carousel">
        <!-- 指示器 -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example" data-slide-to="1"></li>
            <li data-target="#carousel-example" data-slide-to="2"></li>
        </ol>
        
        <!-- 轮播内容 -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="image/wedding1.png" alt="婚纱展示">
            </div>
            <div class="item">
                <img src="image/wedding2.png" alt="婚纱展示">
            </div>
            <div class="item">
                <img src="image/wedding3.png" alt="婚纱展示">
            </div>
        </div>
        
        <!-- 控制按钮 -->
        <a class="left carousel-control" href="#carousel-example" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">上一张</span>
        </a>
        <a class="right carousel-control" href="#carousel-example" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">下一张</span>
        </a>
    </div>
    
    <!-- 注册区域 -->
    <div class="container register-container">
        <div class="register-card">
            <div class="register-header">
                <h3>注册</h3>
                <small style="color: #a94442;">${info }</small>
            </div>
            
            <form class="form-horizontal" action="register" method="post">
                <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">用户名</label>
                    <div class="col-sm-9">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-user"></span>
                            </span>
                            <input type="text" name="username" class="form-control" id="username" 
                                   placeholder="请输入用户名" required>
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="password" class="col-sm-3 control-label">密码</label>
                    <div class="col-sm-9">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-lock"></span>
                            </span>
                            <input type="password" name="password" class="form-control" id="password" 
                                   placeholder="请输入密码" required>
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="confirmPassword" class="col-sm-3 control-label">确认密码</label>
                    <div class="col-sm-9">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-lock"></span>
                            </span>
                            <input type="password" class="form-control" id="confirmPassword" 
                                   placeholder="请再次输入密码" required>
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="col-sm-3 control-label">性别</label>
                    <div class="col-sm-9" style="padding-top: 8px; text-align: left;">
                        <label class="radio-inline">
                            <input type="radio" name="sex" id="male" value="1"> 男
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="sex" id="female" value="2" checked> 女
                        </label>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="purpose" class="col-sm-3 control-label">租借用途</label>
                    <div class="col-sm-9">
                        <select name="depart" class="form-control" id="purpose">
                            <option value="1">婚礼仪式</option>
                            <option value="2">婚纱照拍摄</option>
                            <option value="3">订婚宴</option>
                            <option value="4">其他重要场合</option>
                        </select>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-9">
                        <button type="submit" class="btn btn-primary btn-block">注册</button>
                    </div>
                </div>
                
                <div class="link-area">
                    <span>已有账号?</span>
                    <a href="login.jsp">立即登录</a>
                </div>
            </form>
        </div>
    </div>
    
    <!-- 页脚 -->
    <div class="footer text-center">
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

    <!-- 引入jQuery和本地Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
    <script src="bootstrap-3.3.5/js/bootstrap.js"></script>
    <script>
        // 初始化轮播图
        $(function(){
            $('#carousel-example').carousel({
                interval: 5000, // 5秒自动切换
                pause: "hover"  // 鼠标悬停时暂停
            });
        });
    </script>
</body>
</html>