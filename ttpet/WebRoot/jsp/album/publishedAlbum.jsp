<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- ��ᷢ��ҳ�� -->
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<link rel="stylesheet" type="text/css" href="../../css/all.css" charset="UTF-8"></link>
<title>���ｻ��-���������</title>
<style type="text/css">


</style>

</head>
<body>
	<div>
		<jsp:include page="../public/personHead.jsp"></jsp:include>
	</div>
	<div class="addlog_main">
		<div class="addlog_title">
			<img alt="̨ͷͼƬ" src="../../img/caihong.png" class="img" style="height:100%;width:100%">
		</div>
		<div class="addlog_left">
			<div>
				<img alt="̨ͷͼƬ" src="../../img/touxiang.png" class="img" style="height: 150px;">
				<a href="#">�޸�ͷ��</a>
				<p>yoyoyuan</p>
			</div>
		<ul>
		    
	        <li><a href="#">������ҳ</a></li>
	        <li><a href="#">��������</a></li>
	        <li><a href="#">�ҵı���</a></li>
	        <li><a href="#">��־</a></li>
			<li><a href="#">���</a></li>
			<li><a href="#">��Ƶ</a></li>
		 	<li><a href="#">����</a></li>
		 
		    </ul>
		</div>
		<div class="addlog_content">
			<div class="top" style="padding-top:10px;width:100%;height:50px; background-color:#f3f3f3;">
				<div style="float:right;width:150px;font-size:20px;"><a href="#">�����ҵ���־</a></div>
				<div style="text-align:left;font-size:20px;width:60%;">������־</div>
			</div>
			<div style="margin-top:10px;margin-left:60px;text-align:center;font-size:24px;width:800px;height:40px;border:1px solid #ddd;"><input type="text" value="��������������־����" name="firstname" /></div>
			<div style="padding-top:10px;"><jsp:include page="editor.jsp"></jsp:include></div>
			<div style="margin-top:10px;margin-left:60px;text-align:center;font-size:36px;width:800px;height:40px;border:1px solid #ddd;" >
				<form id="pass-login">
				<table>                
					<tr>
						<th>���ࣺ</th>
						<td>
							<select name="cars">
							<option value="1">������־</option>
							<option value="2">����</option>
							</select>
						</td>
						<th></th>
						<td><a href='#'>��ӷ���</a></td>
						<th>Ȩ�ޣ�</th>
						<td>
							<select name="cars">
							<option value="1">�����˿ɼ�</option>
							<option value="2">�����ѿɼ�</option>
							<option value="3">�ش�����ɼ�</option>
							<option value="4">���Լ��ɼ�</option>
							</select>
						</td>
					</tr>
					<tr>
						<th></th>
						<td><input type="button" id="login-btn" value="��  ��" class="wlg_btn" title="����" /></td>
						<th></th>
						<td><input type="button" id="login-btn" value="����ݸ�" class="wlg_btn" title="����ݸ�" /></td>
					</tr>
				</table>
				</form>
			</div>
			
		</div>
	</div>
	<div>
		<jsp:include page="../public/bottomLinked.jsp"></jsp:include>
	</div>
</body>
</html>