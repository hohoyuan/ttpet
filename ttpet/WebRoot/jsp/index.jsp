<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<link rel="stylesheet" href="./css/all.css" type="text/css">
<title>��ҳ</title>
<style type="text/css">
#petslist {
	width: 100%;
	height: 60px;
	margin-top: 10px;
	font-family:΢���ź�;
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
	font-family:����;
	
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
			<li><a href="#">����</a></li>
			<li><a href="#">��ʿ��</a></li>
			<li><a href="#">��ʨ</a></li>
			<li><a href="#">����</a></li>
			<li><a href="#">��ë</a></li>
			<li><a href="#">��ĦҮ v�¹�����Ȯ</a></li>
			<li><a href="#">��������</a></li>
			<li><a href="#">����Ȯ</a></li>
			<li><a href="#">������</a></li>
			<li><a href="#">����˹��ѩ��Ȯ</a></li>
			<li><a href="#">ѩ����</a></li>
			<li><a href="#">�ɿ�</a></li>
			<li><a href="#">����Ȯ</a></li>
			<li><a href="#">����Ȯ</a></li>
			<li><a href="#">ɳƤȮ</a></li>
		</ul>
	</div>
	<div id="div1">
		<div id="top">
			<div id="news1"></div>
			<div id="news2"></div>
		</div>
		<div id="under">
			<div id="wowovideo">
				<span class="super_span">������Ƶ
				<a href="#">������Ƶ<<</a>
				</span>
				
			</div>
			<div id="wowolog">
				<span class="super_span">������־
				<a href="#">������־<<</a>
				</span>
				<jsp:include page="log.jsp"></jsp:include>
			</div>
			<div id="wowopic">
				<span class="super_span">������Ƭ
				<a href="#">����<<</a>
				</span>
				
			</div>
		</div>
	</div>
	<div>
	<jsp:include page="bottom.jsp"></jsp:include>
	</div>
</body>
</html>