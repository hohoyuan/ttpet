<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- ��־����ҳ�� -->
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<link rel="stylesheet" type="text/css" href="../../css/all.css" charset="UTF-8"></link>
<title>���ｻ��-���������</title>
<style type="text/css">


</style>

</head>
<body style="background-image:url(../../img/bdbg.png); background-repeat: repeat-x repeat-y;">
	<div>
		<jsp:include page="../public/personHead.jsp"></jsp:include>
	</div>
	<div class="addlog_main">
		<div class="addlog_title">
			<img alt="̨ͷͼƬ" src="../../img/caihong.png" class="img" style="height:100%;width:100%">
		</div>
		<div style="float:left;">
			<jsp:include page="../public/personLeft.jsp"></jsp:include>
		</div>
		
		<div class="addlog_content">
			<div  class="person_top">
				<div class="top1"><a href="#">�����ҵ���־</a></div>
				<div class="top2">������־</div>
			</div>
			<div style="padding-top:10px;margin-top:10px;margin-left:40px;text-align:center;width:90%;height:40px;border:1px solid #ddd;"><input  style="font-size:24px;font-weight:bold;font-family:����" type="text" value="��������������־����" name="firstname" /></div>
			<div style="padding-top:10px;margin-left:-16px"><jsp:include page="editor.jsp"></jsp:include></div>
			<div style="margin-top:10px;margin-left:120px;text-align:center;width:400px;height:80px;border:1px solid #ddd;" >
				<form id="pass-login">
				<table style="font-size:18px">                
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
						<td></td>
						<td><span></span></td>
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