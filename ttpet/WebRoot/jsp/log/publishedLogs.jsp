<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 日志发表页面 -->
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<link href="http://localhost:2020/ttpet/css/all.css" type="text/css">
<title>宠物交友-天天宠物网</title>
<style type="text/css">
.clog_main{
	width: 1200px;
	height: 900px;
	
	margin-left:150px;
}
.clog_title{
	width: 1200px;
	height: 100px;
	background-color:#ff0000;

}
.clog_left{
	width: 300px;
	height: 800px;
	background-color:#ffff00;
	float:left;
}
.clog_content{
	width: 1200px;
	height: 800px;
	background-color:#000000;

}

</style>

</head>
<body>
	<div>
		<jsp:include page="../public/personHead.jsp"></jsp:include>
	</div>
	<div class="clog_main">
		<div class="clog_title">
			<img alt="台头图片" src="../../img/caihong.png">
		</div>
		<div class="clog_left">
		
		</div>
		<div class="clog_content">
		
		</div>
	</div>
	<div>
		<jsp:include page="../public/bottomLinked.jsp"></jsp:include>
	</div>
</body>
</html>