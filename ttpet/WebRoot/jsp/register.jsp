<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<link href="./css/all.css" type="text/css">
<title>Insert title here</title>
<style type="text/css">

body {color:#f3f3f3}
#main_log{
	margin: 5px;
}

#log_pic{
	width:96px;
	height:96px;
	border:1px solid #ccc;
	float: left;
}

#log_content{
	width:280px;
	height:96px;
	font-family:΢���ź�;
	font-size:11px;
	float: left;
}

#logs{

	height:200px;
	margin-top: 5px;
}

#logs ul li{
		border-bottom-width:1px;
	border-bottom-style: dashed;
	border-bottom-color: #ccc;
}

.show_log{
	width:200px;
	font-family: ΢���ź�;
	font-size: 12px;
	text-align:left;
	margin-top:10px;
	float: left;
}
.creater{
	width:100px;
	text-align: right;
	float: left;
}
#layout { height: 535px; width: 100%; background: #99FFcc;margin: auto }
#left { height: 535px; width: 60%; background: #ffffff;margin: auto;float:left; }
#right { height: 535px; width: 100%; background: #939393;margin: auto }
</style>
</head>
<body>
	<div>
		<jsp:include page="head2.jsp"></jsp:include>
	</div>
	<div class="wlg_con">
		<div class="wlg_main">
			<h4 class="font26">���û�ע��</h4>
		<div class="wlg_tab bd_rh">
		<form id="pass-account">
			<table>                
				<tbody>
					<tr>
						<th>���䣺</th>
						<td><input type="text" name="data[email]" id="input_email" class="set_input" /><span class="wlg_text" id="notice_email">�����������õ�����(����ʹ�ù�������163 sina QQ)������Ϊδ����¼�ʺţ������ڽ��ܻ��Ϣ���н����漰��������</span></td>
					</tr>
					<tr>
						<th>�û�����</th>
						<td><input type="text" name="data[uname]" id="input_uname" class="set_input" /><span class="wlg_text" id="notice_uname">4-40���ַ���֧����Ӣ�ġ����֡�_��-</span></td>
					</tr>
					<tr>
						<th>�������룺</th>
						<td><input type="password" name="data[passwd]" id="input_passwd" class="set_input" /><span class="wlg_text" id="notice_passwd">������6-15λ�ַ�����ĸ�����ֺ��»��ߣ���ɣ���ĸ���ִ�Сд</span></td>
					</tr>
					<tr>
						<th>ȷ�����룺</th>
						<td><input type="password" name="passwd2" id="input_passwd2" class="set_input" /><span class="wlg_text" id="notice_passwd2">���ٴ���������</span></td>
					</tr>                       
					<tr>
						<th></th>
						<td><input class="wlg_btn" id="account-button" type="button" value="ͬ���������ע��" title="ͬ���������ע��"></td>
					</tr>
					<tr>
						<th></th>
						<td><label><input type="checkbox" checked="checked" name="agree" value="1"/>���Ѿ���������ͬ�⡶<a href="/page/protocol.html" target="_blank">�������������Э��</a>��</label></td>
					</tr>
				</tbody>
			</table>
		</form>
		</div>
		<div class="wlg_rhc">
			<p class="fonthui">�Ѿ����ʺţ���ֱ�ӵ�¼</p>
			<a href="http://passport.ttpet.com/" class="wlg_btn2" title="ע��">��¼</a>
			<div class="wlg_line"></div>
			<p class="fonthui">��Ҳ����ֱ���������ʺŵ�¼</p>
			<p class="sina_lg"><a href="/connect/weibo" title="����΢��"></a></p>
			<p class="qq_lg"><a href="/connect/qzone" title="��Ѷ΢��"></a></p>
		</div>
		<div class="clear-both"></div>
		</div>
	</div>
	<div>
		<jsp:include page="bottom.jsp"></jsp:include>
	</div>
</body>
</html>