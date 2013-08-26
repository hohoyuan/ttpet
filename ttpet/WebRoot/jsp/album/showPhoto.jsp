<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showPhoto.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <!--输出指定相册的所有照片  -->
  <body> 
     	用户相册：<br/>
  	<c:forEach items="${photolist}" var="photo">
  	
  		<a target="_blank" href="<c:out value="${photo.context}"></c:out>"><img alt="<c:out value="${photo.title}"></c:out>" src="uploadFile/<c:out value="${photo.title}"></c:out>" width="200" height="200"></a>
  	<!-- 
  		<c:out value="${photo.id}"></c:out>
  		<c:out value="${photo.title}"></c:out>
  		<c:out value="${photo.context}"></c:out>
  		<c:out value="${photo.date}"></c:out>
  		 -->
  	</c:forEach>
  </body>
</html>
