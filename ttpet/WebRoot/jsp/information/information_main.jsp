<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<link href="http://localhost:2020/ttpet/css/all.css" type="text/css">
<title>���ｻ��-���������</title>
<style type="text/css">
/* public ///////////////////////////////////////////////////// */

.title,.sort dl dt,.title2,.hot_zhidao,.title3,.focus dl dt,.title4,.category dt,.birds_r dl dt ,.title5,.topic dt,.topic2 dt,.tag_bth{ background:url(../images/zixun/wenzhang.png) 0 0 no-repeat;}
.leftbox{ width:250px;height:2500px; border:1px solid #b5d3e5; border-top:0px;float:left;background-color:#ff0000;}
.title{ color:#61a0c7; background-position:-10px -70px; text-indent:15px;  height:29px; line-height:31px; overflow:hidden; font-size:14px; font-weight:bold; letter-spacing:2px; font-size:14px; font-weight:bold; }
.title h4{ float:left; }

.title2{color:#61a0c7; background-position:-10px -105px; text-indent:10px; font-size:14px;  height:24px; line-height:28px;  overflow:hidden; font-weight:bold; letter-spacing:2px;}
.title2 h4{ float:left; font-size:14px;}
.title2 a{float:right; color:#F30; text-align:right; line-height:27px; font-size:12px; margin-right:5px; font-weight:normal; color:#61a0c7;}
.question a {float:right; color:#F30; text-align:right; line-height:27px; font-size:12px; margin-right:5px; font-weight:normal; padding-right:15px; background: url(../images/ttpet/tw.gif) no-repeat right 7px;}

.title3{ width:453px; height:35px; background-position:-10px -5px; color:#2f6382; text-align:left; letter-spacing:2px; line-height:35px; font-size:14px;  text-indent:15px;}
.title3 h2{ float:left; font-weight:bold; }

.title4{ width:100%; height:24px; background-position:-10px -42px; text-align:left; line-height:27px; color:#61a0c7; overflow:hidden;}
.title4 img{ width:16px; height:16px; float:left; margin:6px 8px 0 10px;}
.title4 h5{float:left; font-size:14px;}
.title4 span{float:right; line-height:25px;}
.title4 span a{ color:#61a0c7!important; text-align:right; margin:0 8px;}
.title4 span a:hover{color:#F60!important;}

.lv {float:right; line-height:25px; margin:0 8px; color:#018e97!important;}

/* ��Ѷ����////////////////////////////////////////////////////*/
.sort{clear:both; width:197px; padding:0px;}
.sort dl{ width:174px; clear:both; margin:0px auto 3px; border-bottom:1px dashed #CCC; padding:8px 0; display:table;}
.sort dl dt{ color:#764e2a; text-align:left; line-height:22px; text-indent:9px; width:174px; background-position:-10px -135px; margin-bottom:5px;}
.sort dl dt a{color:#764e2a!important; text-decoration:none;}
.sort dl dt a:hover{color:#764e2a!important; text-decoration:underline;}
.sort dl dd{ width:50px; float:left; color:#666; line-height:22px; text-indent:10px; list-style-type:disc; white-space:nowrap;}



/* ���¹���////////////////////////////////////////////////////*/
.new_trade{ clear:both; height:auto; }
.new_trade li{ width:176px; margin:5px; background: url(../images/ttpet/jiantou_1.gif) no-repeat left center; padding-left: 12px; border-bottom:1px dashed #DDD; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; line-height:20px; }


/* ��߹��////////////////////////////////////////////////////*/
.left_ad img{ border:1px solid #DDD; width:196px; height:165px;}


/* �Ƽ��ؼ���////////////////////////////////////////////////////*/
.key_words{ width:177px; height:346px;  text-align:left; overflow:hidden; padding:10px;} 
.key_words a{ line-height:30px; color:#61a0c7!important; font-size:14px; margin-right:5px; white-space:nowrap; display:inline-block;}
.key_words a:hover{color:#F60!important;}

a.red_link:link    {color: #FF6600!important; }
a.red_link:visited {color: #FF6600!important;}
a.red_link:hover   {color: #FF3300!important; text-decoration: underline; }
a.red_link:active  {color: #FF3300!important;}


/* ���ȳ�֪��////////////////////////////////////////////////////*/
.hot_zhidao { background-position:-10px -296px; height:414px; width:181px; margin:8px;}
.hot_zhidao li{ float:left; line-height:23px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; width:158px; margin-left:23px; display:inline; }
.hot_zhidao li a{ color:#333!important;}
.hot_zhidao li a:hover{ color:#F30!important;}


/* �ұ���ת���////////////////////////////////////////////////////*/
.right_ad{ width:284px; height:295px; border:1px solid #DDD; padding:1px; float:left;}


#ibanner { position:relative;margin:0 auto; width:284px; height:295px; overflow:hidden; }
#ibanner_pic a { position:absolute; top:0; display:block; width:284px; height:295px; overflow:hidden; }
#ibanner_pic img {width:284px; height:295px;}

#ibanner_btn { position:absolute; z-index:9999; right:5px; bottom:5px; }
#ibanner_btn span { display:block; float:left; margin-left:6px; padding:0 5px; background:#FFAC00; font-weight:700; cursor:pointer; }
#ibanner_btn .normal { height:16px; margin-top:4px; border:1px solid #FFFFFF;  background:#FFAC00; color:#FFFFFF; padding-top:-3px; font-size:12px; line-height:16px; }
#ibanner_btn .current { height:18px; border:1px solid #FFAC00; background:#FFFFFF; color:#FFAC00; font-size:16px; line-height:18px; }


/* ��������////////////////////////////////////////////////////*/
.new{ width:453px; height:106px; float:right; }
.new_info{ width:441px; height:60px; border:1px solid #CCC; border-top:0px; text-align:left; color:#333; text-indent:24px; line-height:18px; padding:5px; margin-bottom:5px; overflow:hidden;}
.new_info h1{ color:#2f6382; text-align:center; font-weight:bold; font-size:14px; line-height:25px;}
.new_info h1 a{color:#2f6382!important;}
.new_info h1 a:hover{color:#F30!important;}

.focus{ width:450px; height:186px; float:right; border:1px solid #CCC; }
.focus dl{ width:447px; height:57px; border-bottom:1px dashed #CCC; margin-top:3px;}
.focus dl dt{ background-position:-36px -712px; width:16px; height:48px; color:#2f6382; padding:7px 0 0 3px;}
.focus dl dd{ float:left; width:200px; font-size:14px; color:#2f6382; margin-left:10px; display:inline; line-height:28px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;}
.focus dl dt,.focus dl dd{ float:left;}


/* ����////////////////////////////////////////////////////*/
.info_box{ width:1000px; height:500; border:1px solid #b5d3e5;background-color:#000000;float:left}
.dog{ width:464px; height:317px; border-right:1px dashed #CCC; margin:10px 0 10px 20px; float:left; display:inline; overflow:hidden;}

.category{ clear:none; width:190px; float:left; margin:6px 40px 5px 0; display:inline;}
.category dt{ width:183px; height:21px; background-position:-10px -160px; text-align:left;  margin-bottom:8px; }
.category dt span{float:right;} 
.category dt em{color:#FFF; text-indent:23px; line-height:23px; font-weight:bold;  float:left; font-style:normal;}

.category dd{width:190px; line-height:22px; text-align:left; clear:both; color:#2f6382; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;}

.dog_photo{ width:240px; height:307px; float:right; display:inline; padding:10px 5px; display:inline; overflow:hidden; margin-left:10px;} 
.dog_photo li{ width:100px; float:left; margin-right:19px; text-align:center; display:inline; }
.dog_photo li img{width:99px; height:72px; padding:1px; border:1px solid #CCC; float:left;}
.dog_photo li a{ color:#506f00!important; font-weight:bold; line-height:33px; float:left; clear:both; width:103px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;}
.dog_photo li a:hover{color:#F30!important;}


/* �ұ߹��////////////////////////////////////////////////////*/
.right_banner img{ width:747px; height:78px; border:1px solid #CCC;}


/* èè////////////////////////////////////////////////////*/
.cat{ width:700px; margin:10px auto; overflow:hidden;}
.cat_photo{ width:700px; clear:both; margin:5px auto;}
.cat_photo img{ width:145px; height:94px; padding:2px; border:1px solid #CCC; float:left; margin-right:24px; display:inline;}


/* С��////////////////////////////////////////////////////*/
.smallpet img{ width:182px; height:100px; padding:1px; border:1px solid #CCC;}

/* ����////////////////////////////////////////////////////*/
/* .info_box2{ width:412px; height:350px; border:1px solid #b5d3e5; overflow:hidden; float:left;}
.birds{ width:180px; float:left; display:inline;}
.birds li{ width:128px; height:133px; background:url(../images/photobg.png) repeat-x; margin:15px auto; text-align:center; clear:both;}
.birds li img{ width:120px; height:100px; margin:6px; float:left;}
.birds li a{ color:#FFF!important; line-height:20px; width:120px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; float:left; text-indent:6px;}
.birds li a:hover{color:#FFF!important; text-decoration:underline;}*/

/* ����////////////////////////////////////////////////////*/
.info_box2{ width:412px; height:350px; border:1px solid #b5d3e5; overflow:hidden; float:left;}

.birds{ width:111px; height:111px; float:left; background:url(../images/photobg.png) repeat-x; margin:10px 0 10px 5px;}
.birds a{ color:#FFF!important; line-height:20px; text-align:center; padding:3px; width:105px; display:block; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;}
.birds a:hover{color:#FFF!important; text-decoration:underline;}
.birds img{ width:105px; height:80px; }


.birds_r { width:620px; float:right; margin:20px auto 10px;}
.birds_r dl { clear:none; width:190px; height:100px; margin:0 5px; float:left;}
.birds_r dl dt { width:183px; height:21px; background-position:-10px -160px; text-align:left;  margin-bottom:8px;}
.birds_r dl dt span{float:right;} 
.birds_r dl dt em{color:#FFF; text-indent:23px; line-height:23px; font-weight:bold;  float:left; font-style:normal;}
.birds_r dl dd{width:190px; line-height:22px; text-align:left; clear:both; color:#2f6382; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;}

</style>

</head>
<body>
	<!-- Head ed -->
<div class="space12"></div> <!--body op-->
 <div class="body">
 <!--left op-->
 <div class="left">
	 <!--��Ѷ����-->
	 <h4 class="title">��Ѷ����</h4>
	 <div class="leftbox">
	 <!--sort op-->
	 <div class="sort">   <dl>
	 <dt><a href="http://www.ttpet.com/zixun/39/category-catid-39.html" target="_blank">����</a></dt>
	               <dd>�� <a href="http://www.ttpet.com/zixun/42/category-catid-42.html" target="_blank">����</a></dd>
	          <dd>�� <a href="http://www.ttpet.com/zixun/40/category-catid-40.html" target="_blank">�챨</a></dd>
	            <dd>�� <a href="http://www.ttpet.com/zixun/41/category-catid-41.html" target="_blank">��Ȧ</a></dd>
	                                         </dl>
	       <dl>
	 <dt><a href="http://www.ttpet.com/zixun/1/category-catid-1.html" target="_blank">����</a></dt>
	   <dd>�� <a href="http://www.ttpet.com/zixun/10/category-catid-10.html" target="_blank">Ʒ��</a></dd>
	                  <dd>�� <a href="http://www.ttpet.com/zixun/11/category-catid-11.html" target="_blank">����</a></dd>
	                  <dd>�� <a href="http://www.ttpet.com/zixun/12/category-catid-12.html" target="_blank">����</a></dd>
	                  <dd>�� <a href="http://www.ttpet.com/zixun/47/category-catid-47.html" target="_blank">��ֳ</a></dd>
	        <dd>�� <a href="http://www.ttpet.com/zixun/13/category-catid-13.html" target="_blank">ѵ��</a></dd>
	          <dd>�� <a href="http://www.ttpet.com/zixun/16/category-catid-16.html" target="_blank">����</a></dd>
	         </dl>
	         <dl>
	 <dt><a href="http://www.ttpet.com/zixun/2/category-catid-2.html" target="_blank">èè</a></dt>
	     <dd>�� <a href="http://www.ttpet.com/zixun/17/category-catid-17.html" target="_blank">Ʒ��</a></dd>
	                  <dd>�� <a href="http://www.ttpet.com/zixun/18/category-catid-18.html" target="_blank">����</a></dd>
	                  <dd>�� <a href="http://www.ttpet.com/zixun/19/category-catid-19.html" target="_blank">����</a></dd>
	                  <dd>�� <a href="http://www.ttpet.com/zixun/48/category-catid-48.html" target="_blank">��ֳ</a></dd>
	    <dd>�� <a href="http://www.ttpet.com/zixun/20/category-catid-20.html" target="_blank">ѵ��</a></dd>
	                  <dd>�� <a href="http://www.ttpet.com/zixun/49/category-catid-49.html" target="_blank">����</a></dd>
	   </dl>
	         <dl>
	 <dt><a href="http://www.ttpet.com/zixun/23/category-catid-23.html" target="_blank">С��</a></dt>
	         <dd>�� <a href="http://www.ttpet.com/zixun/26/category-catid-26.html" target="_blank">����</a></dd>
	                  <dd>�� <a href="http://www.ttpet.com/zixun/27/category-catid-27.html" target="_blank">����</a></dd>
	                <dd>�� <a href="http://www.ttpet.com/zixun/28/category-catid-28.html" target="_blank">����</a></dd>
	          <dd>�� <a href="http://www.ttpet.com/zixun/29/category-catid-29.html" target="_blank">����</a></dd>
	                <dd>�� <a href="http://www.ttpet.com/zixun/30/category-catid-30.html" target="_blank">����</a></dd>
	             </dl>
	         <dl>
	 <dt><a href="http://www.ttpet.com/zixun/24/category-catid-24.html" target="_blank">ˮ��</a></dt>
	           <dd>�� <a href="http://www.ttpet.com/zixun/31/category-catid-31.html" target="_blank">Ʒ��</a></dd>
	                  <dd>�� <a href="http://www.ttpet.com/zixun/32/category-catid-32.html" target="_blank">����</a></dd>
	                  <dd>�� <a href="http://www.ttpet.com/zixun/46/category-catid-46.html" target="_blank">ˮ��</a></dd>
	        <dd>�� <a href="http://www.ttpet.com/zixun/45/category-catid-45.html" target="_blank">�þ�</a></dd>
	                <dd>�� <a href="http://www.ttpet.com/zixun/36/category-catid-36.html" target="_blank">�㲡</a></dd>
	        <dd>�� <a href="http://www.ttpet.com/zixun/33/category-catid-33.html" target="_blank">����</a></dd>
	     </dl>
	      <dl>
	 <dt><a href="http://www.ttpet.com/zixun/25/category-catid-25.html" target="_blank">����</a></dt>
	             <dd>�� <a href="http://www.ttpet.com/zixun/37/category-catid-37.html" target="_blank">����</a></dd>
	                  <dd>�� <a href="http://www.ttpet.com/zixun/44/category-catid-44.html" target="_blank">�Ÿ�</a></dd>
	              <dd>�� <a href="http://www.ttpet.com/zixun/38/category-catid-38.html" target="_blank">����</a></dd>
	                                 </dl>
	     </div>
	 <!--sort ed-->
</div>
	 <!--**********************************************-->
	 <div class="space12"></div>
 
 <div class="right">
 <!--��ת��� op-->
 <div class="right_ad">
<div id="ibanner">
<div id="ibanner_pic"><a href="http://www.ttpet.com/zixun/68/n-83068.html" target="_blank"><img src="http://img.ttpet.com/b_album/ttpp/20130609.jpg" alt="��С椵���ĩ�Σ�����������" /></a>
<a href="http://www.ttpet.com/zixun/34/n-83034.html" target="_blank"><img src="http://img.ttpet.com/b_album/ttpp/201306091.jpg" alt="�ɰ�С��ʨ���Ļ�Ϫ��" /></a>
<a href="http://www.ttpet.com/zixun/98/n-82998.html" target="_blank"><img src="http://img.ttpet.com/b_album/ttpp/201306092.jpg" alt="������ѧι����Ĺ�����" /></a>
<a href="http://www.ttpet.com/zixun/82/n-83082.html" target="_blank"><img src="http://img.ttpet.com/b_album/ttpp/201306093.jpg" alt="�㵺�Ͽ»�Ȯ��5����ÿ��ȥ����ײ��" /></a>
<a href="http://www.ttpet.com/zixun/50/n-83050.html" target="_blank"><img src="http://img.ttpet.com/b_album/ttpp/201306094.jpg" alt="����ɨ����Աѳְ����Ȯ����ײ���" /></a>
<!--��ҳ��ת-->
</div>
</div>
 </div>
 <!--��ת��� ed-->
 <!--�������� op-->
 <div class="new">
 <h2 class="title3">�����ȵ�</h2> <div class="new_info">
 <h1><a href="http://www.ttpet.com/zixun/63/n-79963.html" title="����������˶ȹ��������һ��" target="_blank" >����������˶ȹ��������һ��</a></h1>
 ����57��Ŀ���û�����ˣ���������ֻ��һֻ����Yurtie�Ĺ���������һֱ��鿭��ס�ڡ������ݡ������Ҳ�ͳ�Ϊ�˴�Ψһ�����ˡ�[<a href="http://www.ttpet.com/zixun/63/n-79963.html" title="�鿴����" target="_blank" class="red_link">����</a>]
 </div> <div class="focus">
 <!--���ݸ��������ӷ���-->
  <dl>
 <dt>����</dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd class="gry_link2">�� <a href="http://www.ttpet.com/zixun/54/n-84354.html" title="С�����Ϲ���ƿι��С���" target="_blank" >С�����Ϲ���ƿι��С���</a></dd>
  <dd class="gry_link2">�� <a href="http://www.ttpet.com/zixun/53/n-84353.html" title="��������Ҳ���벻��������û�ж��¶������" target="_blank" >��������Ҳ���벻��������û�ж��¶������</a></dd>
  <dd class="gry_link2">�� <a href="http://www.ttpet.com/zixun/52/n-84352.html" title="Ұ���ߵ��ð��׳���������" target="_blank" >Ұ���ߵ��ð��׳���������</a></dd>
  <dd class="gry_link2">�� <a href="http://www.ttpet.com/zixun/24/n-84324.html" title="8���к������̶���ɽ�֣��빷Ϊ�鼸��ʧ��" target="_blank" >8���к������̶���ɽ�֣��빷Ϊ�鼸��ʧ��</a></dd>
  </dl>
  <dl>
 <dt>�챨</dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd class="gry_link2">�� <a href="http://www.ttpet.com/zixun/63/n-84363.html" title="���ķ�ֳ����������������" target="_blank" >���ķ�ֳ����������������</a></dd>
  <dd class="gry_link2">�� <a href="http://www.ttpet.com/zixun/60/n-84360.html" title="�����ɳ��㣬���ĸ����ĵĸж�" target="_blank" >�����ɳ��㣬���ĸ����ĵĸж�</a></dd>
  <dd class="gry_link2">�� <a href="http://www.ttpet.com/zixun/26/n-84326.html" title="����ʪ��ëë���͸��װ" target="_blank" >����ʪ��ëë���͸��װ</a></dd>
  <dd class="gry_link2">�� <a href="http://www.ttpet.com/zixun/25/n-84325.html" title="������ä��Ȯ����������������" target="_blank" >������ä��Ȯ����������������</a></dd>
  </dl>
  <dl>
 <dt>��Ȧ</dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd class="gry_link2"> <a href="http://www.ttpet.com/zixun/64/n-84264.html" title="��ʮ�������޳���չ����ʢ��Ļ��" target="_blank" >��ʮ�������޳���չ����ʢ��Ļ��</a></dd>
  <dd class="gry_link2"> <a href="http://www.ttpet.com/zixun/88/n-83988.html" title="���޳���չ�����������������Ӽ��껪" target="_blank" >���޳���չ�����������������Ӽ��껪</a></dd>
  <dd class="gry_link2"> <a href="http://www.ttpet.com/zixun/43/n-81643.html" title="����������������ȫ���˶���ŽǴ���" target="_blank" >����������������ȫ���˶���ŽǴ���</a></dd>
  <dd class="gry_link2"> <a href="http://www.ttpet.com/zixun/42/n-81642.html" title="�´���ȮӢ�ۻᡪ�������������й�Ȯ��������Ȯ���" target="_blank" >�´���ȮӢ�ۻᡪ�������������й�Ȯ��������Ȯ���</a></dd>
  </dl>
  </div>
 </div>
 <!--�������� ed-->
 <!-- ********************************************** -->
 <div class="space11"></div>
 <!-- ********************************************** -->
 <div class="info_box">
 <div class="title4">
<h5><img src="images/article_zhuanti.gif" alt="����ר��" width="16" height="16" />����ר��</h5>
 <span>
 <a href="http://www.ttpet.com/special/index.html" class="lv" target="_blank">����ר��</a>
 </span>
 </div>  <dl class="topic2">
 <dt><a href="http://www.ttpet.com/special/20130516/" target="_blank"><img src="http://img.ttpet.com/edit/2009/7/3/1250672989469543497.jpg?V_78e" alt="�����������"/></a></dt>
 <dd><a href="http://www.ttpet.com/special/20130516/" target="_blank">���Ȯ��һ�ֻ�Ծ�������������ж����ŵ�Ȯ�֣�ӵ�кܺõ���������ͽý��Ķ�����</a></dd>
 </dl>
  <dl class="topic2">
 <dt><a href="http://www.ttpet.com/special/20120604/" target="_blank"><img src="http://img.ttpet.com/edit/2009/7/3/1250672989434626514.jpg?V_d99" alt="��������ȫ����"/></a></dt>
 <dd><a href="http://www.ttpet.com/special/20120604/" target="_blank">�������º���Դ��ؼң��µ��ҵ�С���������˵ļ�ͥ������Ҫ��һ���𲽵���Ӧ����</a></dd>
 </dl>
  <dl class="topic2">
 <dt><a href="http://www.ttpet.com/special/20110916/index.html" target="_blank"><img src="http://img.ttpet.com/edit/2009/7/3/1250672989067197476.gif?V_bdf" alt="�����ļ�����"/></a></dt>
 <dd><a href="http://www.ttpet.com/special/20110916/index.html" target="_blank">�������գ�������������÷���£���ΰ�Ȼ�����أ�������һ���ע������Ĺ��ԡ�</a></dd>
 </dl>
  </div>
 <!-- ********************************************** -->
 <div class="space11"></div>
 <!-- ********************************************** -->
 <!--���� op-->
 <div class="info_box">
 <!--���ݸ��������ӷ���-->
 <!--title4 op-->
 <div class="title4">
 <h5><img src="images/article_dog.gif" alt="����" width="16" height="16" />����</h5>
 <a href="http://www.ttpet.com/breed/breed-1.html" class="lv" target="_blank">����Ʒ�ִ�ȫ</a>
 <span><a href="http://www.ttpet.com/zixun/10/category-catid-10.html" target="_blank">Ʒ��</a>/<a href="http://www.ttpet.com/zixun/11/category-catid-11.html" target="_blank">����</a>/<a href="http://www.ttpet.com/zixun/12/category-catid-12.html" target="_blank">����</a>/<a href="http://www.ttpet.com/zixun/47/category-catid-47.html" target="_blank">��ֳ</a>/<a href="http://www.ttpet.com/zixun/13/category-catid-13.html" target="_blank">ѵ��</a>/<a href="http://www.ttpet.com/zixun/16/category-catid-16.html" target="_blank">����</a>/
 </span>
 </div>
 <!--title4 en-->
 <!--dog en-->
 <div class="dog">
  <dl class="category">
 <dt><em>Ʒ��</em><span><a href="http://www.ttpet.com/zixun/10/category-catid-10.html" title="Ʒ��" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/42/n-84342.html" title="��ͼ����������С����Ʒ�����а�" target="_blank" >��ͼ����������С����Ʒ�����а�</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/41/n-84341.html" title="���Ƽ��������ʺ���ʲô����" target="_blank" >���Ƽ��������ʺ���ʲô����</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/40/n-84340.html" title="���ܽ᡿���ʺ�Ů�����Ĺ���Ʒ��" target="_blank" >���ܽ᡿���ʺ�Ů�����Ĺ���Ʒ��</a></dd>
  </dl>
  <dl class="category">
 <dt><em>����</em><span><a href="http://www.ttpet.com/zixun/11/category-catid-11.html" title="����" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/44/n-84344.html" title="����ʯͷ��ô���£�ΪʲôС����ʯ�ӣ�" target="_blank" >����ʯͷ��ô���£�ΪʲôС����ʯ�ӣ�</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/43/n-84343.html" title="����������ô���£�ΪʲôС���������" target="_blank" >����������ô���£�ΪʲôС���������</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/16/n-84316.html" title="�����Բ���ô���£�ΪʲôС���Բݣ�" target="_blank" >�����Բ���ô���£�ΪʲôС���Բݣ�</a></dd>
  </dl>
  <dl class="category">
 <dt><em>����</em><span><a href="http://www.ttpet.com/zixun/12/category-catid-12.html" title="����" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/48/n-84348.html" title="��������ܳԴ��ҩ��С��ʲôʱ�������ҩ��" target="_blank" >��������ܳԴ��ҩ��С��ʲôʱ�������ҩ��</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/47/n-84347.html" title="�����ʡ����������Ȯ��������ʣ�" target="_blank" >�����ʡ����������Ȯ��������ʣ�</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/20/n-84320.html" title="�����ʡ����칷���ܳ�������" target="_blank" >�����ʡ����칷���ܳ�������</a></dd>
  </dl>
  <dl class="category">
 <dt><em>��ֳ</em><span><a href="http://www.ttpet.com/zixun/47/category-catid-47.html" title="��ֳ" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/04/n-84204.html" title="�ű�Ȯ����ע����������Щ��" target="_blank" >�ű�Ȯ����ע����������Щ��</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/03/n-84203.html" title="�ű�ȮҪ�����𣿶ű�Ȯ��������Ҫע��ʲô��" target="_blank" >�ű�ȮҪ�����𣿶ű�Ȯ��������Ҫע��ʲô��</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/50/n-84150.html" title="�ű�Ȯ������ô�죿Ҫע��ʲô��" target="_blank" >�ű�Ȯ������ô�죿Ҫע��ʲô��</a></dd>
  </dl>
  <dl class="category">
 <dt><em>ѵ��</em><span><a href="http://www.ttpet.com/zixun/13/category-catid-13.html" title="ѵ��" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/46/n-84346.html" title="�������ʼѵ�������������¿�ʼѵ����ã�" target="_blank" >�������ʼѵ�������������¿�ʼѵ����ã�</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/45/n-84345.html" title="��ôѵ������������ʲô������" target="_blank" >��ôѵ������������ʲô������</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/18/n-84318.html" title="��������ܳ��ţ����������Գ�ȥ�ޣ�" target="_blank" >��������ܳ��ţ����������Գ�ȥ�ޣ�</a></dd>
  </dl>
  <dl class="category">
 <dt><em>����</em><span><a href="http://www.ttpet.com/zixun/16/category-catid-16.html" title="����" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/84/n-84284.html" title="���ο���̩������һ�δ�Ŷ���Ǯ��" target="_blank" >���ο���̩������һ�δ�Ŷ���Ǯ��</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/02/n-84202.html" title="�����˹Ȯ������ô����" target="_blank" >�����˹Ȯ������ô����</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/01/n-84201.html" title="�������������˹Ȯë����ô����" target="_blank" >�������������˹Ȯë����ô����</a></dd>
  </dl>
  </div>
 <!--dog en-->
 <!--dog_photo op-->
  <div class="dog_photo">
 <ul> <li><a href="http://www.ttpet.com/zixun/80/n-79980.html" target="_blank" ><img src="http://img.ttpet.com/edit/2009/7/3/1250651211089500476.JPG?V_66d" alt="ѵ������Ȯ��С��" width="156" height="186" /></a><a href="http://www.ttpet.com/zixun/80/n-79980.html" title="ѵ������Ȯ��С��" target="_blank" >ѵ������Ȯ��С��</a></li>
  <li><a href="http://www.ttpet.com/zixun/60/n-79960.html" target="_blank" ><img src="http://img.ttpet.com/edit/2009/7/3/1319428268319930901.JPG?V_a3" alt="ϲ�ֵٿ�����ô�죬��ʲôԭ��" width="156" height="186" /></a><a href="http://www.ttpet.com/zixun/60/n-79960.html" title="ϲ�ֵٿ���ԭ��" target="_blank" >ϲ�ֵٿ���ԭ��</a></li>
  <li><a href="http://www.ttpet.com/zixun/35/n-79935.html" target="_blank" ><img src="http://img.ttpet.com/edit/2009/7/3/1250651657661212531.JPG?V_532" alt="�ɰ��ľ��͹�����" width="156" height="186" /></a><a href="http://www.ttpet.com/zixun/35/n-79935.html" title="�������ִ�ȫ" target="_blank" >�������ִ�ȫ</a></li>
  <li><a href="http://www.ttpet.com/zixun/89/n-79889.html" target="_blank" ><img src="http://img.ttpet.com/edit/2009/7/3/1250651745025592863.JPG?V_faa" alt="ɳƤ��������ô��" width="156" height="186" /></a><a href="http://www.ttpet.com/zixun/89/n-79889.html" title="ɳƤ������" target="_blank" >ɳƤ������</a></li>
  <li><a href="http://www.ttpet.com/zixun/11/n-79811.html" target="_blank" ><img src="http://img.ttpet.com/edit/2009/7/3/1250651837439078459.JPG?V_819" alt="�ű�Ȯ��������" width="156" height="186" /></a><a href="http://www.ttpet.com/zixun/11/n-79811.html" title="�ű�Ȯ��������" target="_blank" >�ű�Ȯ��������</a></li>
  <li><a href="http://www.ttpet.com/zixun/12/n-79712.html" target="_blank" ><img src="http://img.ttpet.com/edit/2009/7/3/1250651975334927805.JPG?V_27a" alt="����Ȯ��ð���տ�����ô��" width="156" height="186" /></a><a href="http://www.ttpet.com/zixun/12/n-79712.html" title="����Ȯ��ð��ô��" target="_blank" >����Ȯ��ð��ô��</a></li>
 </ul>
 </div><!--��ҳ����-->
 <!--dog_photo ed-->
 <br clear="all" />
 </div>
 <!--���� ed-->
 <!-- ********************************************** -->
 <div class="space11"></div>
 <!-- ********************************************** -->
 <!--����� op-->
 <div class="right_banner"><a href="http://www.ttpet.com/zixun/34/n-74434.html" target="_blank">
<img src="http://img.ttpet.com/b_album/ttpp/zixun_banner.gif" alt="è��ʳ���Ӫ������"/></a><!--��ҳ�������������--></div>
 <!--����� ed-->
 <!-- ********************************************** -->
 <div class="space11"></div>
 <!-- ********************************************** -->
 <!--èè op-->
 <div class="info_box">
 <!--���ݸ��������ӷ���-->
 <!--title4 op-->
 <div class="title4">
 <h5><img src="images/article_cat.gif" alt="èè" width="16" height="16" />èè</h5>
 <a href="http://www.ttpet.com/breed/breed-2.html" class="lv" target="_blank">èèƷ�ִ�ȫ</a>
 <span><a href="http://www.ttpet.com/zixun/17/category-catid-17.html" target="_blank">Ʒ��</a>/<a href="http://www.ttpet.com/zixun/18/category-catid-18.html" target="_blank">����</a>/<a href="http://www.ttpet.com/zixun/19/category-catid-19.html" target="_blank">����</a>/<a href="http://www.ttpet.com/zixun/48/category-catid-48.html" target="_blank">��ֳ</a>/<a href="http://www.ttpet.com/zixun/20/category-catid-20.html" target="_blank">ѵ��</a>/<a href="http://www.ttpet.com/zixun/49/category-catid-49.html" target="_blank">����</a>/
 </span>
 </div>
 <!--title4 ed-->
 <!--cat op-->
 <div class="cat">
  <dl class="category">
 <dt><em>Ʒ��</em><span><a href="http://www.ttpet.com/zixun/17/category-catid-17.html" title="Ʒ��" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/66/n-84366.html" title="����������èè���׼" target="_blank" >����������èè���׼</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/65/n-84365.html" title="è�䵵��������������è" target="_blank" >è�䵵��������������è</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/64/n-84364.html" title="����èè���׼" target="_blank" >����èè���׼</a></dd>
  </dl>
  <dl class="category">
 <dt><em>����</em><span><a href="http://www.ttpet.com/zixun/18/category-catid-18.html" title="����" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/51/n-84351.html" title="Сè��è��Ҫ��ˮ����" target="_blank" >Сè��è��Ҫ��ˮ����</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/50/n-84350.html" title="è����β��ʲô��˼��Ϊʲôè����β�ͣ�" target="_blank" >è����β��ʲô��˼��Ϊʲôè����β�ͣ�</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/49/n-84349.html" title="è�����۾�ʲô��˼������ʲô��" target="_blank" >è�����۾�ʲô��˼������ʲô��</a></dd>
  </dl>
  <dl class="category">
 <dt><em>����</em><span><a href="http://www.ttpet.com/zixun/19/category-catid-19.html" title="����" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/31/n-84131.html" title="������è�䲻�Է���ô�죿ʲôԭ��" target="_blank" >������è�䲻�Է���ô�죿ʲôԭ��</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/21/n-84121.html" title="����������ô�ж�è���Ƿ�ʧ����" target="_blank" >����������ô�ж�è���Ƿ�ʧ����</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/85/n-84085.html" title="è��������������ܴ���ô���£�" target="_blank" >è��������������ܴ���ô���£�</a></dd>
  </dl>
  <dl class="category">
 <dt><em>��ֳ</em><span><a href="http://www.ttpet.com/zixun/48/category-catid-48.html" title="��ֳ" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/56/n-83856.html" title="è����ǰҪ׼��ʲô������" target="_blank" >è����ǰҪ׼��ʲô������</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/55/n-83855.html" title="������è������Ҫע��ʲô����" target="_blank" >������è������Ҫע��ʲô����</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/54/n-83854.html" title="�����ʡ����е�è���ܳԺ�����" target="_blank" >�����ʡ����е�è���ܳԺ�����</a></dd>
  </dl>
  <dl class="category">
 <dt><em>ѵ��</em><span><a href="http://www.ttpet.com/zixun/20/category-catid-20.html" title="ѵ��" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/90/n-84290.html" title="è������ץ����ô�죿ʲôԭ����ξ�����" target="_blank" >è������ץ����ô�죿ʲôԭ����ξ�����</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/89/n-84289.html" title="è��Ϊʲô�����ˣ�è����������ô�죿" target="_blank" >è��Ϊʲô�����ˣ�è����������ô�죿</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/30/n-84130.html" title="�ͷ�è����ʲô������" target="_blank" >�ͷ�è����ʲô������</a></dd>
  </dl>
  <dl class="category">
 <dt><em>����</em><span><a href="http://www.ttpet.com/zixun/49/category-catid-49.html" title="����" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/70/n-84070.html" title="��ô����è��ë�ʣ���ʲô������" target="_blank" >��ô����è��ë�ʣ���ʲô������</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/69/n-84069.html" title="è��Ϊʲô��ϴ����ʲôԭ��" target="_blank" >è��Ϊʲô��ϴ����ʲôԭ��</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/68/n-84068.html" title="è���㲿����ķ���" target="_blank" >è���㲿����ķ���</a></dd>
  </dl>
   <div class="cat_photo">
  <a href="http://www.ttpet.com/zixun/26/n-78026.html" target="_blank"><img src="http://img.ttpet.com/edit/2009/7/3/1250652184965056368.gif?V_8d2" alt="è�䲻������ô��" width="156" height="186" /></a>
  <a href="http://www.ttpet.com/zixun/10/n-77910.html" target="_blank"><img src="http://img.ttpet.com/edit/2009/7/3/1284001398685129665.gif?V_0ad" alt="����è����ʳ��Ϊ" width="156" height="186" /></a>
  <a href="http://www.ttpet.com/zixun/82/n-77682.html" target="_blank"><img src="http://img.ttpet.com/edit/2009/7/3/1250652447924055053.gif?V_e53" alt="��β������è�䵨��" width="156" height="186" /></a>
  <a href="http://www.ttpet.com/zixun/15/n-77315.html" target="_blank"><img src="http://img.ttpet.com/edit/2009/7/3/1250652447827275639.gif?V_0be" alt="��è�䳤;����ע������" width="156" height="186" /></a>
  </div><!--��ҳèè-->
 </div>
 <!--cat ed-->
 </div>
 <!--èè ed-->
 <!-- ********************************************** -->
 <div class="space11"></div>
 <!-- ********************************************** -->
 <!--С�� op-->
 <div class="info_box">
 <!--���ݸ��������ӷ���-->
 <!--title4 op-->
 <div class="title4">
 <h5><img src="images/article_rabbit.gif" alt="С��" width="16" height="16" />С��</h5>
 <span><a href="http://www.ttpet.com/zixun/26/category-catid-26.html" target="_blank">����</a>/<a href="http://www.ttpet.com/zixun/27/category-catid-27.html" target="_blank">����</a>/<a href="http://www.ttpet.com/zixun/28/category-catid-28.html" target="_blank">����</a>/<a href="http://www.ttpet.com/zixun/29/category-catid-29.html" target="_blank">����</a>/<a href="http://www.ttpet.com/zixun/30/category-catid-30.html" target="_blank">����</a> </span>
 </div>
 <!--title4 ed-->
 <!--cat op-->
 <div class="cat">
  <dl class="category">
 <dt><em>����</em><span><a href="http://www.ttpet.com/zixun/26/category-catid-26.html" title="����" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/33/n-84033.html" title="���ӱ����ô��Ӧ���彡��״����" target="_blank" >���ӱ����ô��Ӧ���彡��״����</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/32/n-84032.html" title="���������ķ���������ģ�" target="_blank" >���������ķ���������ģ�</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/18/n-84018.html" title="���ӷ�����Ҫע��ʲô��" target="_blank" >���ӷ�����Ҫע��ʲô��</a></dd>
  </dl>
  <dl class="category">
 <dt><em>����</em><span><a href="http://www.ttpet.com/zixun/27/category-catid-27.html" title="����" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/58/n-84258.html" title="����������ô���Ʋ�����ˮ����" target="_blank" >����������ô���Ʋ�����ˮ����</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/38/n-84238.html" title="���󲻺�ˮ��ô�죿����Ϊʲô����ˮ��" target="_blank" >���󲻺�ˮ��ô�죿����Ϊʲô����ˮ��</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/37/n-84237.html" title="����˯��������ô���£�ʲôԭ��" target="_blank" >����˯��������ô���£�ʲôԭ��</a></dd>
  </dl>
  <dl class="category">
 <dt><em>����</em><span><a href="http://www.ttpet.com/zixun/28/category-catid-28.html" title="����" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/59/n-84259.html" title="��������������" target="_blank" >��������������</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/34/n-84234.html" title="�����������µ���������ʲôʱ���µ���" target="_blank" >�����������µ���������ʲôʱ���µ���</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/33/n-84233.html" title="�������ܳ����ƽ�����ض��٣�" target="_blank" >�������ܳ����ƽ�����ض��٣�</a></dd>
  </dl>
  <dl class="category">
 <dt><em>����</em><span><a href="http://www.ttpet.com/zixun/29/category-catid-29.html" title="����" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/79/n-79279.html" title="��ô���󰣬�����������" target="_blank" >��ô���󰣬�����������</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/78/n-79278.html" title="���ʲô�����ã���ϲ����ʲô��" target="_blank" >���ʲô�����ã���ϲ����ʲô��</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/56/n-79156.html" title="��Ы�ɻ�����ô��ߣ���ʲô������" target="_blank" >��Ы�ɻ�����ô��ߣ���ʲô������</a></dd>
  </dl>
  <dl class="category">
 <dt><em>����</em><span><a href="http://www.ttpet.com/zixun/30/category-catid-30.html" title="����" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/04/n-79404.html" title="�����ɳ�ʲôʳ�" target="_blank" >�����ɳ�ʲôʳ�</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/62/n-77762.html" title="������ֳ������ע������" target="_blank" >������ֳ������ע������</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/60/n-77760.html" title="��������Щ����ϰ��" target="_blank" >��������Щ����ϰ��</a></dd>
  </dl>
  <div class="smallpet">
  <a href="http://www.ttpet.com/zixun/53/n-76253.html" target="_blank"><img src="http://img.ttpet.com/edit/2009/7/3/1250654557346627754.gif?V_efd" alt="��ֹ������������" width="156" height="186" /></a>
 </div><!--��ҳС��-->
 </div>
 <!--cat ed-->
 </div>
 <!--С�� ed-->
 <!-- ********************************************** -->
 <div class="space11"></div>
 <!-- ********************************************** -->
 <!--ˮ�� op-->
 <div class="info_box">
 <!--���ݸ��������ӷ���-->
 <!--title4 op-->
 <div class="title4">
 <h5><img src="images/article_fish.gif" alt="ˮ��" width="16" height="16" />ˮ��</h5>
 <span><a href="http://www.ttpet.com/zixun/31/category-catid-31.html" target="_blank">Ʒ��</a>/<a href="http://www.ttpet.com/zixun/32/category-catid-32.html" target="_blank">����</a>/<a href="http://www.ttpet.com/zixun/46/category-catid-46.html" target="_blank">ˮ��</a>/<a href="http://www.ttpet.com/zixun/45/category-catid-45.html" target="_blank">�þ�</a>/<a href="http://www.ttpet.com/zixun/36/category-catid-36.html" target="_blank">�㲡</a>/<a href="http://www.ttpet.com/zixun/33/category-catid-33.html" target="_blank">����</a> </span>
 </div>
 <!--title4 ed-->
 <!--cat op-->
 <div class="cat">
  <dl class="category">
 <dt><em>Ʒ��</em><span><a href="http://www.ttpet.com/zixun/31/category-catid-31.html" title="Ʒ��" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/91/n-84191.html" title="��ȸ��۸���٣���ȸ��һֻ����Ǯ��" target="_blank" >��ȸ��۸���٣���ȸ��һֻ����Ǯ��</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/90/n-84190.html" title="��ȸ����������ܻ�����" target="_blank" >��ȸ����������ܻ�����</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/71/n-84171.html" title="��ȸ��ͺ��̵��ܻ�����?" target="_blank" >��ȸ��ͺ��̵��ܻ�����?</a></dd>
  </dl>
  <dl class="category">
 <dt><em>����</em><span><a href="http://www.ttpet.com/zixun/32/category-catid-32.html" title="����" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/89/n-84189.html" title="��ȸ�����Ҫ��ˮ����" target="_blank" >��ȸ�����Ҫ��ˮ����</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/88/n-84188.html" title="���������衿��θ���ȸ�㻻ˮ��" target="_blank" >���������衿��θ���ȸ�㻻ˮ��</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/87/n-84187.html" title="��ȸ�����ʲô���ÿ죿" target="_blank" >��ȸ�����ʲô���ÿ죿</a></dd>
  </dl>
  <dl class="category">
 <dt><em>ˮ��</em><span><a href="http://www.ttpet.com/zixun/46/category-catid-46.html" title="ˮ��" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/95/n-83895.html" title="��������ˮ����ΰ��ڳ�ľ���棿" target="_blank" >��������ˮ����ΰ��ڳ�ľ���棿</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/84/n-83384.html" title="�����������������ôȥ����" target="_blank" >�����������������ôȥ����</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/30/n-83130.html" title="�������������ô�죿����������" target="_blank" >�������������ô�죿����������</a></dd>
  </dl>
  <dl class="category">
 <dt><em>�þ�</em><span><a href="http://www.ttpet.com/zixun/45/category-catid-45.html" title="�þ�" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/85/n-83385.html" title="�����ɡ���ľ��ˮ����δ��䣿" target="_blank" >�����ɡ���ľ��ˮ����δ��䣿</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/25/n-78425.html" title="ˮ���쾰����ʯ������" target="_blank" >ˮ���쾰����ʯ������</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/24/n-78424.html" title="ɺ����׵�ԭ��ԭ����������" target="_blank" >ɺ����׵�ԭ��ԭ����������</a></dd>
  </dl>
  <dl class="category">
 <dt><em>�㲡</em><span><a href="http://www.ttpet.com/zixun/36/category-catid-36.html" title="�㲡" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/40/n-84240.html" title="��ȸ����������ô��ߣ�" target="_blank" >��ȸ����������ô��ߣ�</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/39/n-84239.html" title="��ȸ��β�͵�ɫ��ô���£�" target="_blank" >��ȸ��β�͵�ɫ��ô���£�</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/07/n-84207.html" title="��ȸ���������ô���£�ʲôԭ��" target="_blank" >��ȸ���������ô���£�ʲôԭ��</a></dd>
  </dl>
  <dl class="category">
 <dt><em>����</em><span><a href="http://www.ttpet.com/zixun/33/category-catid-33.html" title="����" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/33/n-84133.html" title="����ż���������ʣ�" target="_blank" >����ż���������ʣ�</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/28/n-84128.html" title="���ο�����������ʲô�ƱȽϺã�" target="_blank" >���ο�����������ʲô�ƱȽϺã�</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/20/n-84120.html" title="������Ҫ�ŵ�ɰ����������ʲô��ɰ�ã�" target="_blank" >������Ҫ�ŵ�ɰ����������ʲô��ɰ�ã�</a></dd>
  </dl>
  </div>
 <!--cat ed-->
 </div>
 <!--ˮ�� ed-->
 <!-- ********************************************** -->
 <div class="space11"></div>
 <!-- ********************************************** -->
 <!--���� ed-->
 <div class="info_box">
 <!--���ݸ��������ӷ���-->
 <!--title5 op-->
 <div class="title4">
 <h5><img src="images/article_bird.gif" alt="����" width="16" height="16" />����</h5>
 <span><a href="http://www.ttpet.com/zixun/37/category-catid-37.html" target="_blank" >����</a>/<a href="http://www.ttpet.com/zixun/44/category-catid-44.html" target="_blank" >�Ÿ�</a>/<a href="http://www.ttpet.com/zixun/38/category-catid-38.html" target="_blank" >����</a> </span>
 </div>
 <!--title5 ed-->
 <!--birds op-->
 <p class="birds">
 <a href="http://www.ttpet.com/zixun/42/n-74742.html" target="_blank" ><img src="http://img.ttpet.com/edit/2009/7/3/1250655250263893893.jpg?V_d5b" alt="��������Щ����Ʒ��"/></a><a href="http://www.ttpet.com/zixun/42/n-74742.html" title="��������Щ����Ʒ��" target="_blank" >��������Щ����Ʒ��</a>
 </p>
<!--��ҳ����-->
 <!--birds ed-->
<div class="birds_r">
  <dl>
 <dt><em>����</em><span><a href="http://www.ttpet.com/zixun/37/category-catid-37.html" title="����" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/17/n-82017.html" title="��Ƥ���ķ�ֳ��Ҫע��ʲô��" target="_blank" >��Ƥ���ķ�ֳ��Ҫע��ʲô��</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/16/n-82016.html" title="��Ƥ���ı�����Ѫ��ô�죿" target="_blank" >��Ƥ���ı�����Ѫ��ô�죿</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/75/n-81975.html" title="��Ƥ������Ȧ������ô���£�ʲôԭ��" target="_blank" >��Ƥ������Ȧ������ô���£�ʲôԭ��</a></dd>
  </dl>
  <dl>
 <dt><em>�Ÿ�</em><span><a href="http://www.ttpet.com/zixun/44/category-catid-44.html" title="�Ÿ�" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/19/n-82019.html" title="�����ж����֣���μ��ȣ�" target="_blank" >�����ж����֣���μ��ȣ�</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/18/n-82018.html" title="������������������ô���ƣ�" target="_blank" >������������������ô���ƣ�</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/13/n-82013.html" title="�Ÿ���˸붻��ô�죿������ƣ�" target="_blank" >�Ÿ���˸붻��ô�죿������ƣ�</a></dd>
  </dl>
  <dl>
 <dt><em>����</em><span><a href="http://www.ttpet.com/zixun/38/category-catid-38.html" title="����" target="_blank" >����</a></span></dt>
 <!--��ҳָ�������µ�������Ѷ��Ϣ-->
  <dd>�� <a href="http://www.ttpet.com/zixun/15/n-82015.html" title="�һ���÷����������α��ϣ�" target="_blank" >�һ���÷����������α��ϣ�</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/14/n-82014.html" title="��÷��÷����������α��ϣ�" target="_blank" >��÷��÷����������α��ϣ�</a></dd>
  <dd>�� <a href="http://www.ttpet.com/zixun/57/n-81957.html" title="������ܰ��ֳ����������ܰ��ô����" target="_blank" >������ܰ��ֳ����������ܰ��ô����</a></dd>
  </dl>
 </div>
 <br clear="all" />
 </div>
 <!--���� ed-->
 </div>
 <!--right ed-->
 </div>
 <!--body ed-->

</body>
</html>