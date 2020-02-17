<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>林果果搜索</title>
<link href="picture/HeadorPtrait.png" rel="shortcut icon">
</head>
<style type="text/css">
.zitiyanse {
	position: relative;
	top: 12px;
	font-size: 14px;
	color: #FF0000;
}

.bzitiyanse {
	position: absolute;
	top: 20px;
	font-size: 14px;
	color: #FF0000;
	left: 444px;
}

.ding {
	position: relative;
	font-size: 12px;
	top: 10px;
	left: 588px;
	color: #888888;
}

.buhuanhang {
	top: -16px;
	left: 100px;
}

.zitiyanse1 {
	color: #008B00;
}

.body1 {
	background-color: #F8F8F8;
}

.title-img {
	position: relative;
	left: 4%;
	top: 36px;
	width: 15%;
	height: 300px;
	border-width: 1px;
	border-style: solid;
	border-color: #FFFFFF;
	background-color: #FFFFFF;
	border-radius: 2%;
	margin: 0px;
	text-align: center;
	overflow: hidden;
	display: inline-block;
}

.ntitle-img {
	
}

a {
	text-decoration: none;
	color: #000000;
}

p7 {
	color: #FF4500;
}

.p8 {
	color: #156545;
	font-size: 14px;
}

p1 {
	position: relative;
	left: -36px;
	font-size: 12px;
	color: #006400;
}

p2 {
	position: relative;
	right: -36px;
	font-size: 14px;
	color: #969696;
}

P3 {
	color: #FF4500;
	font-size: 22px;
	font-weight: bold;
}

p4 {
	position: relative;
	left: 0px;
	color: #969696;
	font-size: 15px;
}

p5 {
	color: #FF4500;
	font-size: 10px;
}

p6 {
	position: relative;
	left: 0px;
	color: #969696;
	font-size: 13px;
}

.top {
	width: 100%;
	height: 36px;
	background-color: #EDEDED;
	vertical-align: middle;
}

.top1 {
	background-color: #F5F5F5;
	width: 100%;
	height: 139px;
}

.top2 {
	width: 100%;
	height: 26px;
	background-color: #F54500;
}

.top3 {
	position: relative;
	height: 99%;
	top: -118px;
	left: 922px;
	width: 266px;
	background-color: #FFFFFF;
	text-align: center;
}

ziti {
	color: rgb(255, 0, 0);
	font-weight: bold;
	font-family: 华文新魏;
}

.ziti1 {
	position: relative;
	left: 96px;
	top: 12px;
	font-size: 46px;
}

.ziti2 {
	position: relative;
	left: 126px;
	top: 12px;
	font-size: 25px;
}

.ziti3 {
	position: relative;
	top: 6px;
	font-weight: bold;
	color: #FFFFFF;
}

.hh3 {
	position: relative;
	display: inline;
	left: 566px;
	top: 12px;
}

.img {
	position: relative;
	width: 80%;
	height: 65%;
	top: 16px;
}

.img1 {
	position: relative;
	width: 100%;
	height: 100%;
}

.img2 {
	position: relative;
	width: 100%;
	height: 100%;
	border-radius: 60px;
	-webkit-border-radius: 60px;
	-moz-border-radius: 60px;
}

.sousuokuang {
	position: relative;
	width: 466px;
	height: 36px;
	left: 322px;
	top: -44px;
	border-radius: 20px;
	background-color: #FFFFFF;
	border: solid 2px #F54500;
}

.sousuokuang1 {
	position: relative;
	width: 400px;
	height: 32px;
	left: 16px;
	top: 0px;
	border: solid 0px;
	outline: none;
}

.sousuo {
	position: relative;
	width: 66px;
	height: 40px;
	left: 410px;
	top: -36px;
	border-bottom-right-radius: 20px;
	border-top-right-radius: 20px;
	font-size: 18px;
	border: solid 0px #F54500;
	background-color: #F54500;
	color: #FFFFFF;
	outline: none;
}

