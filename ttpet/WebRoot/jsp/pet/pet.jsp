<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 宠物页面 -->
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
			<div  class="person_top">
				<div  class="top1"><a href="#">添加</a></div>
				<div  class="top2">我的宠物 </div>
			</div>
			<c:set var="score">85</c:set>
			<c:choose>
		    <c:when test="${score<90}">
		    	<div style="padding-top:10px;"><jsp:include page="noPets.jsp"></jsp:include></div>
		    </c:when>
		   
		    <c:otherwise>
		    	<div style="padding-top:10px;"><jsp:include page="showPets.jsp"></jsp:include></div>
		    </c:otherwise>
		    </c:choose>
			
			
		</div>
	</div>
	<div>
		<jsp:include page="../public/bottomLinked.jsp"></jsp:include>
	</div>
</body>
</html>