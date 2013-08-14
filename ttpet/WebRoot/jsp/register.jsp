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
	font-family:微软雅黑;
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
	font-family: 微软雅黑;
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
			<h4 class="font26">新用户注册</h4>
		<div class="wlg_tab bd_rh">
		<form id="pass-account">
			<table>                
				<tbody>
					<tr>
						<th>邮箱：</th>
						<td><input type="text" name="data[email]" id="input_email" class="set_input" /><span class="wlg_text" id="notice_email">请输入您常用的邮箱(建议使用国内邮箱163 sina QQ)，可作为未来登录帐号，并用于接受活动信息、中奖公告及重设密码</span></td>
					</tr>
					<tr>
						<th>用户名：</th>
						<td><input type="text" name="data[uname]" id="input_uname" class="set_input" /><span class="wlg_text" id="notice_uname">4-40个字符，支持中英文、数字、_或-</span></td>
					</tr>
					<tr>
						<th>设置密码：</th>
						<td><input type="password" name="data[passwd]" id="input_passwd" class="set_input" /><span class="wlg_text" id="notice_passwd">密码由6-15位字符（字母、数字和下划线）组成，字母区分大小写</span></td>
					</tr>
					<tr>
						<th>确认密码：</th>
						<td><input type="password" name="passwd2" id="input_passwd2" class="set_input" /><span class="wlg_text" id="notice_passwd2">请再次输入密码</span></td>
					</tr>                       
					<tr>
						<th></th>
						<td><input class="wlg_btn" id="account-button" type="button" value="同意条款，立即注册" title="同意条款，立即注册"></td>
					</tr>
					<tr>
						<th></th>
						<td><label><input type="checkbox" checked="checked" name="agree" value="1"/>我已经看过，并同意《<a href="/page/protocol.html" target="_blank">天天宠物网服务协议</a>》</label></td>
					</tr>
				</tbody>
			</table>
		</form>
		</div>
		<div class="wlg_rhc">
			<p class="fonthui">已经有帐号？请直接登录</p>
			<a href="http://passport.ttpet.com/" class="wlg_btn2" title="注册">登录</a>
			<div class="wlg_line"></div>
			<p class="fonthui">您也可以直接用以下帐号登录</p>
			<p class="sina_lg"><a href="/connect/weibo" title="新浪微博"></a></p>
			<p class="qq_lg"><a href="/connect/qzone" title="腾讯微博"></a></p>
		</div>
		<div class="clear-both"></div>
		</div>
	</div>
	<div>
		<jsp:include page="bottom.jsp"></jsp:include>
	</div>
</body>
</html>