.toubu1 {
	height: 46px;
}

.toubu2 {
	position: relative;
	top: 36px;
	left: 60px;
	font-size: 26px;
	font-weight: bold;
	color: #FF0000;
}

.toubu3 {
	position: relative;
	top: 36px;
	left: 69px;
	font-size: 22px;
	font-weight: bold;
	color: #F05400;
}

.gao {
	height: 20px;
}

.bottom {
	position: relative;
	width: 100%;
	height: 266px;
	top: 39px;
}

.HeadPortrait {
	position: relative;
	width: 60px;
	height: 60px;
	border-radius: 60px;
	-webkit-border-radius: 60px;
	-moz-border-radius: 60px;
	background-color: #ffffff;
	top: 6px;
	left: 99px;
	border: solid;
	border-width: 1px;
	border-color: #FFFFFF;
}

.nziti {
	font-size: 13px;
	color: #949494;
}

.zitiyanse9 {
	color: #949494;
}

.left1 {
	position: relative;
	top: 6px;
	left: 100px;
	float: left;
}

.left2 {
	position: relative;
	top: 6px;
}

.wu {
	background-color: #FFFFFF;
	height: 800px;
}

.wu1 {
	position: relative;
	font-size: 18px;
	left: 366px;
	top: 166px;
}

.wu2 {
	position: relative;
	font-size: 18px;
	color: #FF5632;
	left: 366px;
	top: 166px;
}
</style>


<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/md5.js"></script>
<script type="text/javascript">
var i;
var j="jjj";
j='<%=session.getAttribute("yonghu11")%>'; 
function myfunction() {
	var url;
	$.post("urlServlet",{},
			 function(date){
		 url=date;
	 });
	var html1="";
	var searchVelue = '<%=request.getParameter("searchVelue")%>';
	
	$.post("searchServlet",{searchVelue:searchVelue},
		    function(date){
		if(date.languages.length==0){
			html1="<div class='wu'>"+
			"<span class='wu1'>抱歉，没有找到与“</span><span class='wu2'>"+searchVelue+"</span><span class='wu1'>”相关的商品</span>"+
			"</div>";
		}else for(var i = 0;i < date.languages.length; i++){
			html1+="<div class='title-img' id='div"+i+"'>"+
			"<a id='a"+i+"'  href='OrderServlet?mangoname="+date.languages[i].id+"' target='_blank' onmouseover=fun1('div"+i+"') onmouseout=fun11('div"+i+"') >"+
			"<img id='img"+i+"' class='img' alt='' src='"+url+date.languages[i].username+"/"+date.languages[i].manguoname+"/file1.jpg' >"+
			"</a>"+
			"<br><br>"+
			"<div class='gao'>"+
			"<a id='ziguo"+i+"' class='p8' href='OrderServlet?mangoname="+date.languages[i].id+"'  target='_blank' onmouseover=fun2('ziguo"+i+"') onmouseout=fun21('ziguo"+i+"') >"+date.languages[i].manguoname+
			"</a>"+
			"</div><br>"+
			"<p5>￥</p5><p3 id='price"+i+"'>"+date.languages[i].price+"</p3>&nbsp;&nbsp;&nbsp;&nbsp;<p6>周销</p6><p4 id='sales"+i+"'>"+date.languages[i].number+"</p4><p6>件</p6>"+
			"</div>";
			if((i+1)%6==0&&i!=0) html1+="<br>";
		}
		$("#searchResult").html(html1);
 },"JSON");
	        $.post("PanduanServlet",{},
	        		function (date) {
						if (date=="1") {
							document.getElementById("wuesesname").style.display="block";
							document.getElementById("wuesesname1").style.display="none";
							document.getElementById("wuesesname3").style.display="block";
							document.getElementById("wuesesname4").style.display="none";
							document.getElementById("nmdenglu").style.display="block";
							document.getElementById("nmzhucu").style.display="block";
							document.getElementById("nmtuichu").style.display="none";
							$("#HeadPortrait1").prop("href","yici11.jsp");
						}else{
							document.getElementById("wuesesname").style.display="none";
							document.getElementById("wuesesname1").style.display="block";
							document.getElementById("wuesesname3").style.display="none";
							document.getElementById("wuesesname4").style.display="block";
							document.getElementById("nmdenglu").style.display="none";
							document.getElementById("nmzhucu").style.display="none";
							document.getElementById("nmtuichu").style.display="block";
							$("#HeadPortrait1").prop("href","/LGG/HomeLGG.jsp");
							$("#HeadPortrait1").prop("target","_blank");
						}
					}
	        		); 
	        		
}

