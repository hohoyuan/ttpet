<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- ��Ƶ����ҳ�� -->
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
		<div style="float:left;">
			<jsp:include page="../public/personLeft.jsp"></jsp:include>
		</div>
		
		<div class="addlog_content">
			<div class="top" style="padding-top:10px;width:100%;height:50px; background-color:#f3f3f3;">
				<div style="float:right;width:150px;font-size:20px;"><a href="#">�����ҵ���Ƶ</a></div>
				<div style="text-align:left;font-size:20px;width:60%;">�����Ƶ</div>
			</div>
			<div style="margin-top:10px;margin-left:10px;text-align:center;font-size:24px;width:900px;height:500px;border:1px solid #ff0000;" >
				<div class="wlg_tab bd_rh wdl" style="height:700px;">
					<form id="pass-login">
						<table>                
							<tr>
								<th>��Ƶ��ַ��</th>
								<td><input type="text" name="data[uname]" value="" class="set_input"/><span style="display:none;" id="lab_notice">�û��������벻��ȷ</span></td>
							</tr>
							<tr>
								<th></th>
								<td>���Ƚ���Ƶ�ϴ�����Ƶ��վ��Ȼ�����������������Ƶ����ҳ��</td>
							</tr>
							<tr>
								<th>��Ƶ���ƣ�</th>
								<td><input type="text" name="data[uname]" value="" class="set_input"/><span style="display:none;" id="lab_notice">�û��������벻��ȷ</span></td>
							</tr>
							<tr>
								<th>��Ƶ���ܣ�</th>
								<td><textarea type="text" name="data[uname]" value="" class="set_input"/><span style="display:none;" id="lab_notice">�û��������벻��ȷ</span></td>
							</tr>
							<tr>
							
							<td>
								<input type="checkbox" name="data[remlogin]" id="checkbox" />
								<a href="http://passport.ttpet.com/account/forgot" title="ͬ�����ǵ�Э��" class="fontlv padlf110">ͬ�����ǵ�Э��</a>
							</td>
							<tr>
								<th></th>
								<td><input type="button" id="login-btn" value="�����Ƶ" class="wlg_btn" title="�����Ƶ" /> <input type="button" id="login-btn" value="ȡ��" class="wlg_btn" title="ȡ��" /></td>
							</tr>
						</table>
					</form>
				</div>
				
				<div>
				</div>
			</div>
			
		</div>
	</div>
	<div>
		<jsp:include page="../public/bottomLinked.jsp"></jsp:include>
	</div>
</body>
</html>