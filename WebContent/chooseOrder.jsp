<%@page import="jiang.Lookbiggestorminimum"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>林果果</title>
<link href="picture/HeadorPtrait.png" rel="shortcut icon">
</head>
<style>
.zitiyanse {
	position: absolute;
	top: 18px;
	font-size: 14px;
	color: #FF0000;
	left: 666px;
	text-decoration: none;
}

.k {
	position: relative;
	width: 100%;
	height: 100%;
	left: 0px;
	top: 0px;
	border-width: 1px;
	border-style: solid;
	border-radius: 2%;
	margin: 0px;
	text-align: center;
	overflow: hidden;
	display: inline-block;
}

.zitiyanse1 {
	color: #008B00;
}

.top {
	width: 100%;
	height: 36px;
	background-color: #F5F5F5;
	vertical-align: middle;
}

.top1 {
	width: 100%;
	height: 50px;
}

ziti {
	color: rgb(255, 0, 0);
	font-weight: bold;
	font-family: 华文新魏;
}

.ziti1 {
	position: relative;
	left: 96px;
	top: 10px;
	font-size: 32px;
}

.ziti2 {
	position: relative;
	left: 116px;
	top: 10px;
	font-size: 18px;
}

.ziti3 {
	position: relative;
	top: -35%;
	font-weight: bold;
	font-size: 30px;
	color: #B5B5B5;
}

.ziti4 {
	position: relative;
	top: 2px;
	font-size: 18px;
	color: #696969;
}

.ziti5 {
	position: relative;
	top: -25%;
	font-weight: bold;
	font-size: 26px;
}

.top2 {
	width: 100%;
	height: 12px;
	background-color: #FFB90F;
}

.title-img {
	position: relative;
	top: 12px;
	left: 10%;
	width: 80%;
	height: 600px;
	border-width: 1px;
	border-style: solid;
	border-color: #CDC5BF;
	margin: 0px;
	overflow: hidden;
	display: inline-block;
}

.title-img1 {
	position: relative;
	left: 3%;
	top: 3%;
	width: 100%;
	height: 399px;
	border-width: 1px;
	border-style: solid;
	border-color: #CDC5BF;
	display: inline-block;
}

.title-img2 {
	position: relative;
	width: 15%;
	left: 5%;
	height: 100px;
	border-width: 1px;
	border-style: solid;
	border-color: #CDC5BF;
	display: inline-block;
}

.title-img3 {
	position: relative;
	text-align: left;
	height: 499px;
	border-width: 1px;
	border-style: solid;
	border-color: #FFFFFF;
	display: inline-block;
}

.title-imgm {
	position: relative;
	width: 100%;
	height: 55px;
	border-width: 1px;
	border-style: solid;
	border-color: #FFCCFF;
	background-color: #FFCCFF;
}

.title-img4 {
	position: relative;
	width: 100%;
	height: 55px;
	border-width: 1px;
	border-style: solid;
	border-color: #FFCCFF;
	background-color: #FFCCFF;
}

.title-img5 {
	height: 90px;
	border-width: 1px;
	border-style: solid;
	border-color: #FFFFFF;
	background-color: #FFFFFF;
}

.title-img6 {
	position: relative;
	width: 30%;
	height: 23px;
	border-width: 1px;
	border-style: solid;
	border-color: #CDC5BF;
	display: inline-block;
	top: 6%;
	left: 10%;
	text-align: center;
}

.title-img61 {
	width: 20%;
	height: 24px;
	top: 12px;
	left: 39px;
	cursor: pointer;
}

.title-img62 {
	width: 8%;
	height: 26px;
	top: 42px;
	background-color: #EEE9E9;
	cursor: not-allowed;
	left: 44px;
}

.title-img63 {
	width: 16%;
	height: 26px;
	top: 29px;
	left: 38px;
	border-left-style: none;
	border-right-style: none;
}

.title-img64 {
	width: 8%;
	height: 26px;
	top: 38px;
	left: 33px;
	background-color: #EEE9E9;
	cursor: pointer;
}

.title-img66 {
	cursor: pointer;
	left: 39px;
}

.Thefont {
	position: relative;
	font-size: 14px;
	color: #696969;
	left: 4%;
	top: 26%;
}

.Thefont1 {
	font-size: 20px;
	font-weight: bold;
	font-family: 黑体;
}

.Thefont2 {
	position: relative;
	font-size: 26px;
	color: #FF0000;
	top: 30%;
	left: 10%;
}

.Thefont3 {
	top: 7%;
}

.Thefont31 {
	top: 18px;
}

.Thefont32 {
	top: 32px;
}

