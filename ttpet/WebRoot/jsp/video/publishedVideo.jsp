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
			<div class="person_top">
				<div class="top1"><a href="#">�����ҵ���Ƶ</a></div>
				<div class="top2">�����Ƶ</div>
			</div>
			<div style="margin-top:10px;margin-left:10px;text-align:center;font-size:24px;width:900px;height:500px;" >
				<div class="wlg_tab bd_rh wdl" style="height:700px;">
					<form id="form-video">
						<div class="fb_pane clearfix">
							<div class="fb_pane_mid clearfix">
								<input type="hidden" name="itemId" value="" />
								<input name="video[url]" id="video[url]" type="text"  value="" class="log_label" />
								<p class="video_address">���Ƚ���Ƶ�ϴ�����Ƶ��վ��Ȼ�����������������Ƶ����ҳ��</p>
							</div>
							<label class="tit_label"><span>*</span>��Ƶ��ַ��</label>
						</div>
						<div class="fb_pane clearfix">
							<div class="fb_pane_mid clearfix">
								<input name="video[title]" type="text" value="" class="log_label" value="" />
							</div>
							<label class="tit_label"><span>*</span>��Ƶ���ƣ�</label>
						</div>
						<div class="fb_pane clearfix">
							<div class="fb_pane_mid clearfix">
								<textarea name="video[desc]" cols="" rows="" class="log_label" style="height:60px;margin-right:5px; overflow:auto;"></textarea>
							</div>
							<label class="tit_label">��Ƶ���ܣ�</label>
						</div>
						
						<div class="fb_pane clearfix">
						<div class="fb_pane_mid"><p>
						<input type="checkbox" value="" name="sure" checked="checked"><a href="http://www.ttpet.com/help/video_xieyi.html" target="_blank";>ͬ�����ǵ�Э��</a></p>
							<p class="bt_p">
								<input type="button" value="�����Ƶ" class="bt_post" id="video-btn"/>
								<input type="reset" value="ȡ&nbsp;&nbsp;��" class="bt_cancel" />
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