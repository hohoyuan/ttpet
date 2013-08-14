<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery-1.6.js"></script>
	
	 <script type="text/javascript">
	 	$(function(){
	 		$("#submit").click(function(){
				$.ajax({
					url:"login",
					data:{userName:$("#userName").val(),pass:$("#password").val()},
					success:function(){
						alert('µÇÂ½³É¹¦');
						location.href='main';
					},
					error:function(){
						alert('µÇÂ½Ê§°Ü');
					}
				});	 		
	 		});
	 	});	
	 
	 
	 </script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    	ÓÃ»§Ãû£º<input type="text" id="userName"/><br>
    	ÃÜÂë£º<input type="password" id="password"><br>
    	<button id="submit" style="width: 80px">µÇÂ½</button> 
  </body>
</html>
