<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- ���������Ϣ���ҳ�� -->
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<link href="http://localhost:2020/ttpet/css/all.css" type="text/css">
<title>���ｻ��-���������</title>


</head>
<body>
	<div>
		<jsp:include page="head2.jsp"></jsp:include>
	</div>
	<div class="wlg_con">
		<div class="wlg_main">
		<h4 class="font26">�û���¼</h4>
		<div class="wlg_tab bd_rh wdl">
		<form id="pass-login">
			<input type="hidden" name="forward" value="http://passport.ttpet.com/account" />
			<table>                
				<tr>
					<th>��������</th>
					<td><input type="text" name="data[uname]" value="" class="set_input"/><span style="display:none;" id="lab_notice">�û��������벻��ȷ</span></td>
				</tr>
				<tr>
					<th>�������ࣺ</th>
					<td><input type="password" name="data[passwd]" class="set_input" /></td>
				</tr>
				<tr>
					<th>�Ա�</th>
					<td><input type="password" name="data[passwd]" class="set_input" /></td>
				</tr>
				<tr>
					<th>������</th>
					<td><input type="password" name="data[passwd]" class="set_input" /></td>
				</tr>
				<tr>
					<th>���գ�</th>
					<td><input type="password" name="data[passwd]" class="set_input" /></td>
				</tr>
				<tr>
					<th>�������ܣ�</th>
					<td><input type="password" name="data[passwd]" class="set_input" /></td>
				</tr>
				
				<tr>
					<th></th>
					<td><input type="button" id="login-btn" value="��һ�����ϴ�����ͷ��" class="wlg_btn" title="��¼" /></td>
				</tr>
			</table>
		</form>
</div>
	
	
	</div>
	</div>
	
</body>
</html>