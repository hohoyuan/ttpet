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
    
    <title>My JSP 'upLoadPhoto.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body> 
   所属相册：<br/>
   	<form action="/album/uploadPhotoSubmit" enctype="multipart/form-data" method="post">
   	<!-- 
	   <select name="album_id">
	   		<c:forEach items="${albumList}" var="album">
	   			<option value="<c:out value="${album.id}"></c:out>">
	   				<c:out value="${album.name}"></c:out>
	   			</option>
	   		</c:forEach>
	   </select>
	    -->
  		<input type="file" name="photo1"/>
  		<input type="submit" value="提交">
  	</form>
  </body>
</html>
