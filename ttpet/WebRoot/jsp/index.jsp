<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<link rel="stylesheet" href="./css/all.css" type="text/css">
<title>首页</title>
<style type="text/css">
#petslist {
	width: 100%;
	height: 60px;
	margin-top: 10px;
	font-family:微软雅黑;
	font-size:small;
	border: 1px solid #ccc;
}

#petslist ul li{
	float: left;
	list-style: none;
	margin-left: 10px;
	margin-top: 15px;
}

#div1 {
	width: 100%;
	margin-top: 10px;
}

#top {
	width: 100%;
	height: 320px;
	
}

#news1 {
	width: 760px;
	height: 100%;
	margin-top:0px;
	margin-left: 0px;
	float: left;
	border: 1px solid #ccc;
}

#news2 {
	width: 226px;
	height: 100%;
	margin-left:10px;
	float: left;
	border: 1px solid #ccc;
}

#under {
	width: 100%;
	height: 320px;
	margin-top: 10px;
}

#wowovideo {
	width: 356px;
	height: 100%;
	margin-top:5px;
	float:left;
border: 1px solid #ccc;
}

#wowolog {
	width: 390px;
	height: 100%;
	margin-top:5px;
	margin-left:10px;
	float:left;
border: 1px solid #ccc;
}

#wowopic {
	width: 225px;
	height: 100%;
	margin-top:5px;
	margin-left:10px;
	float:left;
border: 1px solid #ccc;
}
.super_span{
	width: 100%;
	height:10px;
	font-family:黑体;
	
	background-image: url('./images/index_bg.gif');
	background-repeat: repeat-x;
}
span a{
	float: right;
}
</style>
</head>
<body>
<div>
	<jsp:include page="register.jsp"></jsp:include>
	</div>
	<div id="petslist">
		<ul>
			<li><a href="#">藏獒</a></li>
			<li><a href="#">哈士奇</a></li>
			<li><a href="#">松狮</a></li>
			<li><a href="#">比熊</a></li>
			<li><a href="#">金毛</a></li>
			<li><a href="#">萨摩耶 v德国牧羊犬</a></li>
			<li><a href="#">拉布拉多</a></li>
			<li><a href="#">博美犬</a></li>
			<li><a href="#">吉娃娃</a></li>
			<li><a href="#">阿拉斯加雪橇犬</a></li>
			<li><a href="#">雪纳瑞</a></li>
			<li><a href="#">可卡</a></li>
			<li><a href="#">蝴蝶犬</a></li>
			<li><a href="#">腊肠犬</a></li>
			<li><a href="#">沙皮犬</a></li>
		</ul>
	</div>
	<div id="div1">
		<div id="top">
			<div id="news1"></div>
			<div id="news2"></div>
		</div>
		<div id="under">
			<div id="wowovideo">
				<span class="super_span">宠物视频
				<a href="#">更多视频<<</a>
				</span>
				
			</div>
			<div id="wowolog">
				<span class="super_span">窝窝日志
				<a href="#">更多日志<<</a>
				</span>
				<jsp:include page="log.jsp"></jsp:include>
			</div>
			<div id="wowopic">
				<span class="super_span">宠物照片
				<a href="#">更多<<</a>
				</span>
				
			</div>
		</div>
	</div>
	<div>
	<jsp:include page="bottom.jsp"></jsp:include>
	</div>
</body>
</html>