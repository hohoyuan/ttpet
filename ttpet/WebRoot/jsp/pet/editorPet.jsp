<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 宠物具体信息添加页面 -->
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<link href="http://localhost:2020/ttpet/css/all.css" type="text/css">
<title>宠物交友-天天宠物网</title>
<style type="text/css">
.wlg_con{ width:960px; margin:0px auto; padding:40px 0px;}
.wlg_main{ background:#fff; border:1px solid #e1e1e1; display:block; clear:both; padding:30px 30px 20px 50px; overflow:hidden;}
.bd_rh{ border-right:1px #e5e5e5 solid;}
.wlg_tab{ width:620px; float:left; padding-top:20px; margin-bottom:50px;}
.wlg_tab th,.czmm th{ width:100px;text-align:right; }
.wlg_tab th,.wlg_tab td{ height:60px;vertical-align:top;}
.wlg_tab th{ line-height:32px;}
.wlg_tab .set_input{ width:260px; float:left; margin-right:10px; vertical-align:middle; height:34px;border:1px solid #d9d9d9;}
.wlg_tab .set_inputa{width:260px;}
.font26{ font-size:26px; line-height:36px!important; color:#656565; font-weight:500;}
.wlg_con .font26{ padding-bottom:20px;}
.wlg_btn,.wlg_btn3{ height:36px; line-height:36px; padding:0px 10px; background:#6db227; border:1px #62a123 solid; color:#fff; font-size:14px; display:inline-block; cursor:pointer; _width:160px; _border:0px;}
.wlg_btn:hover,.wlg_btn{ color:#fff !important;}
.wlg_btn:hover,wlg_btn3:hover{ text-decoration:none;}
.wlg_tab table span{ height:60px;}
.wlg_text{ width:220px; float:left; color:#999999; display:none; font-size:12px;}
.wlg_rh{ float:left; padding-left:20px; padding-top:40px;}
.wlg_rh p{ line-height:30px;}
.wlg_rhc{ float:left; padding-left:30px; padding-top:20px; *padding-left:20px;}
.wlg_rhc p{ line-height:30px;}
.wlg_line{ border-top:1px dashed #c1c1c1; width:210px; margin:20px 0 15px; display:block; clear:both; font-size:1px;}
.wlg_btn2{ background-position: -52px -85px; width:92px; height:38px; line-height:38px; display:inline-block; color:#a5740c; font-weight:700; font-size:14px; cursor:pointer; text-align:center;}
.wlg_btn2:hover{ text-decoration:none;}
.sina_lg,.qq_lg{ background:url(../images/setting/wlg_ico.gif?2) no-repeat; height:40px;width:140px; display:block; margin-bottom:10px; line-height:40px;}
.sina_lg a,.qq_lg a{ display:block; height: 100%;width: 100%;}
.sina_lg{background-position:0px 2px;}
.qq_lg{ background-position:0px -42px;}

/*常用*/
.font14{ font-size:14px!important;}
.font18{ font-size:18px!important;}
.font33{ color:#333;}
.fonthui,.fonthui a{ color:#9f9f9f!important; cursor:inherit;}
.fonthuang{ color:#ff6600;}
.fonthong{ color:red;}
.fontlv{color:#588C0E !important; }
.padtop10{ padding-top:10px !important;}
.padtop20{ padding-top:20px;}
.padbot20{ padding-bottom:20px !important;}
.padrh44{ padding-right:44px;}
.displayblock{ display:block;}
.padlf10px{ padding-left:10px;}
.padlf10px2{padding-left:10px; padding-bottom:10px;}
.displaynone{ display:none;}
.padlf110{ padding-left:110px; padding-bottom:10px;}
.fb_list td a,.cen_title a,.lwlist a,.sc_tab tr td a{ color:#63931e;}

</style>

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
					<th>登录帐号：</th>
					<td><input type="text" name="data[uname]" value="" class="set_input"/><span style="display:none;" id="lab_notice">用户名或密码不正确</span></td>
				</tr>
				<tr>
					<th>密码：</th>
					<td><input type="password" name="data[passwd]" class="set_input" /></td>
				</tr>
				<th></th>
				<td>
					<label><input type="checkbox" name="data[remlogin]" id="checkbox" /> 下次自动登陆</label>
					<a href="http://passport.ttpet.com/account/forgot" title="忘记密码" class="fontlv padlf110">忘记密码</a>
				</td>
				<tr>
					<th></th>
					<td><input type="button" id="login-btn" value="登 录" class="wlg_btn" title="登录" /></td>
				</tr>
			</table>
		</form>
</div>
	<div class="wlg_rhc">
		<p class="fonthui">还没有天天宠物网帐号？立即注册</p>
		<a href="register.jsp" class="wlg_btn2" title="注册">注册</a>
		<div class="wlg_line"></div>
		<p class="fonthui">您也可以直接用以下帐号登录</p>
		<p class="sina_lg"><a href="http://passport.ttpet.com/connect/weibo" title="新浪微博"></a></p>
		<p class="qq_lg"><a href="http://passport.ttpet.com/connect/qzone" title="腾讯微博"></a></p>
	</div>
	<div class="clear-both"></div>
	</div>
	</div>
	<div>
		<jsp:include page="bottom.jsp"></jsp:include>
	</div>
</body>
</html>