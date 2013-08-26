<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<link href="http://localhost:2020/ttpet/css/all.css" type="text/css">
<title>宠物交友-天天宠物网</title>
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

/* 资讯分类////////////////////////////////////////////////////*/
.sort{clear:both; width:197px; padding:0px;}
.sort dl{ width:174px; clear:both; margin:0px auto 3px; border-bottom:1px dashed #CCC; padding:8px 0; display:table;}
.sort dl dt{ color:#764e2a; text-align:left; line-height:22px; text-indent:9px; width:174px; background-position:-10px -135px; margin-bottom:5px;}
.sort dl dt a{color:#764e2a!important; text-decoration:none;}
.sort dl dt a:hover{color:#764e2a!important; text-decoration:underline;}
.sort dl dd{ width:50px; float:left; color:#666; line-height:22px; text-indent:10px; list-style-type:disc; white-space:nowrap;}



/* 最新供求////////////////////////////////////////////////////*/
.new_trade{ clear:both; height:auto; }
.new_trade li{ width:176px; margin:5px; background: url(../images/ttpet/jiantou_1.gif) no-repeat left center; padding-left: 12px; border-bottom:1px dashed #DDD; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; line-height:20px; }


/* 左边广告////////////////////////////////////////////////////*/
.left_ad img{ border:1px solid #DDD; width:196px; height:165px;}


/* 推荐关键字////////////////////////////////////////////////////*/
.key_words{ width:177px; height:346px;  text-align:left; overflow:hidden; padding:10px;} 
.key_words a{ line-height:30px; color:#61a0c7!important; font-size:14px; margin-right:5px; white-space:nowrap; display:inline-block;}
.key_words a:hover{color:#F60!important;}

a.red_link:link    {color: #FF6600!important; }
a.red_link:visited {color: #FF6600!important;}
a.red_link:hover   {color: #FF3300!important; text-decoration: underline; }
a.red_link:active  {color: #FF3300!important;}


/* 最热宠知道////////////////////////////////////////////////////*/
.hot_zhidao { background-position:-10px -296px; height:414px; width:181px; margin:8px;}
.hot_zhidao li{ float:left; line-height:23px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; width:158px; margin-left:23px; display:inline; }
.hot_zhidao li a{ color:#333!important;}
.hot_zhidao li a:hover{ color:#F30!important;}


/* 右边轮转广告////////////////////////////////////////////////////*/
.right_ad{ width:284px; height:295px; border:1px solid #DDD; padding:1px; float:left;}


#ibanner { position:relative;margin:0 auto; width:284px; height:295px; overflow:hidden; }
#ibanner_pic a { position:absolute; top:0; display:block; width:284px; height:295px; overflow:hidden; }
#ibanner_pic img {width:284px; height:295px;}

#ibanner_btn { position:absolute; z-index:9999; right:5px; bottom:5px; }
#ibanner_btn span { display:block; float:left; margin-left:6px; padding:0 5px; background:#FFAC00; font-weight:700; cursor:pointer; }
#ibanner_btn .normal { height:16px; margin-top:4px; border:1px solid #FFFFFF;  background:#FFAC00; color:#FFFFFF; padding-top:-3px; font-size:12px; line-height:16px; }
#ibanner_btn .current { height:18px; border:1px solid #FFAC00; background:#FFFFFF; color:#FFAC00; font-size:16px; line-height:18px; }


/* 最新新闻////////////////////////////////////////////////////*/
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


/* 狗狗////////////////////////////////////////////////////*/
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


/* 右边广告////////////////////////////////////////////////////*/
.right_banner img{ width:747px; height:78px; border:1px solid #CCC;}


/* 猫猫////////////////////////////////////////////////////*/
.cat{ width:700px; margin:10px auto; overflow:hidden;}
.cat_photo{ width:700px; clear:both; margin:5px auto;}
.cat_photo img{ width:145px; height:94px; padding:2px; border:1px solid #CCC; float:left; margin-right:24px; display:inline;}


/* 小宠////////////////////////////////////////////////////*/
.smallpet img{ width:182px; height:100px; padding:1px; border:1px solid #CCC;}

/* 花鸟////////////////////////////////////////////////////*/
/* .info_box2{ width:412px; height:350px; border:1px solid #b5d3e5; overflow:hidden; float:left;}
.birds{ width:180px; float:left; display:inline;}
.birds li{ width:128px; height:133px; background:url(../images/photobg.png) repeat-x; margin:15px auto; text-align:center; clear:both;}
.birds li img{ width:120px; height:100px; margin:6px; float:left;}
.birds li a{ color:#FFF!important; line-height:20px; width:120px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap; float:left; text-indent:6px;}
.birds li a:hover{color:#FFF!important; text-decoration:underline;}*/

/* 花鸟////////////////////////////////////////////////////*/
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
	 <!--资讯分类-->
	 <h4 class="title">资讯分类</h4>
	 <div class="leftbox">
	 <!--sort op-->
	 <div class="sort">   <dl>
	 <dt><a href="http://www.ttpet.com/zixun/39/category-catid-39.html" target="_blank">新闻</a></dt>
	               <dd>· <a href="http://www.ttpet.com/zixun/42/category-catid-42.html" target="_blank">焦点</a></dd>
	          <dd>· <a href="http://www.ttpet.com/zixun/40/category-catid-40.html" target="_blank">快报</a></dd>
	            <dd>· <a href="http://www.ttpet.com/zixun/41/category-catid-41.html" target="_blank">宠圈</a></dd>
	                                         </dl>
	       <dl>
	 <dt><a href="http://www.ttpet.com/zixun/1/category-catid-1.html" target="_blank">狗狗</a></dt>
	   <dd>· <a href="http://www.ttpet.com/zixun/10/category-catid-10.html" target="_blank">品种</a></dd>
	                  <dd>· <a href="http://www.ttpet.com/zixun/11/category-catid-11.html" target="_blank">养护</a></dd>
	                  <dd>· <a href="http://www.ttpet.com/zixun/12/category-catid-12.html" target="_blank">健康</a></dd>
	                  <dd>· <a href="http://www.ttpet.com/zixun/47/category-catid-47.html" target="_blank">繁殖</a></dd>
	        <dd>· <a href="http://www.ttpet.com/zixun/13/category-catid-13.html" target="_blank">训练</a></dd>
	          <dd>· <a href="http://www.ttpet.com/zixun/16/category-catid-16.html" target="_blank">美容</a></dd>
	         </dl>
	         <dl>
	 <dt><a href="http://www.ttpet.com/zixun/2/category-catid-2.html" target="_blank">猫猫</a></dt>
	     <dd>· <a href="http://www.ttpet.com/zixun/17/category-catid-17.html" target="_blank">品种</a></dd>
	                  <dd>· <a href="http://www.ttpet.com/zixun/18/category-catid-18.html" target="_blank">养护</a></dd>
	                  <dd>· <a href="http://www.ttpet.com/zixun/19/category-catid-19.html" target="_blank">健康</a></dd>
	                  <dd>· <a href="http://www.ttpet.com/zixun/48/category-catid-48.html" target="_blank">繁殖</a></dd>
	    <dd>· <a href="http://www.ttpet.com/zixun/20/category-catid-20.html" target="_blank">训练</a></dd>
	                  <dd>· <a href="http://www.ttpet.com/zixun/49/category-catid-49.html" target="_blank">美容</a></dd>
	   </dl>
	         <dl>
	 <dt><a href="http://www.ttpet.com/zixun/23/category-catid-23.html" target="_blank">小宠</a></dt>
	         <dd>· <a href="http://www.ttpet.com/zixun/26/category-catid-26.html" target="_blank">兔兔</a></dd>
	                  <dd>· <a href="http://www.ttpet.com/zixun/27/category-catid-27.html" target="_blank">鼠鼠</a></dd>
	                <dd>· <a href="http://www.ttpet.com/zixun/28/category-catid-28.html" target="_blank">爬行</a></dd>
	          <dd>· <a href="http://www.ttpet.com/zixun/29/category-catid-29.html" target="_blank">昆虫</a></dd>
	                <dd>· <a href="http://www.ttpet.com/zixun/30/category-catid-30.html" target="_blank">其他</a></dd>
	             </dl>
	         <dl>
	 <dt><a href="http://www.ttpet.com/zixun/24/category-catid-24.html" target="_blank">水族</a></dt>
	           <dd>· <a href="http://www.ttpet.com/zixun/31/category-catid-31.html" target="_blank">品种</a></dd>
	                  <dd>· <a href="http://www.ttpet.com/zixun/32/category-catid-32.html" target="_blank">饲养</a></dd>
	                  <dd>· <a href="http://www.ttpet.com/zixun/46/category-catid-46.html" target="_blank">水草</a></dd>
	        <dd>· <a href="http://www.ttpet.com/zixun/45/category-catid-45.html" target="_blank">置景</a></dd>
	                <dd>· <a href="http://www.ttpet.com/zixun/36/category-catid-36.html" target="_blank">鱼病</a></dd>
	        <dd>· <a href="http://www.ttpet.com/zixun/33/category-catid-33.html" target="_blank">器材</a></dd>
	     </dl>
	      <dl>
	 <dt><a href="http://www.ttpet.com/zixun/25/category-catid-25.html" target="_blank">花鸟</a></dt>
	             <dd>· <a href="http://www.ttpet.com/zixun/37/category-catid-37.html" target="_blank">鸟类</a></dd>
	                  <dd>· <a href="http://www.ttpet.com/zixun/44/category-catid-44.html" target="_blank">信鸽</a></dd>
	              <dd>· <a href="http://www.ttpet.com/zixun/38/category-catid-38.html" target="_blank">花卉</a></dd>
	                                 </dl>
	     </div>
	 <!--sort ed-->
</div>
	 <!--**********************************************-->
	 <div class="space12"></div>
 
 <div class="right">
 <!--轮转广告 op-->
 <div class="right_ad">
<div id="ibanner">
<div id="ibanner_pic"><a href="http://www.ttpet.com/zixun/68/n-83068.html" target="_blank"><img src="http://img.ttpet.com/b_album/ttpp/20130609.jpg" alt="包小妞的周末游，体会异国风情" /></a>
<a href="http://www.ttpet.com/zixun/34/n-83034.html" target="_blank"><img src="http://img.ttpet.com/b_album/ttpp/201306091.jpg" alt="可爱小松狮开心花溪游" /></a>
<a href="http://www.ttpet.com/zixun/98/n-82998.html" target="_blank"><img src="http://img.ttpet.com/b_album/ttpp/201306092.jpg" alt="怎样科学喂养你的狗狗？" /></a>
<a href="http://www.ttpet.com/zixun/82/n-83082.html" target="_blank"><img src="http://img.ttpet.com/b_album/ttpp/201306093.jpg" alt="广岛虔诚柯基犬，5年来每天去寺庙撞钟" /></a>
<a href="http://www.ttpet.com/zixun/50/n-83050.html" target="_blank"><img src="http://img.ttpet.com/b_album/ttpp/201306094.jpg" alt="美国扫毒警员殉职，警犬搭档抚棺不舍" /></a>
<!--首页轮转-->
</div>
</div>
 </div>
 <!--轮转广告 ed-->
 <!--最新新闻 op-->
 <div class="new">
 <h2 class="title3">新闻热点</h2> <div class="new_info">
 <h1><a href="http://www.ttpet.com/zixun/63/n-79963.html" title="狗狗陪伴主人度过人生最后一刻" target="_blank" >狗狗陪伴主人度过人生最后一刻</a></h1>
 今年57岁的凯文没有亲人，与它相伴的只有一只名叫Yurtie的狗狗。狗狗一直陪伴凯文住在“汽车屋”里，它们也就成为彼此唯一的亲人。[<a href="http://www.ttpet.com/zixun/63/n-79963.html" title="查看详情" target="_blank" class="red_link">详情</a>]
 </div> <div class="focus">
 <!--根据父分类获得子分类-->
  <dl>
 <dt>焦点</dt>
 <!--首页指定分类下的四条资讯信息-->
  <dd class="gry_link2">· <a href="http://www.ttpet.com/zixun/54/n-84354.html" title="小狗身上挂奶瓶喂养小羊羔" target="_blank" >小狗身上挂奶瓶喂养小羊羔</a></dd>
  <dd class="gry_link2">· <a href="http://www.ttpet.com/zixun/53/n-84353.html" title="灾难来临也不离不弃：他们没有丢下动物家人" target="_blank" >灾难来临也不离不弃：他们没有丢下动物家人</a></dd>
  <dd class="gry_link2">· <a href="http://www.ttpet.com/zixun/52/n-84352.html" title="野钓者钓得半米长佛罗里达鳖" target="_blank" >野钓者钓得半米长佛罗里达鳖</a></dd>
  <dd class="gry_link2">· <a href="http://www.ttpet.com/zixun/24/n-84324.html" title="8岁男孩和奶奶独居山林，与狗为伴几近失语" target="_blank" >8岁男孩和奶奶独居山林，与狗为伴几近失语</a></dd>
  </dl>
  <dl>
 <dt>快报</dt>
 <!--首页指定分类下的四条资讯信息-->
  <dd class="gry_link2">· <a href="http://www.ttpet.com/zixun/63/n-84363.html" title="黑心繁殖，狗狗是生育工具" target="_blank" >黑心繁殖，狗狗是生育工具</a></dd>
  <dd class="gry_link2">· <a href="http://www.ttpet.com/zixun/60/n-84360.html" title="狗狗成长秀，爱的付出心的感动" target="_blank" >狗狗成长秀，爱的付出心的感动</a></dd>
  <dd class="gry_link2">· <a href="http://www.ttpet.com/zixun/26/n-84326.html" title="狗狗湿身，毛毛变成透视装" target="_blank" >狗狗湿身，毛毛变成透视装</a></dd>
  <dd class="gry_link2">· <a href="http://www.ttpet.com/zixun/25/n-84325.html" title="寄养导盲幼犬自掏腰包，你养吗？" target="_blank" >寄养导盲幼犬自掏腰包，你养吗？</a></dd>
  </dl>
  <dl>
 <dt>宠圈</dt>
 <!--首页指定分类下的四条资讯信息-->
  <dd class="gry_link2"> <a href="http://www.ttpet.com/zixun/64/n-84264.html" title="第十六届亚洲宠物展即将盛大开幕！" target="_blank" >第十六届亚洲宠物展即将盛大开幕！</a></dd>
  <dd class="gry_link2"> <a href="http://www.ttpet.com/zixun/88/n-83988.html" title="亚洲宠物展：主人与宠物年度亲子嘉年华" target="_blank" >亚洲宠物展：主人与宠物年度亲子嘉年华</a></dd>
  <dd class="gry_link2"> <a href="http://www.ttpet.com/zixun/43/n-81643.html" title="“福来恩”杯狗狗全国运动会号角吹响" target="_blank" >“福来恩”杯狗狗全国运动会号角吹响</a></dd>
  <dd class="gry_link2"> <a href="http://www.ttpet.com/zixun/42/n-81642.html" title="新春名犬英雄会——“发育宝”中国犬赛百余名犬齐聚" target="_blank" >新春名犬英雄会——“发育宝”中国犬赛百余名犬齐聚</a></dd>
  </dl>
  </div>
 </div>
 <!--最新新闻 ed-->
 <!-- ********************************************** -->
 <div class="space11"></div>
 <!-- ********************************************** -->
 <div class="info_box">
 <div class="title4">
<h5><img src="images/article_zhuanti.gif" alt="最新专题" width="16" height="16" />最新专题</h5>
 <span>
 <a href="http://www.ttpet.com/special/index.html" class="lv" target="_blank">更多专题</a>
 </span>
 </div>  <dl class="topic2">
 <dt><a href="http://www.ttpet.com/special/20130516/" target="_blank"><img src="http://img.ttpet.com/edit/2009/7/3/1250672989469543497.jpg?V_78e" alt="贵宾养护攻略"/></a></dt>
 <dd><a href="http://www.ttpet.com/special/20130516/" target="_blank">贵宾犬是一种活跃、机警、而且行动优雅的犬种，拥有很好的身体比例和矫健的动作。</a></dd>
 </dl>
  <dl class="topic2">
 <dt><a href="http://www.ttpet.com/special/20120604/" target="_blank"><img src="http://img.ttpet.com/edit/2009/7/3/1250672989434626514.jpg?V_d99" alt="新手养宠全攻略"/></a></dt>
 <dd><a href="http://www.ttpet.com/special/20120604/" target="_blank">狗两个月后可以带回家，新到家的小狗对新主人的家庭环境需要有一个逐步的适应过程</a></dd>
 </dl>
  <dl class="topic2">
 <dt><a href="http://www.ttpet.com/special/20110916/index.html" target="_blank"><img src="http://img.ttpet.com/edit/2009/7/3/1250672989067197476.gif?V_bdf" alt="宠物夏季攻略"/></a></dt>
 <dd><a href="http://www.ttpet.com/special/20110916/index.html" target="_blank">炎炎夏日，宠物们如何做好防暑降温？如何安然度夏呢？让我们一起关注宠物度夏攻略。</a></dd>
 </dl>
  </div>
 <!-- ********************************************** -->
 <div class="space11"></div>
 <!-- ********************************************** -->
 <!--狗狗 op-->
 <div class="info_box">
 <!--根据父分类获得子分类-->
 <!--title4 op-->
 <div class="title4">
 <h5><img src="images/article_dog.gif" alt="狗狗" width="16" height="16" />狗狗</h5>
 <a href="http://www.ttpet.com/breed/breed-1.html" class="lv" target="_blank">狗狗品种大全</a>
 <span><a href="http://www.ttpet.com/zixun/10/category-catid-10.html" target="_blank">品种</a>/<a href="http://www.ttpet.com/zixun/11/category-catid-11.html" target="_blank">养护</a>/<a href="http://www.ttpet.com/zixun/12/category-catid-12.html" target="_blank">健康</a>/<a href="http://www.ttpet.com/zixun/47/category-catid-47.html" target="_blank">繁殖</a>/<a href="http://www.ttpet.com/zixun/13/category-catid-13.html" target="_blank">训练</a>/<a href="http://www.ttpet.com/zixun/16/category-catid-16.html" target="_blank">美容</a>/
 </span>
 </div>
 <!--title4 en-->
 <!--dog en-->
 <div class="dog">
  <dl class="category">
 <dt><em>品种</em><span><a href="http://www.ttpet.com/zixun/10/category-catid-10.html" title="品种" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/42/n-84342.html" title="【图】世界上最小狗狗品种排行榜" target="_blank" >【图】世界上最小狗狗品种排行榜</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/41/n-84341.html" title="【推荐】男生适合养什么狗？" target="_blank" >【推荐】男生适合养什么狗？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/40/n-84340.html" title="【总结】最适合女生养的狗狗品种" target="_blank" >【总结】最适合女生养的狗狗品种</a></dd>
  </dl>
  <dl class="category">
 <dt><em>养护</em><span><a href="http://www.ttpet.com/zixun/11/category-catid-11.html" title="养护" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/44/n-84344.html" title="狗吃石头怎么回事？为什么小狗吃石子？" target="_blank" >狗吃石头怎么回事？为什么小狗吃石子？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/43/n-84343.html" title="狗吃土是怎么回事？为什么小狗会吃土？" target="_blank" >狗吃土是怎么回事？为什么小狗会吃土？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/16/n-84316.html" title="狗狗吃草怎么回事？为什么小狗吃草？" target="_blank" >狗狗吃草怎么回事？为什么小狗吃草？</a></dd>
  </dl>
  <dl class="category">
 <dt><em>健康</em><span><a href="http://www.ttpet.com/zixun/12/category-catid-12.html" title="健康" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/48/n-84348.html" title="狗狗多大能吃打虫药？小狗什么时候吃驱虫药？" target="_blank" >狗狗多大能吃打虫药？小狗什么时候吃驱虫药？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/47/n-84347.html" title="【疑问】狗狗多大打狂犬疫苗最合适？" target="_blank" >【疑问】狗狗多大打狂犬疫苗最合适？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/20/n-84320.html" title="【疑问】夏天狗狗能吃西瓜吗？" target="_blank" >【疑问】夏天狗狗能吃西瓜吗？</a></dd>
  </dl>
  <dl class="category">
 <dt><em>繁殖</em><span><a href="http://www.ttpet.com/zixun/47/category-catid-47.html" title="繁殖" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/04/n-84204.html" title="杜宾犬配种注意事项有哪些？" target="_blank" >杜宾犬配种注意事项有哪些？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/03/n-84203.html" title="杜宾犬要绝育吗？杜宾犬绝育手术要注意什么？" target="_blank" >杜宾犬要绝育吗？杜宾犬绝育手术要注意什么？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/50/n-84150.html" title="杜宾犬发情怎么办？要注意什么？" target="_blank" >杜宾犬发情怎么办？要注意什么？</a></dd>
  </dl>
  <dl class="category">
 <dt><em>训练</em><span><a href="http://www.ttpet.com/zixun/13/category-catid-13.html" title="训练" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/46/n-84346.html" title="狗狗多大开始训练？狗狗几个月开始训练最好？" target="_blank" >狗狗多大开始训练？狗狗几个月开始训练最好？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/45/n-84345.html" title="怎么训练狗狗憋尿？有什么方法？" target="_blank" >怎么训练狗狗憋尿？有什么方法？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/18/n-84318.html" title="狗狗多大能出门？狗狗多大可以出去遛？" target="_blank" >狗狗多大能出门？狗狗多大可以出去遛？</a></dd>
  </dl>
  <dl class="category">
 <dt><em>美容</em><span><a href="http://www.ttpet.com/zixun/16/category-catid-16.html" title="美容" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/84/n-84284.html" title="【参考】泰迪美容一次大概多少钱？" target="_blank" >【参考】泰迪美容一次大概多少钱？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/02/n-84202.html" title="马尔济斯犬耳朵怎么护理？" target="_blank" >马尔济斯犬耳朵怎么护理？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/01/n-84201.html" title="【方法】马尔济斯犬毛发怎么护理？" target="_blank" >【方法】马尔济斯犬毛发怎么护理？</a></dd>
  </dl>
  </div>
 <!--dog en-->
 <!--dog_photo op-->
  <div class="dog_photo">
 <ul> <li><a href="http://www.ttpet.com/zixun/80/n-79980.html" target="_blank" ><img src="http://img.ttpet.com/edit/2009/7/3/1250651211089500476.JPG?V_66d" alt="训练博美犬大小便" width="156" height="186" /></a><a href="http://www.ttpet.com/zixun/80/n-79980.html" title="训练博美犬大小便" target="_blank" >训练博美犬大小便</a></li>
  <li><a href="http://www.ttpet.com/zixun/60/n-79960.html" target="_blank" ><img src="http://img.ttpet.com/edit/2009/7/3/1319428268319930901.JPG?V_a3" alt="喜乐蒂咳嗽怎么办，是什么原因？" width="156" height="186" /></a><a href="http://www.ttpet.com/zixun/60/n-79960.html" title="喜乐蒂咳嗽原因" target="_blank" >喜乐蒂咳嗽原因</a></li>
  <li><a href="http://www.ttpet.com/zixun/35/n-79935.html" target="_blank" ><img src="http://img.ttpet.com/edit/2009/7/3/1250651657661212531.JPG?V_532" alt="可爱的京巴狗名字" width="156" height="186" /></a><a href="http://www.ttpet.com/zixun/35/n-79935.html" title="京巴名字大全" target="_blank" >京巴名字大全</a></li>
  <li><a href="http://www.ttpet.com/zixun/89/n-79889.html" target="_blank" ><img src="http://img.ttpet.com/edit/2009/7/3/1250651745025592863.JPG?V_faa" alt="沙皮狗智商怎么样" width="156" height="186" /></a><a href="http://www.ttpet.com/zixun/89/n-79889.html" title="沙皮狗智商" target="_blank" >沙皮狗智商</a></li>
  <li><a href="http://www.ttpet.com/zixun/11/n-79811.html" target="_blank" ><img src="http://img.ttpet.com/edit/2009/7/3/1250651837439078459.JPG?V_819" alt="杜宾犬外形特征" width="156" height="186" /></a><a href="http://www.ttpet.com/zixun/11/n-79811.html" title="杜宾犬外形特征" target="_blank" >杜宾犬外形特征</a></li>
  <li><a href="http://www.ttpet.com/zixun/12/n-79712.html" target="_blank" ><img src="http://img.ttpet.com/edit/2009/7/3/1250651975334927805.JPG?V_27a" alt="比熊犬感冒发烧咳嗽怎么办" width="156" height="186" /></a><a href="http://www.ttpet.com/zixun/12/n-79712.html" title="比熊犬感冒怎么办" target="_blank" >比熊犬感冒怎么办</a></li>
 </ul>
 </div><!--首页狗狗-->
 <!--dog_photo ed-->
 <br clear="all" />
 </div>
 <!--狗狗 ed-->
 <!-- ********************************************** -->
 <div class="space11"></div>
 <!-- ********************************************** -->
 <!--广告横幅 op-->
 <div class="right_banner"><a href="http://www.ttpet.com/zixun/34/n-74434.html" target="_blank">
<img src="http://img.ttpet.com/b_album/ttpp/zixun_banner.gif" alt="猫咪食物的营养搭配"/></a><!--首页广告横幅狗狗下面--></div>
 <!--广告横幅 ed-->
 <!-- ********************************************** -->
 <div class="space11"></div>
 <!-- ********************************************** -->
 <!--猫猫 op-->
 <div class="info_box">
 <!--根据父分类获得子分类-->
 <!--title4 op-->
 <div class="title4">
 <h5><img src="images/article_cat.gif" alt="猫猫" width="16" height="16" />猫猫</h5>
 <a href="http://www.ttpet.com/breed/breed-2.html" class="lv" target="_blank">猫猫品种大全</a>
 <span><a href="http://www.ttpet.com/zixun/17/category-catid-17.html" target="_blank">品种</a>/<a href="http://www.ttpet.com/zixun/18/category-catid-18.html" target="_blank">养护</a>/<a href="http://www.ttpet.com/zixun/19/category-catid-19.html" target="_blank">健康</a>/<a href="http://www.ttpet.com/zixun/48/category-catid-48.html" target="_blank">繁殖</a>/<a href="http://www.ttpet.com/zixun/20/category-catid-20.html" target="_blank">训练</a>/<a href="http://www.ttpet.com/zixun/49/category-catid-49.html" target="_blank">美容</a>/
 </span>
 </div>
 <!--title4 ed-->
 <!--cat op-->
 <div class="cat">
  <dl class="category">
 <dt><em>品种</em><span><a href="http://www.ttpet.com/zixun/17/category-catid-17.html" title="品种" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/66/n-84366.html" title="阿比西尼亚猫猫咪标准" target="_blank" >阿比西尼亚猫猫咪标准</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/65/n-84365.html" title="猫咪档案：阿比西尼亚猫" target="_blank" >猫咪档案：阿比西尼亚猫</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/64/n-84364.html" title="曼岛猫猫咪标准" target="_blank" >曼岛猫猫咪标准</a></dd>
  </dl>
  <dl class="category">
 <dt><em>养护</em><span><a href="http://www.ttpet.com/zixun/18/category-catid-18.html" title="养护" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/51/n-84351.html" title="小猫的猫粮要用水泡吗？" target="_blank" >小猫的猫粮要用水泡吗？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/50/n-84350.html" title="猫咪竖尾巴什么意思？为什么猫咪翘尾巴？" target="_blank" >猫咪竖尾巴什么意思？为什么猫咪翘尾巴？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/49/n-84349.html" title="猫咪眯眼睛什么意思？想表达什么？" target="_blank" >猫咪眯眼睛什么意思？想表达什么？</a></dd>
  </dl>
  <dl class="category">
 <dt><em>健康</em><span><a href="http://www.ttpet.com/zixun/19/category-catid-19.html" title="健康" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/31/n-84131.html" title="夏天热猫咪不吃饭怎么办？什么原因？" target="_blank" >夏天热猫咪不吃饭怎么办？什么原因？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/21/n-84121.html" title="【方法】怎么判断猫咪是否失明？" target="_blank" >【方法】怎么判断猫咪是否失明？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/85/n-84085.html" title="猫咪呼吸厉害声音很大怎么回事？" target="_blank" >猫咪呼吸厉害声音很大怎么回事？</a></dd>
  </dl>
  <dl class="category">
 <dt><em>繁殖</em><span><a href="http://www.ttpet.com/zixun/48/category-catid-48.html" title="繁殖" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/56/n-83856.html" title="猫下崽前要准备什么东西？" target="_blank" >猫下崽前要准备什么东西？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/55/n-83855.html" title="告诉你猫下崽了要注意什么问题" target="_blank" >告诉你猫下崽了要注意什么问题</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/54/n-83854.html" title="【疑问】怀孕的猫咪能吃海鱼吗？" target="_blank" >【疑问】怀孕的猫咪能吃海鱼吗？</a></dd>
  </dl>
  <dl class="category">
 <dt><em>训练</em><span><a href="http://www.ttpet.com/zixun/20/category-catid-20.html" title="训练" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/90/n-84290.html" title="猫咪老是抓人怎么办？什么原因？如何纠正？" target="_blank" >猫咪老是抓人怎么办？什么原因？如何纠正？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/89/n-84289.html" title="猫咪为什么怕生人？猫咪怕生人怎么办？" target="_blank" >猫咪为什么怕生人？猫咪怕生人怎么办？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/30/n-84130.html" title="惩罚猫咪有什么方法？" target="_blank" >惩罚猫咪有什么方法？</a></dd>
  </dl>
  <dl class="category">
 <dt><em>美容</em><span><a href="http://www.ttpet.com/zixun/49/category-catid-49.html" title="美容" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/70/n-84070.html" title="怎么改善猫咪毛质？有什么方法？" target="_blank" >怎么改善猫咪毛质？有什么方法？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/69/n-84069.html" title="猫咪为什么爱洗脸？什么原因？" target="_blank" >猫咪为什么爱洗脸？什么原因？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/68/n-84068.html" title="猫咪足部护理的方法" target="_blank" >猫咪足部护理的方法</a></dd>
  </dl>
   <div class="cat_photo">
  <a href="http://www.ttpet.com/zixun/26/n-78026.html" target="_blank"><img src="http://img.ttpet.com/edit/2009/7/3/1250652184965056368.gif?V_8d2" alt="猫咪不听话怎么办" width="156" height="186" /></a>
  <a href="http://www.ttpet.com/zixun/10/n-77910.html" target="_blank"><img src="http://img.ttpet.com/edit/2009/7/3/1284001398685129665.gif?V_0ad" alt="改正猫咪挑食行为" width="156" height="186" /></a>
  <a href="http://www.ttpet.com/zixun/82/n-77682.html" target="_blank"><img src="http://img.ttpet.com/edit/2009/7/3/1250652447924055053.gif?V_e53" alt="如何才能提高猫咪胆量" width="156" height="186" /></a>
  <a href="http://www.ttpet.com/zixun/15/n-77315.html" target="_blank"><img src="http://img.ttpet.com/edit/2009/7/3/1250652447827275639.gif?V_0be" alt="带猫咪长途旅行注意事项" width="156" height="186" /></a>
  </div><!--首页猫猫-->
 </div>
 <!--cat ed-->
 </div>
 <!--猫猫 ed-->
 <!-- ********************************************** -->
 <div class="space11"></div>
 <!-- ********************************************** -->
 <!--小宠 op-->
 <div class="info_box">
 <!--根据父分类获得子分类-->
 <!--title4 op-->
 <div class="title4">
 <h5><img src="images/article_rabbit.gif" alt="小宠" width="16" height="16" />小宠</h5>
 <span><a href="http://www.ttpet.com/zixun/26/category-catid-26.html" target="_blank">兔兔</a>/<a href="http://www.ttpet.com/zixun/27/category-catid-27.html" target="_blank">鼠鼠</a>/<a href="http://www.ttpet.com/zixun/28/category-catid-28.html" target="_blank">爬行</a>/<a href="http://www.ttpet.com/zixun/29/category-catid-29.html" target="_blank">昆虫</a>/<a href="http://www.ttpet.com/zixun/30/category-catid-30.html" target="_blank">其他</a> </span>
 </div>
 <!--title4 ed-->
 <!--cat op-->
 <div class="cat">
  <dl class="category">
 <dt><em>兔兔</em><span><a href="http://www.ttpet.com/zixun/26/category-catid-26.html" title="兔兔" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/33/n-84033.html" title="兔子便便怎么反应身体健康状况？" target="_blank" >兔子便便怎么反应身体健康状况？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/32/n-84032.html" title="兔子怎样的粪便是正常的？" target="_blank" >兔子怎样的粪便是正常的？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/18/n-84018.html" title="兔子发情期要注意什么？" target="_blank" >兔子发情期要注意什么？</a></dd>
  </dl>
  <dl class="category">
 <dt><em>鼠鼠</em><span><a href="http://www.ttpet.com/zixun/27/category-catid-27.html" title="鼠鼠" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/58/n-84258.html" title="【方法】怎么自制仓鼠饮水器？" target="_blank" >【方法】怎么自制仓鼠饮水器？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/38/n-84238.html" title="仓鼠不喝水怎么办？仓鼠为什么不喝水？" target="_blank" >仓鼠不喝水怎么办？仓鼠为什么不喝水？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/37/n-84237.html" title="仓鼠睡觉发抖怎么回事？什么原因？" target="_blank" >仓鼠睡觉发抖怎么回事？什么原因？</a></dd>
  </dl>
  <dl class="category">
 <dt><em>爬行</em><span><a href="http://www.ttpet.com/zixun/28/category-catid-28.html" title="爬行" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/59/n-84259.html" title="巴西龟吃生肉好吗？" target="_blank" >巴西龟吃生肉好吗？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/34/n-84234.html" title="巴西龟多大能下蛋？巴西龟什么时候下蛋？" target="_blank" >巴西龟多大能下蛋？巴西龟什么时候下蛋？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/33/n-84233.html" title="巴西龟能长多大？平均体重多少？" target="_blank" >巴西龟能长多大？平均体重多少？</a></dd>
  </dl>
  <dl class="category">
 <dt><em>昆虫</em><span><a href="http://www.ttpet.com/zixun/29/category-catid-29.html" title="昆虫" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/79/n-79279.html" title="怎么养蟋蟀，蟋蟀的养法介绍" target="_blank" >怎么养蟋蟀，蟋蟀的养法介绍</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/78/n-79278.html" title="蟋蟀吃什么东西好，蟋蟀喜欢吃什么？" target="_blank" >蟋蟀吃什么东西好，蟋蟀喜欢吃什么？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/56/n-79156.html" title="幼蝎成活率怎么提高，有什么方法？" target="_blank" >幼蝎成活率怎么提高，有什么方法？</a></dd>
  </dl>
  <dl class="category">
 <dt><em>其他</em><span><a href="http://www.ttpet.com/zixun/30/category-catid-30.html" title="其他" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/04/n-79404.html" title="独角仙吃什么食物？" target="_blank" >独角仙吃什么食物？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/62/n-77762.html" title="羊驼养殖方法和注意问题" target="_blank" >羊驼养殖方法和注意问题</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/60/n-77760.html" title="羊驼有哪些生活习性" target="_blank" >羊驼有哪些生活习性</a></dd>
  </dl>
  <div class="smallpet">
  <a href="http://www.ttpet.com/zixun/53/n-76253.html" target="_blank"><img src="http://img.ttpet.com/edit/2009/7/3/1250654557346627754.gif?V_efd" alt="防止兔子夏天中暑" width="156" height="186" /></a>
 </div><!--首页小宠-->
 </div>
 <!--cat ed-->
 </div>
 <!--小宠 ed-->
 <!-- ********************************************** -->
 <div class="space11"></div>
 <!-- ********************************************** -->
 <!--水族 op-->
 <div class="info_box">
 <!--根据父分类获得子分类-->
 <!--title4 op-->
 <div class="title4">
 <h5><img src="images/article_fish.gif" alt="水族" width="16" height="16" />水族</h5>
 <span><a href="http://www.ttpet.com/zixun/31/category-catid-31.html" target="_blank">品种</a>/<a href="http://www.ttpet.com/zixun/32/category-catid-32.html" target="_blank">饲养</a>/<a href="http://www.ttpet.com/zixun/46/category-catid-46.html" target="_blank">水草</a>/<a href="http://www.ttpet.com/zixun/45/category-catid-45.html" target="_blank">置景</a>/<a href="http://www.ttpet.com/zixun/36/category-catid-36.html" target="_blank">鱼病</a>/<a href="http://www.ttpet.com/zixun/33/category-catid-33.html" target="_blank">器材</a> </span>
 </div>
 <!--title4 ed-->
 <!--cat op-->
 <div class="cat">
  <dl class="category">
 <dt><em>品种</em><span><a href="http://www.ttpet.com/zixun/31/category-catid-31.html" title="品种" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/91/n-84191.html" title="孔雀鱼价格多少？孔雀鱼一只多少钱？" target="_blank" >孔雀鱼价格多少？孔雀鱼一只多少钱？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/90/n-84190.html" title="孔雀鱼和鹦鹉鱼能混养吗？" target="_blank" >孔雀鱼和鹦鹉鱼能混养吗？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/71/n-84171.html" title="孔雀鱼和红绿灯能混养吗?" target="_blank" >孔雀鱼和红绿灯能混养吗?</a></dd>
  </dl>
  <dl class="category">
 <dt><em>饲养</em><span><a href="http://www.ttpet.com/zixun/32/category-catid-32.html" title="饲养" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/89/n-84189.html" title="孔雀鱼鱼缸要养水草吗？" target="_blank" >孔雀鱼鱼缸要养水草吗？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/88/n-84188.html" title="【方法步骤】如何给孔雀鱼换水？" target="_blank" >【方法步骤】如何给孔雀鱼换水？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/87/n-84187.html" title="孔雀幼鱼吃什么长得快？" target="_blank" >孔雀幼鱼吃什么长得快？</a></dd>
  </dl>
  <dl class="category">
 <dt><em>水草</em><span><a href="http://www.ttpet.com/zixun/46/category-catid-46.html" title="水草" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/95/n-83895.html" title="【方法】水草如何绑在沉木上面？" target="_blank" >【方法】水草如何绑在沉木上面？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/84/n-83384.html" title="【方法】鱼缸绿藻怎么去除？" target="_blank" >【方法】鱼缸绿藻怎么去除？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/30/n-83130.html" title="鱼缸有蓝绿藻怎么办？如何清除治理？" target="_blank" >鱼缸有蓝绿藻怎么办？如何清除治理？</a></dd>
  </dl>
  <dl class="category">
 <dt><em>置景</em><span><a href="http://www.ttpet.com/zixun/45/category-catid-45.html" title="置景" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/85/n-83385.html" title="【技巧】沉木和水草如何搭配？" target="_blank" >【技巧】沉木和水草如何搭配？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/25/n-78425.html" title="水族造景中岩石的种类" target="_blank" >水族造景中岩石的种类</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/24/n-78424.html" title="珊瑚变白的原因原来是这样的" target="_blank" >珊瑚变白的原因原来是这样的</a></dd>
  </dl>
  <dl class="category">
 <dt><em>鱼病</em><span><a href="http://www.ttpet.com/zixun/36/category-catid-36.html" title="鱼病" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/40/n-84240.html" title="孔雀幼鱼存活率怎么提高？" target="_blank" >孔雀幼鱼存活率怎么提高？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/39/n-84239.html" title="孔雀鱼尾巴掉色怎么回事？" target="_blank" >孔雀鱼尾巴掉色怎么回事？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/07/n-84207.html" title="孔雀鱼肚子胀怎么回事？什么原因？" target="_blank" >孔雀鱼肚子胀怎么回事？什么原因？</a></dd>
  </dl>
  <dl class="category">
 <dt><em>器材</em><span><a href="http://www.ttpet.com/zixun/33/category-catid-33.html" title="器材" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/33/n-84133.html" title="金鱼放家里哪里合适？" target="_blank" >金鱼放家里哪里合适？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/28/n-84128.html" title="【参考】养金鱼用什么灯比较好？" target="_blank" >【参考】养金鱼用什么灯比较好？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/20/n-84120.html" title="养金鱼要放底砂吗？养金鱼用什么底砂好？" target="_blank" >养金鱼要放底砂吗？养金鱼用什么底砂好？</a></dd>
  </dl>
  </div>
 <!--cat ed-->
 </div>
 <!--水族 ed-->
 <!-- ********************************************** -->
 <div class="space11"></div>
 <!-- ********************************************** -->
 <!--花鸟 ed-->
 <div class="info_box">
 <!--根据父分类获得子分类-->
 <!--title5 op-->
 <div class="title4">
 <h5><img src="images/article_bird.gif" alt="花鸟" width="16" height="16" />花鸟</h5>
 <span><a href="http://www.ttpet.com/zixun/37/category-catid-37.html" target="_blank" >鸟类</a>/<a href="http://www.ttpet.com/zixun/44/category-catid-44.html" target="_blank" >信鸽</a>/<a href="http://www.ttpet.com/zixun/38/category-catid-38.html" target="_blank" >花卉</a> </span>
 </div>
 <!--title5 ed-->
 <!--birds op-->
 <p class="birds">
 <a href="http://www.ttpet.com/zixun/42/n-74742.html" target="_blank" ><img src="http://img.ttpet.com/edit/2009/7/3/1250655250263893893.jpg?V_d5b" alt="花卉有哪些常见品种"/></a><a href="http://www.ttpet.com/zixun/42/n-74742.html" title="花卉有哪些常见品种" target="_blank" >花卉有哪些常见品种</a>
 </p>
<!--首页花鸟-->
 <!--birds ed-->
<div class="birds_r">
  <dl>
 <dt><em>鸟类</em><span><a href="http://www.ttpet.com/zixun/37/category-catid-37.html" title="鸟类" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/17/n-82017.html" title="虎皮鹦鹉繁殖期要注意什么？" target="_blank" >虎皮鹦鹉繁殖期要注意什么？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/16/n-82016.html" title="虎皮鹦鹉鼻子流血怎么办？" target="_blank" >虎皮鹦鹉鼻子流血怎么办？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/75/n-81975.html" title="虎皮鹦鹉眼圈发红怎么回事？什么原因？" target="_blank" >虎皮鹦鹉眼圈发红怎么回事？什么原因？</a></dd>
  </dl>
  <dl>
 <dt><em>信鸽</em><span><a href="http://www.ttpet.com/zixun/44/category-catid-44.html" title="信鸽" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/19/n-82019.html" title="鸽子中毒表现？如何急救？" target="_blank" >鸽子中毒表现？如何急救？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/18/n-82018.html" title="【方法】鸽子饲料怎么配制？" target="_blank" >【方法】鸽子饲料怎么配制？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/13/n-82013.html" title="信鸽得了鸽痘怎么办？如何治疗？" target="_blank" >信鸽得了鸽痘怎么办？如何治疗？</a></dd>
  </dl>
  <dl>
 <dt><em>花卉</em><span><a href="http://www.ttpet.com/zixun/38/category-catid-38.html" title="花卉" target="_blank" >更多</a></span></dt>
 <!--首页指定分类下的三条资讯信息-->
  <dd>· <a href="http://www.ttpet.com/zixun/15/n-82015.html" title="桃花与梅花的区别？如何辨认？" target="_blank" >桃花与梅花的区别？如何辨认？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/14/n-82014.html" title="腊梅和梅花的区别？如何辨认？" target="_blank" >腊梅和梅花的区别？如何辨认？</a></dd>
  <dd>· <a href="http://www.ttpet.com/zixun/57/n-81957.html" title="【康乃馨养殖方法】康乃馨怎么养？" target="_blank" >【康乃馨养殖方法】康乃馨怎么养？</a></dd>
  </dl>
 </div>
 <br clear="all" />
 </div>
 <!--花鸟 ed-->
 </div>
 <!--right ed-->
 </div>
 <!--body ed-->

</body>
</html>