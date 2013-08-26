<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 注册页面 -->
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

</style>
<script type="text/javascript">
var WL_ACCOUNT_LOAD = false;
(function(T, $){
$(document).ready(function(){
$("#pass-account input.set_input").keydown(function(event){
if(event.keyCode == 13){
event.stopPropagation();event.preventDefault();
$("#account-button").trigger("click");
return false;
}
});
$("#input_email").focus(function(){
$(this).removeClass().addClass("set_input")
$("#notice_email").removeClass().addClass("wlg_text").html("请输入您常用的邮箱(建议使用国内邮箱163 sina QQ)，可作为未来登录帐号，并用于接受活动信息、中奖公告及重设密码").show();
}).blur(function(){
var $this = $(this);
var $note = $("#notice_email");
var email = $.trim($(this).val());
if(!T.Validate.check('email', email)){
$this.removeClass().addClass("set_inputa");
$note.removeClass().addClass("set_cuo").html("请输入您的电子邮箱地址！").show();
}else{
$.getJSONP(T.URL.pass+"/account/checkMail",{email:email},function(ret){
if(ret.error){
$this.addClass("a");
$note.removeClass().addClass("set_cuo").html(ret.message.join("")).show();
}else{
$this.removeClass("a");
$note.removeClass().addClass("set_dui").html("");
}
});
}
});
$("#input_uname").focus(function(){
$(this).removeClass().addClass("set_input")
$("#notice_uname").removeClass().addClass("wlg_text").html("3~16个字符，支持中英文、数字、_或-").show();
}).blur(function(){
var $this = $(this);
var $note = $("#notice_uname");
var uname = $.trim($(this).val());
if(uname.length == 0){
$this.removeClass().addClass("set_inputa");
$note.removeClass().addClass("set_cuo").html("请输入您的用户名！").show();				
}else if(!/^[\u4E00-\u9FA5\uF900-\uFA2D\w\-]{2,16}$/.test(uname)){
$this.removeClass().addClass("set_inputa");
$note.removeClass().addClass("set_cuo").html("3~16个字符，支持中英文、数字、_或-").show();		
}else{
$.getJSONP(T.URL.pass+"/account/checkName",{uname:uname},function(ret){
if(ret.error){
$this.removeClass().addClass("set_inputa");
$note.removeClass().addClass("set_cuo").html(ret.message.join("")).show();
}else{
$this.removeClass().addClass("set_input");
$note.removeClass().addClass("set_dui").html("");
}
});
}
});
$("#input_passwd").focus(function(){
$(this).removeClass().addClass("set_input")
$("#notice_passwd").removeClass().addClass("wlg_text").html("密码由6-15位字符组成，字母区分大小写").show();		
}).blur(function(){
var $this = $(this);
var $note = $("#notice_passwd");
var passwd = $.trim($(this).val());
if(passwd.length<6 || passwd.length>15){
$this.removeClass().addClass("set_inputa");
$note.removeClass().addClass("set_cuo").html("密码长度不对,由6~16位字符组成").show();		
}else if(!/^[\w\-~!@#$%^&*()_+.,\<\>;':"\[\]\{\}\/\\]+$/.test(passwd)){
$this.removeClass().addClass("set_inputa");
$note.removeClass().addClass("set_cuo").html("密码请勿使用特殊字符").show();				
}else{
$this.removeClass().addClass("set_input");
$note.removeClass().addClass("set_dui").html("");			
}
});
$("#input_passwd2").focus(function(){
$(this).removeClass().addClass("set_input")
$("#notice_passwd2").removeClass().addClass("wlg_text").html("请再次输入密码").show();			
}).blur(function(){
var $this = $(this);
var $note = $("#notice_passwd2");
if($("#input_passwd").val() != $this.val()){
$this.removeClass().addClass("set_inputa");
$note.removeClass().addClass("set_cuo").html("两次输入密码不同!").show();		
}else{
$this.removeClass().addClass("set_input");
$note.removeClass().addClass("set_dui").html("");				
}
});
$("#account-button").click(function(){
if(WL_ACCOUNT_LOAD){
return false;
}
WL_ACCOUNT_LOAD = true;
$("#account-button").attr("disabled","disabled");
Widget.MsgBox.load("数据处理中...",{mask:true});
$.post("http://passport.ttpet.com/account/create",$("#pass-account").serialize(),function(ret){
if(ret.error){
if(typeof(ret.fields) == 'object'){
for(var i=0; i<ret.fields.length; i++){
$("#input_"+ret.fields[i][0]).removeClass().addClass("set_inputa");
$("#notice_"+ret.fields[i][0]).removeClass().addClass("set_cuo").html(ret.fields[i][1]).show();
}
Widget.MsgBox.hide();
}else{
Widget.MsgBox.error(ret.message.join(","));
}
WL_ACCOUNT_LOAD = false;
$("#account-button").attr("disabled",false);
}else{
Widget.MsgBox.success("恭喜您,注册成功");
window.location.href="http://passport.ttpet.com/account/verify";
}
},'json');
});
});
})(window.TP, window.jQuery);
</script>
</head>
<body>
	<div>
		<jsp:include page="personHead.jsp"></jsp:include>
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
			<a href="login.jsp" class="wlg_btn2" title="注册">登录</a>
			<div class="wlg_line"></div>
			<p class="fonthui">您也可以直接用以下帐号登录</p>
			<p class="sina_lg"><a href="./img/weibo.png" title="新浪微博"></a></p>
			<p class="qq_lg"><a href="./img/qzone.png" title="腾讯微博"></a></p>
		</div>
		<div class="clear-both"></div>
		</div>
	</div>
	<div>
		<jsp:include page="bottomLinked.jsp"></jsp:include>
	</div>
</body>
</html>