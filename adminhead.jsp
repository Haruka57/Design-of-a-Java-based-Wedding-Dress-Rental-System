<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="bootstrap-3.3.5/css/bootstrap.min.css" />
	<script type="text/javascript" src="bootstrap-3.3.5/js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="bootstrap-3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
  <nav class="navbar navbar-default" style="margin-bottom: 2px;">
	  <div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      
	    </div>
	
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li class="active">
	        	<a href="#">用户管理 <span class="sr-only">(current)</span></a>
	        </li>
	        <li><a href="movie">婚纱管理</a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	        <c:if test="${username != null}">
		        <li><a>欢迎：${username }</a></li>
		        <li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" 
			          aria-expanded="false">我的 <span class="caret"></span></a>
			          <ul class="dropdown-menu">
			            <li><a href="#">用户管理</a></li>
			            <li><a href="movie">婚纱管理</a></li> 
			            <li role="separator" class="divider"></li>
			            <li><a href="loginout">退出</a></li>
			          </ul>
			    </li>
	        </c:if>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
</nav>
</body>
</html>