function search(){
	var url;
	$.post("urlServlet",{},
			 function(date){
		 url=date;
	 });
	var html1="";
	var searchVelue="";;
	searchVelue=$("#sousuoID").val();
	$.post("searchServlet",{searchVelue:searchVelue},
		    function(date){
		if(date.languages.length==0){
			html1="<div class='wu'>"+
			"<span class='wu1'>抱歉，没有找到与“</span><span class='wu2'>"+searchVelue+"</span><span class='wu1'>”相关的商品</span>"+
			"</div>";
		}else for(var i = 0;i < date.languages.length; i++){
			html1+="<div class='title-img' id='div"+i+"'>"+
			"<a id='a"+i+"'  href='OrderServlet?mangoname="+date.languages[i].id+"' target='_blank' onmouseover=fun1('div"+i+"') onmouseout=fun11('div"+i+"') >"+
			"<img id='img"+i+"' class='img' alt='' src='"+url+date.languages[i].username+"/"+date.languages[i].manguoname+"/file1.jpg' >"+
			"</a>"+
			"<br><br>"+
			"<div class='gao'>"+
			"<a id='ziguo"+i+"' class='p8' href='OrderServlet?mangoname="+date.languages[i].id+"'  target='_blank' onmouseover=fun2('ziguo"+i+"') onmouseout=fun21('ziguo"+i+"') >"+date.languages[i].manguoname+
			"</a>"+
			"</div><br>"+
			"<p5>￥</p5><p3 id='price"+i+"'>"+date.languages[i].price+"</p3>&nbsp;&nbsp;&nbsp;&nbsp;<p6>周销</p6><p4 id='sales"+i+"'>"+date.languages[i].number+"</p4><p6>件</p6>"+
			"</div>";
			if((i+1)%6==0&&i!=0) html1+="<br>";
		}
		$("#searchResult").html(html1);
 },"JSON");
}
		function fun1(arg) {
			document.getElementById(arg).style.borderColor="#FF0000";
		}
		function fun11(arg) {
			document.getElementById(arg).style.borderColor="#FFFFFF";		
		}
		function fun2(arg) {
			document.getElementById(arg).style.color="#828282";
		}
		function fun21(arg) {
			document.getElementById(arg).style.color="#000000";
		}
		function fun3(arg) {
			document.getElementById(arg).style.color="#FF0000";
		}
		function fun31(arg) {
			document.getElementById(arg).style.color="#888888";
		}
		function fun4(arg) {
			document.getElementById(arg).style.border="solid 1px #828282";
		}
		function fun41(arg) {
			document.getElementById(arg).style.border="solid 1px #FFFFFF";
		}
		function fun5(arg) {
			document.getElementById(arg).style.color="#FF0000";
		}
		function fun51(arg) {
			document.getElementById(arg).style.color="#008B00";
		}
		window.onload=myfunction;
