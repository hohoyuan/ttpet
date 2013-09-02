<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 个人资料显示页面 -->
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
				<div style="float:right;width:150px;font-size:20px;"><a href="#">修改</a></div>
				<div style="text-align:left;font-size:20px;width:60%;">个人资料 </div>
			</div>
			<div class="top" style="padding-top:10px;width:100%;height:100%; ">
				 <div style="float:left;width:60%;height:100%;font-size:20px;">
				 <table border="0" cellspacing="3" cellpadding="5">
					<tr><th width="116" align="right">用户名：</th><td width="355">hohoyuan</td></tr>
					<tr><th align="right">性别：</th><td>保密</td></tr>
					<tr><th align="right">生日：</th><td>2013-7-29</td></tr>
					<tr><th align="right">窝窝名称：</th><td><a href="/2456254413">yoyo</a></td></tr>
					<tr><th align="right">养宠龄：</th><td>未满1年</td></tr>
					<tr><th align="right">职业：</th><td></td></tr>
					<tr><th align="right">所在地：</th><td>北京 东城</td></tr>
					<tr><th align="right">详细地址：</th><td></td></tr>
					<tr><th align="right">QQ：</th><td></td></tr>
					<tr><th align="right">MSN：</th><td></td></tr>
					<tr>
					<th align="right" valign="top">个人兴趣：</th>
					<td></td>
					</tr>
					<tr><th align="right" valign="top">个人介绍：</th><td></td></tr>
					<tr><th align="right">注册时间：</th><td>2013-07-29</td></tr>
					<tr><th align="right">最后登录时间：</th><td></td></tr>
					<tr>
					<th align="right" valign="top">宝宝信息：</th>
					<td>
					还没有宝宝，<a href="/pet/index.html#createpet" target="_blank">赶紧去添加  &gt;&gt;</a>
					</td>
					</tr>
					<tr>
					<td>&nbsp;</td><td><a href="http://wowo.ttpet.com/set/account/index.html" target="_blank" class="btn4">修改个人资料</a></td>
					</tr>
				</table>

				 </div>
				<div style="float:right;font-size:20px;width:30%;height:100%;">
					<img src="http://img.ttpet.com/face/178.gif" width="178" height="178" alt="hohoyuan" /><br />
					<!----><a avatar-face="member/244113" face="http://img.ttpet.com/face/178.gif">修改头像</a>
					
					
					<a href="/guanxi/index.html" target="_blank" class="btn6" style="align:right" >查看关系网</a>				
					<a href="###" class="btn6" rel="inviteguanxi">邀请好友成为亲家</a>
					<a href="###" class="btn6" rel="inviteguanxi">邀请好友建立关系</a>
				</div>			
			</div>
			
			
		</div>
	</div>
	<div>
		<jsp:include page="../public/bottomLinked.jsp"></jsp:include>
	</div>
</body>
</html>