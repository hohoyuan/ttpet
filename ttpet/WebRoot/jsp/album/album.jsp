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
    
    <title>My JSP 'album.jsp' starting page</title>
    
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
	  <form action="album/addAlbum">
	          相册名称：<input type="text" name="name"><br>
	          相册介绍: <input type="text" name="introduce"><br>
	           相册标签：<input type="text" name="tip"><br>
	           权限：
	    <select name="auth">
		    <c:forEach items="${authMap}" var="map">	
		    	<option value="<c:out value="${map.key}"></c:out>"><c:out value="${map.value}"></c:out></option>
		   	</c:forEach>
	    </select><br>
	    <input type="submit" width="100" title="提交">
	  </form><br>
	  <a href="album/pictrue">进入相册菜单</a>	 <a href="album/uploadPhoto">上传照片</a>	
  </body>
</html>
