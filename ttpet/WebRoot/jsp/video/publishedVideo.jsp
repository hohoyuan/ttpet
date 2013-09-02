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
			<div class="person_top">
				<div class="top1"><a href="#">返回我的视频</a></div>
				<div class="top2">添加视频</div>
			</div>
			<div style="margin-top:10px;margin-left:10px;text-align:center;font-size:24px;width:900px;height:500px;" >
				<div class="wlg_tab bd_rh wdl" style="height:700px;">
					<form id="form-video">
						<div class="fb_pane clearfix">
							<div class="fb_pane_mid clearfix">
								<input type="hidden" name="itemId" value="" />
								<input name="video[url]" id="video[url]" type="text"  value="" class="log_label" />
								<p class="video_address">请先将视频上传到视频网站，然后在输入框里输入视频播放页面</p>
							</div>
							<label class="tit_label"><span>*</span>视频地址：</label>
						</div>
						<div class="fb_pane clearfix">
							<div class="fb_pane_mid clearfix">
								<input name="video[title]" type="text" value="" class="log_label" value="" />
							</div>
							<label class="tit_label"><span>*</span>视频名称：</label>
						</div>
						<div class="fb_pane clearfix">
							<div class="fb_pane_mid clearfix">
								<textarea name="video[desc]" cols="" rows="" class="log_label" style="height:60px;margin-right:5px; overflow:auto;"></textarea>
							</div>
							<label class="tit_label">视频介绍：</label>
						</div>
						
						<div class="fb_pane clearfix">
						<div class="fb_pane_mid"><p>
						<input type="checkbox" value="" name="sure" checked="checked"><a href="http://www.ttpet.com/help/video_xieyi.html" target="_blank";>同意我们的协议</a></p>
							<p class="bt_p">
								<input type="button" value="添加视频" class="bt_post" id="video-btn"/>
								<input type="reset" value="取&nbsp;&nbsp;消" class="bt_cancel" />
							</p>
						</div>
						</div>
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