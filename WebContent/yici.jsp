<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>林果果</title>
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
	top: 36px;
	width: 15%;
	height: 300px;
	left: 4%;
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
	top: -114px;
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
</style>


<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/md5.js"></script>
<script type="text/javascript">
var i;
var j="jjj";
j=<%=session.getAttribute("yonghu11")%>; 
var url;
function myfunction() {
	 $.post("urlServlet",{},
			 function(date){
		 url=date;
	 });
	 $.post("MangguoServlet",{},
		    function(date){
		        	for(var i=0;i<12/* date.languages.length */;i++){
		        		var m=i+1;
		        		$("#a"+m).prop("href","OrderServlet?mangoname="+date.languages[i].id);
		        		$("#img"+m).prop("src",url+date.languages[i].username+"/"+date.languages[i].manguoname+"/file1.jpg");
		        		$("#ziguo"+m).prop("href","OrderServlet?mangoname="+date.languages[i].id);
		        		//var inp=document.getElementById("a"+i).setAttribute("href","OrderServlet?mangoname="+date.languages[i].id);
		        		//var inp1=document.getElementById("img"+i); 
		        		//inp1.src="picture/"+date.languages[i].username+"/"+date.languages[i].manguoname+"/file1.jpg";
		        		//var inp2=document.getElementById("ziguo"+i); 
		        		//inp2.href="OrderServlet?mangoname="+date.languages[i].id;
		        		$("#ziguo"+m).html(date.languages[i].manguoname);
		        		$("#price"+m).html(date.languages[i].price);
	        			$("#sales"+m).html(date.languages[i].number);
		        	}
		        	for(var i=12;i<24/* date.languages.length */;i++){
		        		var m=i-11;
		        		$("#an"+m).prop("href","OrderServlet?mangoname="+date.languages[i].id);
		        		$("#imgn"+m).prop("src",url+date.languages[i].username+"/"+date.languages[i].manguoname+"/file1.jpg");
		        		$("#ziguon"+m).prop("href","OrderServlet?mangoname="+date.languages[i].id);
		        		//var inp=document.getElementById("a"+i).setAttribute("href","OrderServlet?mangoname="+date.languages[i].id);
		        		//var inp1=document.getElementById("img"+i); 
		        		//inp1.src="picture/"+date.languages[i].username+"/"+date.languages[i].manguoname+"/file1.jpg";
		        		//var inp2=document.getElementById("ziguo"+i); 
		        		//inp2.href="OrderServlet?mangoname="+date.languages[i].id;
		        		$("#ziguon"+m).html(date.languages[i].manguoname);
		        		$("#pricen"+m).html(date.languages[i].price);
	        			$("#salesn"+m).html(date.languages[i].number);
		        	}
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
	var searchVelue=$("#sousuoID").val();
	 window.top.location.href="search.jsp?searchVelue="+searchVelue;
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
</script>
<body onload="myfunction()">
	<div class="top" id="divm">
		<a id="wuesesname" href="/LGG/yici11.jsp" class="bzitiyanse"
			style="display: none;">亲，请登录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> <span
			id="wuesesname1" class="bzitiyanse zitiyanse1" style="display: none;">Hello!<a
			class="zitiyanse1" id="newusername1" onmouseover=fun5(
			"newusername1") onmouseout=fun51(
			"newusername1") href="/LGG/HomeLGG.jsp" target="_blank"><%=session.getAttribute("yonghux")%>
				&nbsp;&nbsp;&nbsp;</a></span> <a id="zhucu" class="zitiyanse ding"
			href="/LGG/Registered.jsp" onmouseover=fun3(
			"zhucu") onmouseout=fun31("zhucu")>免费注册&nbsp;&nbsp;&nbsp;&nbsp;</a><a
			class="zitiyanse ding">|&nbsp;&nbsp;&nbsp;&nbsp;</a> <a id="dingdan"
			class="zitiyanse ding" target="_blank" href="/LGG/MyOrder.jsp"
			onmouseover=fun3( "dingdan") onmouseout=fun31("dingdan")>我的订单&nbsp;&nbsp;&nbsp;&nbsp;</a><a
			class="zitiyanse ding">|&nbsp;&nbsp;&nbsp;&nbsp;</a> <a id="wode"
			class="zitiyanse ding" target="_blank" href="/LGG/HomeLGG.jsp"
			onmouseover=fun3( "wode") onmouseout=fun31("wode")>我的林果果</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
			class="zitiyanse ding">|&nbsp;&nbsp;&nbsp;&nbsp;</a> <a id="nonghu"
			class="zitiyanse ding" target="_blank" href="/PLGG/FarmersCenter.jsp"
			onmouseover=fun3( "nonghu") onmouseout=fun31("nonghu")>卖家中心</a>

	</div>
	<div class="top1">
		<ziti class="ziti1">林果果</ziti>
		<br>
		<ziti class="ziti2">L&nbsp;&nbsp;G&nbsp;&nbsp;G</ziti>
		<div>
			<div class="sousuokuang">

				<input class="sousuokuang1" name="shousuo" id="sousuoID" type="text">
				<input class="sousuo" type="button" value="搜索" onclick="search()">

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
	<div class="body1">
		<div class="toubu1">
			<span class="toubu2">G</span><span class="toubu3">热卖产品</span>
		</div>
		<br>
		<div class="title-img" id="div1">
			<a id="a1" href="" target="_blank" onmouseover=fun1(
				"div1") onmouseout=fun11("div1") > <img id="img1" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguo1" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguo1") onmouseout=fun21("ziguo1") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="price1"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="sales1"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="div2">
			<a id="a2" href="" target="_blank" onmouseover=fun1(
				"div2") onmouseout=fun11("div2") > <img id=img2 class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguo2" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguo2") onmouseout=fun21("ziguo2") )> </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="price2"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="sales2"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="div3">
			<a id="a3" href="" target="_blank" onmouseover=fun1(
				"div3") onmouseout=fun11("div3") > <img id="img3" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguo3" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguo3") onmouseout=fun21("ziguo3") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="price3"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="sales3"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="div4">
			<a id="a4" href="" target="_blank" onmouseover=fun1(
				"div4") onmouseout=fun11("div4")> <img id="img4" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguo4" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguo4") onmouseout=fun21("ziguo4") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="price4"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="sales4"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="div5">
			<a id="a5" href="" target="_blank" onmouseover=fun1(
				"div5") onmouseout=fun11("div5") > <img id="img5" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguo5" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguo5") onmouseout=fun21("ziguo5") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="price5"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="sales5"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="div6">
			<a id="a6" href="" target="_blank" onmouseover=fun1(
				"div6") onmouseout=fun11("div6") > <img id="img6" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguo6" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguo6") onmouseout=fun21("ziguo6") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="price6"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="sales6"></p4>
			<p6>件</p6>
		</div>

		<br>

		<div class="title-img" id="div7">
			<a id="a7" href="" target="_blank" onmouseover=fun1(
				"div7") onmouseout=fun11("div7") > <img id="img7" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguo7" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguo7") onmouseout=fun21("ziguo7") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="price7"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="sales7"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="div8">
			<a id="a8" href="" target="_blank" onmouseover=fun1(
				"div8") onmouseout=fun11("div8") > <img id="img8" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguo8" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguo8") onmouseout=fun21("ziguo8") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="price8"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="sales8"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="div9">
			<a id="a9" href="" target="_blank" onmouseover=fun1(
				"div9") onmouseout=fun11("div9") > <img id="img9" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguo9" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguo9") onmouseout=fun21("ziguo9") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="price9"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="sales9"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="div10">
			<a id="a10" href="" target="_blank" onmouseover=fun1(
				"div10") onmouseout=fun11("div10") > <img id="img10" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguo10" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguo10") onmouseout=fun21("ziguo10") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="price10"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="sales10"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="div11">
			<a id="a11" href="" target="_blank" onmouseover=fun1(
				"div11") onmouseout=fun11("div11") > <img id="img11" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguo11" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguo11") onmouseout=fun21("ziguo11") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="price11"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="sales11"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="div12">
			<a id="a12" href="" target="_blank" onmouseover=fun1(
				"div12") onmouseout=fun11("div12") > <img id="img12" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguo12" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguo12") onmouseout=fun21("ziguo12") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="price12"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="sales12"></p4>
			<p6>件</p6>
		</div>

		<br> <br> <br>

		<div class="toubu1">
			<span class="toubu2">G</span><span class="toubu3">每日推荐</span>
		</div>
		<div class="title-img" id="divn1">
			<a id="an1" href="" target="_blank" onmouseover=fun1(
				"divn1") onmouseout=fun11("divn1") > <img id="imgn1" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguon1" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguon1") onmouseout=fun21("ziguon1") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="pricen1"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="salesn1"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="divn2">
			<a id="an2" href="" target="_blank" onmouseover=fun1(
				"divn2") onmouseout=fun11("divn2") > <img id=imgn2 class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguon2" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguon2") onmouseout=fun21("ziguon2") )> </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="pricen2"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="salesn2"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="divn3">
			<a id="an3" href="" target="_blank" onmouseover=fun1(
				"divn3") onmouseout=fun11("divn3") > <img id="imgn3" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguon3" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguon3") onmouseout=fun21("ziguon3") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="pricen3"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="salesn3"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="divn4">
			<a id="an4" href="" target="_blank" onmouseover=fun1(
				"divn4") onmouseout=fun11("divn4")> <img id="imgn4" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguon4" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguon4") onmouseout=fun21("ziguon4") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="pricen4"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="salesn4"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="divn5">
			<a id="an5" href="" target="_blank" onmouseover=fun1(
				"divn5") onmouseout=fun11("divn5") > <img id="imgn5" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguon5" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguon5") onmouseout=fun21("ziguon5") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="pricen5"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="salesn5"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="divn6">
			<a id="an6" href="" target="_blank" onmouseover=fun1(
				"divn6") onmouseout=fun11("divn6") > <img id="imgn6" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguon6" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguon6") onmouseout=fun21("ziguon6") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="pricen6"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="salesn6"></p4>
			<p6>件</p6>
		</div>

		<br>

		<div class="title-img" id="divn7">
			<a id="an7" href="" target="_blank" onmouseover=fun1(
				"divn7") onmouseout=fun11("divn7") > <img id="imgn7" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguon7" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguon7") onmouseout=fun21("ziguon7") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="pricen7"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="salesn7"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="divn8">
			<a id="an8" href="" target="_blank" onmouseover=fun1(
				"divn8") onmouseout=fun11("divn8") > <img id="imgn8" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguon8" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguon8") onmouseout=fun21("ziguon8") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="pricen8"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="salesn8"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="divn9">
			<a id="an9" href="" target="_blank" onmouseover=fun1(
				"divn9") onmouseout=fun11("divn9") > <img id="imgn9" class="img"
				alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguon9" class="p8" href="" target="_blank" onmouseover=fun2(
					"ziguon9") onmouseout=fun21("ziguon9") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="pricen9"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="salesn9"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="divn10">
			<a id="an10" href="" target="_blank" onmouseover=fun1(
				"divn10") onmouseout=fun11("divn10") > <img id="imgn10"
				class="img" alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguon10" class="p8" href="" target="_blank"
					onmouseover=fun2( "ziguon10") onmouseout=fun21("ziguon10") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="pricen10"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="salesn10"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="divn11">
			<a id="an11" href="" target="_blank" onmouseover=fun1(
				"divn11") onmouseout=fun11("divn11") > <img id="imgn11"
				class="img" alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguon11" class="p8" href="" target="_blank"
					onmouseover=fun2( "ziguon11") onmouseout=fun21("ziguon11") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="pricen11"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="salesn11"></p4>
			<p6>件</p6>
		</div>

		<div class="title-img" id="divn12">
			<a id="an12" href="" target="_blank" onmouseover=fun1(
				"divn12") onmouseout=fun11("divn12") > <img id="imgn12"
				class="img" alt="" src="">
			</a> <br> <br>
			<div class="gao">
				<a id="ziguon12" class="p8" href="" target="_blank"
					onmouseover=fun2( "ziguon12") onmouseout=fun21("ziguon12") > </a>
			</div>
			<br>
			<p5>￥</p5>
			<p3 id="pricen12"></p3>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<p6>周销</p6>
			<p4 id="salesn12"></p4>
			<p6>件</p6>
		</div>

	</div>

	<div class="bottom">
		<img id="" class="img1" alt="" src="picture/icon.jpg">
	</div>
</body>
</html>