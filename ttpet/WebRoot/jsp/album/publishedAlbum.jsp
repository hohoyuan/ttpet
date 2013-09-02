<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 相册发表页面 -->
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
	<div class="addlog_main">
		<div class="addlog_title">
			<img alt="台头图片" src="../../img/caihong.png" class="img" style="height:100%;width:100%">
		</div>
		<div style="float:left;">
			<jsp:include page="../public/personLeft.jsp"></jsp:include>
		</div>
		<div class="addlog_content">
			<div class="person_top">
				<div class="top1"><a href="#">返回我的相册</a></div>
				<div class="top2">上传照片  创建相册   </div>
			</div>
			<div style="padding-top:10px;"><jsp:include page="uploadPic.jsp"></jsp:include></div>
			
		</div>
	</div>
	<div>
		<jsp:include page="../public/bottomLinked.jsp"></jsp:include>
	</div>
</body>
</html>