.Thefont33 {
	left: 36px;
	top: 32px;
}

.Thefont4 {
	position: relative;
	font-size: 12px;
	font-weight: bold;
	top: 3px;
}

.Thefont5 {
	top: 10%;
	left: 72px;
	cursor: pointer;
}

.Thefont6 {
	top: 13%;
}

.Thefont7 {
	position: relative;
	font-size: 14px;
	color: #FF0000;
	top: 66px;
	left: 77px;
	font-weight: bold;
}

.tijiao {
	position: relative;
	color: #FFFFFF;
	top: 65px;
	left: 73px;
	font-size: 16px;
	border: solid;
	border-width: 1px;
	border-color: rgb(255, 80, 0);
	background-color: rgb(255, 100, 0);
	width: 40%;
	height: 10%;
}

.img1 {
	position: relative;
	width: 100%;
	height: 100%;
}

.bottom {
	position: relative;
	width: 100%;
	height: 266px;
	top: 39px;
}

.shangjia {
	position: relative;
	text-decoration: none;
	font-size: 16px;
	font-weight: bold;
	color: #363636;
}

.biaozhi {
	position: relative;
	border: 1px solid #006400;
	font-size: 12px;
	font-weight: bold;
	color: #CD2626;
	background-color: #006400;
}

.shangjiann {
	position: relative;
	top: -30px;
	left: 233px;
	height: 166px;
	width: 266px;
}

.zuo {
	position: relative;
	height: 399px;
	width: 50%;
	float: left;
}

.xia {
	position: relative;
	heigh: 199px;
	width: 50%;
	text-align: center;
	float: left;
}

.you {
	position: relative;
	heigh: 599px;
	width: 45%;
	left: 53%;
	top: -380px;
}

.loo {
	font-size: 12px;
	color: #575757;
}
</style>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/md5.js"></script>
<script type="text/javascript" src="js/video.min.js"></script>
<script type="text/javascript">
var myPlayer = videojs('pic6');
videojs("pic6").ready(function() {
	var myPlayer = this;
	myPlayer.play();
});
var bbb;
var guige=0;
var daxiao=0;
$.post("PanduanServlet",{},
		function (date) {
			if (date=="1") {
				bbb=1;
				document.getElementById("wuesesname").style.display="block";
				document.getElementById("wuesesname1").style.display="none";
			}else{
				bbb=2;
				document.getElementById("wuesesname").style.display="none";
				document.getElementById("wuesesname1").style.display="block";
			}
		}
		)

function fun1(arg) {
	document.getElementById(arg).style.borderColor="#FF0000";
}
function fun11(arg) {
	document.getElementById(arg).style.borderColor="#CDC5BF";		
}
function func() {
	document.getElementById("tijiao").style.backgroundColor="#FF0000";
}
function func1() {
	document.getElementById("tijiao").style.backgroundColor="rgb(255,100,0)";		
}