</script>
<!-- <script type="text/javascript">
$(function () {
   $(window).scroll(function () {
      //浏览器所能看到的页面的那部分的高度
      var winH = $(window).height();
      var scrH = $(window).scrollTop();//滚动的高度
      //获取整个页面的高度 htmH为设置的滚动到的高度位置
      var htmH = $(document).height();
           //可见高度+滚动高度 超出 设置的高度，触发方法
      if (winH + scrH == htmH) {
        //到达底部-100的高度，触发方法
        alert(1);
      }
   });
})
</script> -->
<body>
	<div class="top" id="divm">
		<a id="wuesesname" href="yici11.jsp" class="bzitiyanse"
			style="display: none;">亲，请登录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <span
			id="wuesesname1" class="bzitiyanse zitiyanse1" style="display: none;">Hello!<a
			class="zitiyanse1" id="newusername1" onmouseover=fun5(
			"newusername1") onmouseout=fun51(
			"newusername1") href="/LGG/HomeLGG.jsp" target="_blank"><%=session.getAttribute("yonghux")%>
				&nbsp;&nbsp;&nbsp;</a></span> <a id="zhucu" class="zitiyanse ding"
			href="Registered.jsp" onmouseover=fun3( "zhucu") onmouseout=fun31("zhucu")>免费注册&nbsp;&nbsp;&nbsp;&nbsp;</a><a
			class="zitiyanse ding">|&nbsp;&nbsp;&nbsp;&nbsp;</a> <a id="dingdan"
			class="zitiyanse ding" target="_blank" href="/LGG/MyOrder.jsp"
			onmouseover=fun3( "dingdan") onmouseout=fun31("dingdan")>我的订单&nbsp;&nbsp;&nbsp;&nbsp;</a><a
			class="zitiyanse ding">|&nbsp;&nbsp;&nbsp;&nbsp;</a> <a id="wode"
			class="zitiyanse ding" target="_blank" href="/LGG/HomeLGG.jsp"
			onmouseover=fun3( "wode") onmouseout=fun31("wode")>我的林果果</a>
	</div>
	<div class="top1">
		<ziti class="ziti1">林果果</ziti>
		<br>
		<ziti class="ziti2">L&nbsp;&nbsp;G&nbsp;&nbsp;G</ziti>
		<div>
			<div class="sousuokuang">
				<input class="sousuokuang1" name="shousuo"
					value="<%=request.getParameter("searchVelue")%>" id="sousuoID"
					type="text"> <input class="sousuo" type="submit" value="搜索"
					onclick="search()">
			</div>

		</div>
		<div class="top3">
			<div class="HeadPortrait" id="HeadPortrait" onmouseover=fun4(
				"HeadPortrait") onmouseout=fun41("HeadPortrait")>
				<a id="HeadPortrait1" href="/LGG/HomeLGG.jsp" target=""><img
					id="nimg" class="img2" alt="" src="picture/HeadPortrait.jpg"></a>
			</div>
			<br> <span id="wuesesname3" class="nziti left"
				style="display: none;">Hi!你好</span> <span id="wuesesname4"
				class="nziti left" style="display: block;">Hi,<a
				id="newusername2" target="_blank" class="zitiyanse9"
				onmouseover=fun3( "newusername2") onmouseout=fun31(
				"newusername2") href="/LGG/HomeLGG.jsp"><%=session.getAttribute("yonghu11")%></a></span>

			<a id="nmdenglu" style="display: block;" href="yici11.jsp"
				onmouseover=fun3( "nmdenglu") onmouseout=fun31(
				"nmdenglu") class="nziti left1">登录&nbsp;&nbsp;&nbsp;&nbsp;</a> <a
				id="nmzhucu" style="display: block;" href="Registered.jsp"
				onmouseover=fun3( "nmzhucu") onmouseout=fun31(
				"nmzhucu") class="nziti left1">注册</a> <a id="nmtuichu"
				style="display: none;" href="exitServlet" onmouseover=fun3(
				"nmtuichu") onmouseout=fun31( "nmtuichu") class="nziti left2">退出</a>
		</div>
	</div>

	<div class="top2"></div>
	<div id="searchResult" class="body1"></div>

	<div class="bottom">
		<img id="" class="img1" alt="" src="picture/icon.jpg">
	</div>
</body>
</html>