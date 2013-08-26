<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--整个系统的头部-搜索加导航  -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">

<link rel="shortcut icon" href="top.png" type="image/x-icon" />

<link rel="stylesheet" href="./css/all.css" type="text/css"/>
<title>天天宠物网</title>

<style type="text/css">
#head {
	width: 1500px;
	height: 90px;
	margin: 0px;
	background-color:#f6f6f6
	
}
#head_content{
	width: 80%;
	height: 90px;
	margin: 0px 140px 0px 140px;
	
}
#head_logo {
	width: 260px;
	height: 90px;
	float: left;
	
	
}
#head_logo img{
	padding-left: 30px;
}

#head_search {
	width: 340px;
	height: 90px;
	margin-left:150px;
	float: left;
	
}

#head_link {
	width: 350px;
	height: 90px;
	margin-top:1px;
	margin-right:10px;
	float: right;
}

#head_link ul li{
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
#menu {width: 50%;
	height: 80px;
	margin-top:1px;
	margin-left:60px;
	float: left;
	
	}
#menu_content {width: 1500px;
	height: 80px;
	margin-top:1px;
	background-color: orange;
	
	}
#menu ul { list-style: none; margin: 0px; padding: 0px; }
#menu ul li {padding-top:13px;
	padding-left:15px;
	list-style: none;
	float: left;
	font-family: 微软雅黑;
	font-size: small; }


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
bady{
	background-color:#f6f6f6;
}
</style>
</head>
<body>
	<!--搜索部分  -->
	<div id="head">
		<div id="head_content">
			<div id="head_logo">
				<a href=""><img alt="logo" src="./img/logo.png" style="border: none"/> </a>
			</div>
			<div id="head_search">
				<jsp:include page="seacher.jsp"></jsp:include>
			</div>
			<div id="head_link">
				<ul>
					<li>网站地图</li>
					<li>设为首页</li>
					<li>加入收藏</li>
					<li>帮助</li>
				</ul>
			</div>
		</div>
	</div>
	<div id="menu_content">
		 <!--导航菜单部分  -->
		<div  id="menu">
			<ul>
				<li><a href="http://www.ttpet.com/" title="天天宠物网首页" class="font16 fontbold">首页</a></li>
				<li>|</li>
				<li><a href="http://www.ttpet.com/zixun/" title="资讯">资讯</a></li>
				<li>|</li>
				<li><a href=" http://www.ttpet.com/special/index.html" title="专题">专题</a></li>
				<li>|</li>
				<li><a href="http://www.ttpet.com/zazhi/E-zine/index.html" title="杂志">杂志</a></li>
				<li>|</li>
				<li WLP="top_nav">
					<a href="http://wowo.ttpet.com/ " class="nav_border font16 fontbold" title="窝窝">窝窝<em></em></a>
					<div class="db_two">
						<a href="jsp/log/publishedLogs.jsp" title="日志">日志</a>
						<a href="http://photo.ttpet.com/" title="相册">相册</a>
						<a href="http://video.ttpet.com/" title="视频">视频</a>
						<a href="http://you.ttpet.com/" title="找宠友" style="border:none;">找宠友</a>
                  </div>
				</li>
				
			</ul>
		</div>
		
<!-- 菜单结束 -->  
		<div id="login">
		<ul>
			<li><a href="jsp/public/login.jsp">登录</a></li>
			<li><a href="jsp/public/register.jsp">注册</a></li>
			<li>其他账号登录：</li>
			<li><img alt="腾讯微博" src="./images/tecent.png"></li>
			<li><img alt="新浪微博" src="./images/sina.png"></li>
		</ul>
		</div>
	</div>
	
</body>
</html>