function jump(arg) {
	if(arg<6){
	var kk='<%=session.getAttribute("username")%>'+"/"+'<%=request.getAttribute("manguo")%>'+"/"+"file";
	var mm="http://www.linguoguo.com.cn:8080/farmers_picture/"+kk+arg+".jpg";
	 var html1 = document.getElementById("video");
	 html1.innerHTML="<img id='img1' alt='' src='"+mm+"' width='100%' height='100%' >";
	}
	if(arg==6){
		var kk='<%=session.getAttribute("username")%>'+"/"+'<%=request.getAttribute("manguo")%>'+"/"+"file";
		var mm="http://www.linguoguo.com.cn:8080/farmers_picture/"+kk+arg+".mp4";
		 var html1 = document.getElementById("video");
		 html1.innerHTML="<video id='pic6' class='k' data-html5-video autoplay preload='metadata' controls preload='auto' data-setup='{}' ><source src='"+mm+"' type='video/mp4'/></video>";
	}
}
function add() {
	var b=document.getElementById("number11").innerText;
	$.get("JiaServlet",{number:b},
			function(date) {
		         $("#number11").html(date);
			}
			)
	document.getElementById("jian").style.cursor="pointer";
	document.getElementById("reduction").style.color="#000000";
}
function reduction() {
	var b=document.getElementById("number11").innerText;
	if(b=="1"){}
	else if(b=="2"){
		$.get("JianServlet",{number:b},
				function(date) {
			         $("#number11").html(date);
				}
				)
		document.getElementById("jian").style.cursor="not-allowed";
		document.getElementById("reduction").style.color="#B5B5B5";
	}
	else {
		$.get("JianServlet",{number:b},
				function(date) {
			         $("#number11").html(date);
				}
				)
	}
}
function funs(arg) {
	if(arg=="1") document.getElementById("kuang1").style.borderColor="#FF0000";
	if(arg=="2") document.getElementById("kuang2").style.borderColor="#FF0000";
	if(arg=="3") document.getElementById("kuang3").style.borderColor="#FF0000";
	if(arg=="4") document.getElementById("kuang4").style.borderColor="#FF0000";
	if(arg=="5") document.getElementById("kuang5").style.borderColor="#FF0000";
	if(arg=="6") document.getElementById("kuang6").style.borderColor="#FF0000";
	if(arg=="7") document.getElementById("kuang7").style.borderColor="#FF0000";
	if(arg=="8") document.getElementById("kuang8").style.borderColor="#FF0000";
}
function funb(arg) {
	if(arg=="1") document.getElementById("kuang1").style.borderColor="#CDC5BF";
	if(arg=="2") document.getElementById("kuang2").style.borderColor="#CDC5BF";
	if(arg=="3") document.getElementById("kuang3").style.borderColor="#CDC5BF";
	if(arg=="4") document.getElementById("kuang4").style.borderColor="#CDC5BF";
	if(arg=="5") document.getElementById("kuang5").style.borderColor="#CDC5BF";
	if(arg=="6") document.getElementById("kuang6").style.borderColor="#CDC5BF";
	if(arg=="7") document.getElementById("kuang7").style.borderColor="#CDC5BF";
	if(arg=="8") document.getElementById("kuang8").style.borderColor="#CDC5BF";
	
}
function submit() {
	if(guige==0)$("#tishi").html("请选择农产品的规格！");
	else if(daxiao==0)$("#tishi").html("请选择农产品的均重！");
	else{
		$("#tishi").html("");
		<%-- if(bbb==1) {
			 window.top.location.href="yici11.jsp?dizhi=OrderServlet?mangoname="+"<%=session.getAttribute("manguoID")%>";	
		} --%>
		/* if(bbb==2) { */
			var chanping='<%=request.getAttribute("manguo")%>';

			var shuxin="5斤装一级果";
			if(guige==1) shuxin="5斤装一级果";
			if(guige==2) shuxin="5斤装二级果";
			if(guige==3) shuxin="10斤装一级果";
			if(guige==4) shuxin="10斤装二级果";
			if(guige==5) shuxin="20斤装一级果";
			if(guige==6) shuxin="20斤装二级果";
			var danjia=parseFloat($("#danjiamanguo").html());
			var shuliang=parseInt($("#number11").html());
			var zhongjia=danjia*shuliang;
			var value=Math.round(zhongjia*100)/100;
			 var xsd=value.toString().split(".");
			 if(xsd.length==1){
				 zhongjia=value.toString()+".00";
			 }
			 if(xsd.length>1){
			 if(xsd[1].length<2){
				 zhongjia=value.toString()+"0";
			 }}
			var junzhong="<%=request.getAttribute("xiaopinjun") %>";
			if(daxiao==1) junzhong="<%=request.getAttribute("xiaopinjun") %>";
			if(daxiao==2) junzhong="<%=request.getAttribute("dapinjun") %>";
			window.open("confirmOrder.jsp?total_price="+zhongjia+"&product="+chanping+"&specifications="+shuxin+"&unit_price="+danjia+"&numberof="+shuliang+"&weightof="+junzhong);
					
		/* } */
	}
}
function funw(arg) {
	if(arg=="1") {document.getElementById("hhhh1").style.color="#FF0000"; 
	guige=1;
	document.getElementById("hhhh2").style.color="#000000";
	document.getElementById("hhhh3").style.color="#000000";
	document.getElementById("hhhh4").style.color="#000000";
	document.getElementById("hhhh5").style.color="#000000";
	document.getElementById("hhhh6").style.color="#000000";
	}
	if(arg=="2") {document.getElementById("hhhh2").style.color="#FF0000";
	guige=2;
	document.getElementById("hhhh1").style.color="#000000";
	document.getElementById("hhhh3").style.color="#000000";
	document.getElementById("hhhh4").style.color="#000000";
	document.getElementById("hhhh5").style.color="#000000";
	document.getElementById("hhhh6").style.color="#000000";
	}
	if(arg=="3") {document.getElementById("hhhh3").style.color="#FF0000";
	guige=3;
	document.getElementById("hhhh2").style.color="#000000";
	document.getElementById("hhhh1").style.color="#000000";
	document.getElementById("hhhh4").style.color="#000000";
	document.getElementById("hhhh5").style.color="#000000";
	document.getElementById("hhhh6").style.color="#000000";
	}
	if(arg=="4") {document.getElementById("hhhh4").style.color="#FF0000";
	guige=4;
	document.getElementById("hhhh2").style.color="#000000";
	document.getElementById("hhhh3").style.color="#000000";
	document.getElementById("hhhh1").style.color="#000000";
	document.getElementById("hhhh5").style.color="#000000";
	document.getElementById("hhhh6").style.color="#000000";
	}
	if(arg=="5") {document.getElementById("hhhh5").style.color="#FF0000";
	guige=5;
	document.getElementById("hhhh2").style.color="#000000";
	document.getElementById("hhhh3").style.color="#000000";
	document.getElementById("hhhh4").style.color="#000000";
	document.getElementById("hhhh1").style.color="#000000";
	document.getElementById("hhhh6").style.color="#000000";
	}
	if(arg=="6") {
	document.getElementById("hhhh6").style.color="#FF0000";
	guige=6;
	document.getElementById("hhhh2").style.color="#000000";
	document.getElementById("hhhh3").style.color="#000000";
	document.getElementById("hhhh4").style.color="#000000";
	document.getElementById("hhhh5").style.color="#000000";
	document.getElementById("hhhh1").style.color="#000000";
	}
	if(arg=="7") {document.getElementById("hhhh7").style.color="#FF0000";
	daxiao=1;
	document.getElementById("hhhh8").style.color="#000000";
	}
	if(arg=="8") {document.getElementById("hhhh8").style.color="#FF0000";
	daxiao=2;
	document.getElementById("hhhh7").style.color="#000000";
	}
	if(daxiao!=0&&guige!=0){
		$.get("DanjiaServlet",{Mangodaxiao:daxiao,Mangoguige:guige},
				function(date) {
			         $("#danjiamanguo").html(date);
				}
				)
	}
}
function funn(arg){
	if(arg==1)
		document.getElementById("dianjia").style.color="#0000EE";
	else
		document.getElementById("dianjia").style.color="#000000";
}
</script>
<body>
	<%
