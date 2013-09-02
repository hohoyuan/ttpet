<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 宠物具体信息添加页面 -->
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<link href="http://localhost:2020/ttpet/css/all.css" type="text/css">
<title>宠物交友-天天宠物网</title>


</head>
<body>
	<div>
		<jsp:include page="head2.jsp"></jsp:include>
	</div>
	<div class="wlg_con">
		<div class="wlg_main">
		<h4 class="font26">用户登录</h4>
		<div class="wlg_tab bd_rh wdl">
		<form id="pass-login">
			<input type="hidden" name="forward" value="http://passport.ttpet.com/account" />
			<table>                
				<tr>
					<th>宝宝名：</th>
					<td><input type="text" name="data[uname]" value="" class="set_input"/><span style="display:none;" id="lab_notice">用户名或密码不正确</span></td>
				</tr>
				<tr>
					<th>宝宝种类：</th>
					<td><input type="password" name="data[passwd]" class="set_input" /></td>
				</tr>
				<tr>
					<th>性别：</th>
					<td><input type="password" name="data[passwd]" class="set_input" /></td>
				</tr>
				<tr>
					<th>地区：</th>
					<td><input type="password" name="data[passwd]" class="set_input" /></td>
				</tr>
				<tr>
					<th>生日：</th>
					<td><input type="password" name="data[passwd]" class="set_input" /></td>
				</tr>
				<tr>
					<th>宝宝介绍：</th>
					<td><input type="password" name="data[passwd]" class="set_input" /></td>
				</tr>
				
				<tr>
					<th></th>
					<td><input type="button" id="login-btn" value="下一步，上传宝宝头像" class="wlg_btn" title="登录" /></td>
				</tr>
			</table>
		</form>
</div>
	
	
	</div>
	</div>
	
</body>
</html>