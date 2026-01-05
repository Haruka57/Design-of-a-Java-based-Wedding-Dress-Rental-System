<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>婚纱租借平台 - 登录</title>
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
            margin-bottom: -120px; /* 增大负值使登录框上移更多 */
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
        
        /* 登录卡片样式 - 上移位置 */
        .login-container {
            position: relative;
            z-index: 10;
            margin-bottom: 80px; /* 减少底部距离 */
        }
        
        .login-card {
            background-color: #fff;
            border-radius: 6px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
            padding: 40px;
            max-width: 420px;
            margin: 0 auto;
            border: 1px solid #f1e9e5;
        }
        
        .login-header {
            text-align: center;
            margin-bottom: 30px;
            padding-bottom: 15px;
            border-bottom: 1px solid #f1e9e5;
        }
        
        .login-header h3 {
            color: #5a4b42;
            font-weight: 500;
            margin: 0;
        }
        
        /* 表单样式 */
        .form-group {
            margin-bottom: 25px;
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
        
        .input-group-addon {
            background-color: #f9f3ef;
            border-color: #e6d9cf;
            color: #8a7666;
        }
        
        /* 按钮样式 */
        .btn-primary {
            background-color: #d9b38c;
            border-color: #d9b38c;
            color: #fff;
            height: 44px;
            font-size: 16px;
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
            margin-top: 25px;
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
    <!-- 页眉 - 使用语义化 header 标签 -->
    <header>
        <!-- 导航栏 - 使用语义化 nav 标签 -->
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
    </header>
    
    <!-- 主要内容区域 - 使用语义化 main 标签 -->
    <main>
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
                <div class="carousel-caption">
                    
                </div>
            </div>
            <div class="item">
                <img src="image/wedding3.png" alt="婚纱展示">
                <div class="carousel-caption">
                   
                </div>
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
    
    <!-- 登录区域 - 使用语义化 section 标签 -->
    <section class="container login-container">
        <div class="login-card">
            <div class="login-header">
                <h3>登录</h3>
                <small style="color: #a94442;">${info }</small>
            </div>
            
            <form class="form-horizontal" action="login" method="post">
                <div class="form-group">
                    <div class="col-sm-12">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-user"></span>
                            </span>
                            <input type="text" name="username" class="form-control" 
                                   placeholder="请输入用户名" required>
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-12">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <span class="glyphicon glyphicon-lock"></span>
                            </span>
                            <input type="password" name="password" class="form-control" 
                                   placeholder="请输入密码" required>
                        </div>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-12">
                        <div class="checkbox pull-left">
                            <label>
                                <input type="checkbox"> 记住登录状态
                            </label>
                        </div>
                        <a href="#" class="pull-right">忘记密码?</a>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-12">
                        <button type="submit" class="btn btn-primary btn-block">登录</button>
                    </div>
                </div>
                
                <div class="link-area">
                    <span>还没有账号?</span>
                    <a href="register.jsp">立即注册</a>
                </div>
            </form>
        </div>
    </section>
    </main>
    
    <!-- 页脚 - 使用语义化 footer 标签 -->
    <footer class="footer text-center">
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