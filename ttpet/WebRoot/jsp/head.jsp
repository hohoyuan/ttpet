<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<link rel="stylesheet" href="./css/all.css" type="text/css"/>
<title>天天宠物网</title>

<style type="text/css">
#head {
	width: 100%;
	height: 90px;
	margin: 0px;
}
#head_content{
	width: 1020px;
	height: 100%;
	margin: 0px 140px 0px 140px;
}
#logo {
	width: 260px;
	height: 80px;
	float: left;
}
#logo img{
	padding-left: 30px;
}

#search {
	width: 340px;
	height: 80px;
	margin-left:50px;
	float: left;
}

#link {
	width: 325px;
	height: 80px;
	margin-left:30px;
	float: left;
}

#link ul li{
	padding-top:13px;
	padding-left:15px;
	list-style: none;
	float: left;
	font-family: 微软雅黑;
	font-size: small;
}

#menubar {
	width: 100%;
	height: 50px;
	margin-top: 0px;
	margin-left: 0px;
	background-color: orange;
}

#menu{
	margin-left: 180px;
}

#menu a{
	font-size: 20px;
}

#menu ul li{
	float: left;
	list-style: none;
	margin-top: 15px;
	margin-left:20px;
	font-size:20px;
}

#login{
	margin-left: 800px;
}

#login ul li{
	float: left;
	list-style: none;
	margin-top:15px;
	margin-right: 10px;
	font-family: 微软雅黑;
	font-size: small;
}

#main {
	width: 1000px;
	min-height: 800px;
	margin-top: 10px;
	margin-left: 180px;
}
</style>
</head>
<body>
	<div id="head">
		<div id="head_content">
			<div id="logo">
				<a href=""><img alt="logo" src="./images/logo.gif" style="border: none"/> </a>
			</div>
			<div id="search">
				<jsp:include page="seacher.jsp"></jsp:include>
			</div>
			<div id="link">
				<ul>
					<li>网站地图</li>
					<li>设为首页</li>
					<li>加入收藏</li>
					<li>帮助</li>
				</ul>
			</div>
		</div>
	</div>
	<div id="menubar">
		<div id="menu">
			<ul>
				<c:forEach var="list" items="${modules}">
					<li><a href="" title="${list }">${list}</a>
					</li>
					<li>|</li>
				</c:forEach>
			</ul>

		</div>
		<div id="login">
		<ul>
			<li><a href="#">登录</a></li>
			<li><a href="./register.html">注册</a></li>
			<li>其他账号登录：</li>
			<li><img alt="腾讯微博" src="./images/tecent.png"></li>
			<li><img alt="新浪微博" src="./images/sina.png"></li>
		</ul>
		</div>
	</div>
	<div id="main">
		<jsp:include page="index.jsp"></jsp:include>
	</div>
</body>
</html>