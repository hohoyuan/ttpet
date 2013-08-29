<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 视频发表页面 -->
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<link rel="stylesheet" type="text/css" href="../../css/all.css" charset="UTF-8"></link>
<title>宠物交友-天天宠物网</title>
<style type="text/css">


</style>

</head>
<body>
	<div>
		<jsp:include page="../public/personHead.jsp"></jsp:include>
	</div>
	<div class="addlog_main">
		<div class="addlog_title">
			<img alt="台头图片" src="../../img/caihong.png" class="img" style="height:100%;width:100%">
		</div>
		<div style="float:left;">
			<jsp:include page="../public/personLeft.jsp"></jsp:include>
		</div>
		
		<div class="addlog_content">
			<div class="top" style="padding-top:10px;width:100%;height:50px; background-color:#f3f3f3;">
				<div style="float:right;width:150px;font-size:20px;"><a href="#">返回我的视频</a></div>
				<div style="text-align:left;font-size:20px;width:60%;">添加视频</div>
			</div>
			<div style="margin-top:10px;margin-left:10px;text-align:center;font-size:24px;width:900px;height:500px;border:1px solid #ff0000;" >
				<div class="wlg_tab bd_rh wdl" style="height:700px;">
					<form id="pass-login">
						<table>                
							<tr>
								<th>视频地址：</th>
								<td><input type="text" name="data[uname]" value="" class="set_input"/><span style="display:none;" id="lab_notice">用户名或密码不正确</span></td>
							</tr>
							<tr>
								<th></th>
								<td>请先将视频上传到视频网站，然后在输入框里输入视频播放页面</td>
							</tr>
							<tr>
								<th>视频名称：</th>
								<td><input type="text" name="data[uname]" value="" class="set_input"/><span style="display:none;" id="lab_notice">用户名或密码不正确</span></td>
							</tr>
							<tr>
								<th>视频介绍：</th>
								<td><textarea type="text" name="data[uname]" value="" class="set_input"/><span style="display:none;" id="lab_notice">用户名或密码不正确</span></td>
							</tr>
							<tr>
							
							<td>
								<input type="checkbox" name="data[remlogin]" id="checkbox" />
								<a href="http://passport.ttpet.com/account/forgot" title="同意我们的协议" class="fontlv padlf110">同意我们的协议</a>
							</td>
							<tr>
								<th></th>
								<td><input type="button" id="login-btn" value="添加视频" class="wlg_btn" title="添加视频" /> <input type="button" id="login-btn" value="取消" class="wlg_btn" title="取消" /></td>
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