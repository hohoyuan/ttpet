<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 个人中心-左边导航 -->
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<link rel="stylesheet" type="text/css" href="../../css/all.css" charset="UTF-8"></link>
<title>宠物交友-天天宠物网</title>
<style type="text/css">


</style>

</head>
<body>
	<div>
		<jsp:include page="../public/personHead.jsp"></jsp:include>
	</div>
	<div class="person_left">
		<div>
			<img alt="台头图片" src="../../img/touxiang.png" class="img" style="height: 150px;">
			<a href="#">修改头像</a>
			<p>yoyoyuan</p>
		</div>
		<ul>
	        <li><a href="wowoIndex.jsp">窝窝首页</a></li>
	        <li><a href="../user/userInfo.jsp">个人资料</a></li>
	        <li><a href="#">我的宝宝</a></li>
	        <li><a href="#">日志</a>    <a href="../log/publishedLogs.jsp">发表</a></li>
			<li><a href="#">相册</a>    <a href="../album/publishedAlbum.jsp">上传</a></li>
			<li><a href="#">视频</a>    <a href="../video/publishedVideo.jsp">添加</a></li>
		 	<li><a href="#">留言</a></li>
	    </ul>
	</div>
	
</body>
</html>