float jiage1=(float)session.getAttribute("daguohao");
float jiage2=(float)session.getAttribute("daguozhong");
float jiage3=(float)session.getAttribute("xiaoguohao");
float jiage4=(float)session.getAttribute("xiaoguozhong");
Lookbiggestorminimum nnn=new Lookbiggestorminimum();
float biggest=nnn.biggest(jiage1, jiage2, jiage3, jiage4);
float minimum=nnn.minimum(jiage1, jiage2, jiage3, jiage4);
String string=minimum+"-"+biggest;
%>
	<div class="top">
		<a id="wuesesname"
			href="yici11.jsp?dizhi=OrderServlet?mangoname=<%=session.getAttribute("manguoID")%>"
			class="zitiyanse" style="display: none;">亲，请登录</a> <span
			id="wuesesname1" class="zitiyanse zitiyanse1" style="display: block;">Hello!<%=session.getAttribute("yonghu11")%></span>
	</div>

	<div class="top1">
		<ziti class="ziti1">林果果</ziti>
		<br />
		<ziti class="ziti2">L&nbsp;&nbsp;G&nbsp;&nbsp;G</ziti>
		<div class="shangjiann">
			<a id="dianjia" class="shangjia" target="_blank"
				href="merchants.jsp?nonghu=<%=session.getAttribute("username") %>"
				onmouseover=funn(1) onmouseout=funn(2)><%=session.getAttribute("username") %></a>
			<br> <span class="biaozhi">农户直销</span>
		</div>
	</div>

	<br>

	<div class="top2"></div>

	<div class="title-img">

		<div class="zuo">

			<div id="video" class="title-img1">
				<img id="img1" alt="" src=<%=request.getAttribute("picture1") %>
					width="100%" height="100%">
			</div>

			<br> <br>

			<div calss="xia">

				<div class="title-img2 " id="div1">
					<img alt="" src=<%=request.getAttribute("picture1") %> width="100%"
						height="100%" onmouseover=fun1( "div1") onmouseout=fun11(
						"div1") onclick=jump("1")>
				</div>

				<div class="title-img2 " id="div2">
					<img alt="" src=<%=request.getAttribute("picture2") %> width="100%"
						height="100%" onmouseover=fun1( "div2") onmouseout=fun11(
						"div2") onclick=jump("2")>
				</div>

				<div class="title-img2 " id="div3">
					<img alt="" src=<%=request.getAttribute("picture3") %> width="100%"
						height="100%" onmouseover=fun1( "div3") onmouseout=fun11(
						"div3") onclick=jump("3")>
				</div>

				<div class="title-img2 " id="div4">
					<img alt="" src=<%=request.getAttribute("picture4") %> width="100%"
						height="100%" onmouseover=fun1( "div4") onmouseout=fun11(
						"div4") onclick=jump("4")>
				</div>

				<div class="title-img2 " id="div5">
					<img alt="" src=<%=request.getAttribute("picture5") %> width="100%"
						height="100%" onmouseover=fun1( "div5") onmouseout=fun11(
						"div5") onclick=jump("5")>
				</div>

				<div class="title-img2 " id="div6">
					<img alt="" src="picture/videoIcon.jpg" width="100%" height="100%"
						onmouseover=fun1( "div6") onmouseout=fun11( "div6") onclick=jump("6")>
				</div>

			</div>

		</div>

		<div class="you">

			<span class="Thefont1"><%=request.getAttribute("manguo") %></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<span>可售：<%=request.getAttribute("keshouliang") %>件
			</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>已售：<%=request.getAttribute("yeshouliang") %>件
			</span><br>
			<div>
				<p class="loo"><%=request.getAttribute("introduce") %></p>
			</div>
			<div class="title-img4">
				<span class="Thefont">价格</span><span class="Thefont1 Thefont2">￥<span
					id="danjiamanguo"><%=string %></span></span>
			</div>
			<div class="title-img4 title-img5">
				<span class="Thefont Thefont3">规格</span>
				<div id="kuang1" class="title-img6 title-img66" onmouseover=funs(
					"1") onmouseout=funb( "1") onclick=funw("1")>
					<span id="hhhh1" class="Thefont4">5斤装一级果</span>
				</div>
				&nbsp;&nbsp;
				<div id="kuang2" class="title-img6 title-img66" onmouseover=funs(
					"2") onmouseout=funb( "2") onclick=funw("2")>
					<span id="hhhh2" class="Thefont4">5斤装二级果</span>
				</div>
				<br>
				<div id="kuang3" class="title-img6 Thefont5" onmouseover=funs(
					"3") onmouseout=funb( "3") onclick=funw("3")>
					<span id="hhhh3" class="Thefont4">10斤装一级果</span>
				</div>
				&nbsp;&nbsp;
				<div id="kuang4" class="title-img6 Thefont5" onmouseover=funs(
					"4") onmouseout=funb( "4") onclick=funw("4")>
					<span id="hhhh4" class="Thefont4">10斤装二级果</span>
				</div>
				<br>
				<div id="kuang5" class="title-img6 Thefont5 Thefont6"
					onmouseover=funs( "5") onmouseout=funb( "5") onclick=funw("5")>
					<span id="hhhh5" class="Thefont4">20斤装一级果</span>
				</div>
				&nbsp;&nbsp;
				<div id="kuang6" class="title-img6 Thefont5 Thefont6"
					onmouseover=funs( "6") onmouseout=funb( "6") onclick=funw("6")>
					<span id="hhhh6" class="Thefont4">20斤装二级果</span>
				</div>
			</div>
			<span class="Thefont Thefont31">均重</span>
			<div id="kuang7" class="title-img6 title-img61" onmouseover=funs(
				"7") onmouseout=funb( "7") onclick=funw("7")>
				<span id="hhhh7" class="Thefont4"><span><%=request.getAttribute("xiaopinjun") %></span><span>斤/个</span></span>
			</div>
			&nbsp;&nbsp;
			<div id="kuang8" class="title-img6 title-img61" onmouseover=funs(
				"8") onmouseout=funb( "8") onclick=funw("8")>
				<span id="hhhh8" class="Thefont4"><span><%=request.getAttribute("dapinjun") %></span><span>斤/个</span></span>
			</div>
			<br> <span class="Thefont Thefont32">数量</span>
			<div id="jian" class="title-img6 title-img62" onclick="reduction()">
				<span id="reduction" class="ziti3">-</span>
			</div>
			<div class="title-img6 title-img63">
				<span id="number11" class="ziti4">1</span>
			</div>
			<div id="jia" class="title-img6 title-img64" onclick="add()">
				<span id="" class="ziti5">+</span>
			</div>
			<span class="Thefont Thefont33">件</span> <br> <input id="tijiao"
				class="tijiao" name="tijiao" type="button" value="立即购买"
				onmouseover="func()" onmouseout="func1()" onclick="submit()">
			<span id="tishi" class="Thefont7"></span>
		</div>
		<br>


	</div>
	<div class="bottom">
		<img id="" class="img1" alt="" src="picture/icon.jpg">
	</div>
</body>
</html>