<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>收货地址</title>
<link href="picture/HeadorPtrait.png" rel="shortcut icon">
<link type="text/css" rel="stylesheet"
	href="//misc.360buyimg.com/jdf/1.0.0/unit/??ui-base/5.0.0/ui-base.css,shortcut/5.0.0/shortcut.css,global-header/1.0.0/global-header.css,myjd/5.0.0/myjd.css,nav/2.0.0/nav.css,shoppingcart/2.0.0/shoppingcart.css,global-footer/5.0.0/global-footer.css,service/5.0.0/service.css,basePatch/1.0.0/basePatch.css" />
<link type="text/css" rel="stylesheet"
	href="//misc.360buyimg.com/user/myjd-2015/css/myjd.easebuy.css"
	source="combo" />
<link type="text/css" rel="stylesheet"
	href="//misc.360buyimg.com/user/myjd-2015/widget/??common/common.css"
	source="widget" />
<script type="text/javascript">window.pageConfig = { jdfVersion:'2.0.0' };</script>
<script type="text/javascript"
	src="//misc.360buyimg.com/jdf/1.0.0/unit/??base/5.0.0/base.js,basePatch/1.0.0/basePatch.js"></script>
<script type="text/javascript"
	src="//misc.360buyimg.com/jdf/??lib/jquery-1.6.4.js,1.0.0/unit/libPath/1.0.0/libPath.js"></script>
</head>
<style>
.top {
	width: 100%;
	height: 36px;
	background-color: #F5F5F5;
	vertical-align: middle;
}

.top1 {
	width: 100%;
	height: 80px;
}

.zitiyanse {
	position: absolute;
	top: 18px;
	font-size: 14px;
	color: #FF0000;
	left: 666px;
}

.zitiyanse1 {
	color: #008B00;
}

.divyangshi {
	position: relative;
	left: 120px;
	width: 80%;
	border-width: 1px;
	border-style: solid;
	border-color: #FFFFFF;
}

.ziti1 {
	position: relative;
	top: 12px;
	font-size: 46px;
	color: rgb(255, 0, 0);
	font-weight: bold;
	font-family: 华文新魏;
}

.ziti2 {
	font-weight: bold;
	font-size: 16px;
}

.ziti3 {
	font-size: 13px;
	font-family: 宋体;
	color: #4F4F4F;
}

.ziti4 {
	color: #363636;
}

.ziti5 {
	font-weight: bold;
	color: #000000;
}

.ziti6 {
	font-size: 20px;
	font-family: 宋体;
	font-weight: bold;
	color: #FF0000;
}

.ziti7 {
	font-size: 24px;
}

.ziti8 {
	position: relative;
	top: 10px;
	left: 10px;
	font-size: 16px;
	font-family: 宋体;
	font-weight: bold;
	color: #000000;
}

.ziti9 {
	font-size: 14px;
	font-family: 微软雅黑;
	color: #000000;
}

a {
	position: relative;
	font-size: 14px;
	text-decoration: none;
	left: 82%;
}

.hr {
	position: relative;
	border-width: 1.5px;
	border-style: solid;
	border-color: #E8E8E8;
	top: 6px;
}

.hr1 {
	border-color: #305c2e;
}

.hr2 {
	top: -6px;
}

.div {
	width: 100%;
	height: 30px;
	border-width: 1px;
	border-style: solid;
	border-color: #FFFFFF;
	display: none;
}

.weizhi {
	position: relative;
	top: 33%;
	left: 144px;
	font-size: 12px;
}

.weizhi2 {
	position: relative;
	left: 144px;
}

.left {
	position: absolute;
	left: 155px;
}

.left1 {
	position: absolute;
	left: 355px;
}

.left2 {
	position: absolute;
	left: 499px;
}

.left3 {
	position: absolute;
	left: 633px;
}

.left4 {
	position: absolute;
	left: 766px;
}

.left5 {
	position: absolute;
	left: 922px;
}

.left6 {
	color: #FF0000;
}

.left8 {
	position: absolute;
	left: 119px;
}

.left9 {
	position: absolute;
	left: 222px;
	top: 36px;
}

.left10 {
	position: absolute;
	left: 299px;
	top: 30px;
}

.left11 {
	position: absolute;
	left: 322px;
	top: 28px;
}

.left12 {
	position: absolute;
	top: 56px;
}

.left13 {
	left: 52px;
}

.left14 {
	position: relative;
	left: 252px;
}

.left15 {
	position: relative;
	left: 44px;
	top: 33px;
}

.left16 {
	position: relative;
	left: 33px;
}

.left17 {
	position: relative;
	left: 18px;
	top: 66px;
}

.left18 {
	position: relative;
	left: 31px;
	top: 66px;
}

.left19 {
	top: 88px;
}

.left20 {
	position: relative;
	left: 46px;
	top: 88px;
}

.left21 {
	position: relative;
	left: 100px;
	top: 111px;
}

.divyangshi1 {
	position: relative;
	width: 100%;
	height: 39px;
	border-width: 1px;
	border-style: solid;
	border-color: #FFFFFF;
}

.divyangshi2 {
	position: relative;
	width: 40%;
	height: 166px;
	border-width: 1px;
	border-style: solid;
	border-color: #FF0000;
	left: 599px;
}

.tijiao {
	position: relative;
	font-size: 15px;
	left: 840px;
	width: 188px;
	height: 36px;
	font-weight: bold;
	border-width: 1px;
	border-style: solid;
	border-color: #fa3405;
	background-color: #fa3405;
	color: #FFFFFF;
}

.jiadizhi {
	position: fixed;
	left: 299px;
	top: 66px;
	width: 688px;
	height: 366px;
	border-width: 1px;
	border-style: solid;
	border-color: #CFCFCF;
	background-color: #FFFFFF;
	display: none;
}

.jiadizhi1 {
	position: relative;
	width: 100%;
	height: 36px;
	border-width: 1px;
	border-style: solid;
	border-color: #C5C5C5;
	background-color: #C5C5C5;
}

.round {
	position: relative;
	left: 666px;
	top: -10px;
	width: 16px;
	height: 16px;
	background: #C5C5C5;
	border: 1px solid #C5C5C5;
	border-radius: 50%;
	text-align: center;
	line-height: 18px;
	color: #000000;
	font-size: 24px;
	font-weight: bold;
	cursor: pointer;
}

.wenben1 {
	width: 60%;
	height: 55px;
}

.wenben2 {
	width: 30%;
	height: 22px;
}

.baocun {
	width: 66px;
	height: 30px;
	font-weight: bold;
	color: #FFFFFF;
	background-color: #fa500f;
	border: 1px solid #fa500f;
}
</style>

<script type="text/javascript" src="js/md5.js"></script>
<script type="text/javascript">
var address=new Array();
var sddress=0;
var bianhao="";
$.post("QueryAddressServlet",{},
		function (date) {
	    sddress=date.languages.length;
	    
	    for(var i=0;i<date.languages.length;i++){
	    	address[i]=new Array(date.languages[i].addressID,date.languages[i].consigneeAddress,date.languages[i].consigneeName,date.languages[i].mobile,date.languages[i].region);
	    	
	    	var fff=date.languages[i].region+date.languages[i].consigneeAddress+"&nbsp;&nbsp;&nbsp;("+date.languages[i].consigneeName+")&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+date.languages[i].mobile;
	    	
	    	var hhh="div"+(i+1);
	    	
	    	var sss="#dizhi"+(i+1);
	    	
	    	document.getElementById(hhh).style.display="block";
	    	$(sss).html(fff);
	    	
	    	if(i==0){
	    		document.getElementById("div1").style.borderColor="#FF0000";
	    		document.getElementById("div1").style.fontWeight="bold";
	    		document.getElementById("div1").style.color="#0210f2";
	    		$("#addess1").html(date.languages[i].region+date.languages[i].consigneeAddress);
	    		$("#addess2").html(date.languages[i].consigneeName);
	    		$("#addess3").html(date.languages[i].mobile);
	    		bianhao=date.languages[i].addressID;
	    	}
	}
},"JSON");
function chenggong() {
	$.post("QueryAddressServlet",{},
			function (date) {
		    sddress=date.languages.length;
		    
		    for(var i=0;i<date.languages.length;i++){
		    	address[i]=new Array(date.languages[i].addressID,date.languages[i].consigneeAddress,date.languages[i].consigneeName,date.languages[i].mobile,date.languages[i].region);
		    	
		    	var fff=date.languages[i].region+date.languages[i].consigneeAddress+"&nbsp;&nbsp;&nbsp;("+date.languages[i].consigneeName+")&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+date.languages[i].mobile;
		    	
		    	var hhh="div"+(i+1);
		    	
		    	var sss="#dizhi"+(i+1);
		    	
		    	document.getElementById(hhh).style.display="block";
		    	$(sss).html(fff);
		    	
		    	if(i==0){
		    		document.getElementById("div1").style.borderColor="#FF0000";
		    		document.getElementById("div1").style.fontWeight="bold";
		    		document.getElementById("div1").style.color="#0210f2";
		    		$("#addess1").html(date.languages[i].region+date.languages[i].consigneeAddress);
		    		$("#addess2").html(date.languages[i].consigneeName);
		    		$("#addess3").html(date.languages[i].mobile);
		    		bianhao=date.languages[i].addressID;
		    	}
		}
	},"JSON");
}
function funs(arg) {
	if(arg=="1") document.getElementById("div1").style.backgroundColor="#fae6f6";
	if(arg=="2") document.getElementById("div2").style.backgroundColor="#fae6f6";
	if(arg=="3") document.getElementById("div3").style.backgroundColor="#fae6f6";
	if(arg=="4") document.getElementById("div4").style.backgroundColor="#fae6f6";
	if(arg=="5") document.getElementById("div5").style.backgroundColor="#fae6f6";
	if(arg=="6") document.getElementById("div6").style.backgroundColor="#fae6f6";
	if(arg=="7") document.getElementById("div7").style.backgroundColor="#fae6f6";
	if(arg=="8") document.getElementById("div8").style.backgroundColor="#fae6f6";
	if(arg=="9") document.getElementById("div9").style.backgroundColor="#fae6f6";
	if(arg=="10") document.getElementById("div10").style.backgroundColor="#fae6f6";
}
function funb(arg) {
	if(arg=="1") document.getElementById("div1").style.backgroundColor="#FFFFFF";
	if(arg=="2") document.getElementById("div2").style.backgroundColor="#FFFFFF";
	if(arg=="3") document.getElementById("div3").style.backgroundColor="#FFFFFF";
	if(arg=="4") document.getElementById("div4").style.backgroundColor="#FFFFFF";
	if(arg=="5") document.getElementById("div5").style.backgroundColor="#FFFFFF";
	if(arg=="6") document.getElementById("div6").style.backgroundColor="#FFFFFF";
	if(arg=="7") document.getElementById("div7").style.backgroundColor="#FFFFFF";
	if(arg=="8") document.getElementById("div8").style.backgroundColor="#FFFFFF";
	if(arg=="9") document.getElementById("div9").style.backgroundColor="#FFFFFF";
	if(arg=="10") document.getElementById("div10").style.backgroundColor="#FFFFFF";
}
function funw(arg) {
	if(arg=="1") {
	document.getElementById("div1").style.borderColor="#FF0000";
	document.getElementById("div1").style.fontWeight="bold";
	document.getElementById("div1").style.color="#0210f2";
	document.getElementById("div2").style.borderColor="#FFFFFF";
	document.getElementById("div2").style.fontWeight="normal";
	document.getElementById("div2").style.color="#000000";
	document.getElementById("div3").style.borderColor="#FFFFFF";
	document.getElementById("div3").style.fontWeight="normal";
	document.getElementById("div3").style.color="#000000";
	document.getElementById("div4").style.borderColor="#FFFFFF";
	document.getElementById("div4").style.fontWeight="normal";
	document.getElementById("div4").style.color="#000000";
	document.getElementById("div5").style.borderColor="#FFFFFF";
	document.getElementById("div5").style.fontWeight="normal";
	document.getElementById("div5").style.color="#000000";
	document.getElementById("div6").style.borderColor="#FFFFFF";
	document.getElementById("div6").style.fontWeight="normal";
	document.getElementById("div6").style.color="#000000";
	document.getElementById("div7").style.borderColor="#FFFFFF";
	document.getElementById("div7").style.fontWeight="normal";
	document.getElementById("div7").style.color="#000000";
	document.getElementById("div8").style.borderColor="#FFFFFF";
	document.getElementById("div8").style.fontWeight="normal";
	document.getElementById("div8").style.color="#000000";
	document.getElementById("div9").style.borderColor="#FFFFFF";
	document.getElementById("div9").style.fontWeight="normal";
	document.getElementById("div9").style.color="#000000";
	document.getElementById("div10").style.borderColor="#FFFFFF";
	document.getElementById("div10").style.fontWeight="normal";
	document.getElementById("div10").style.color="#000000";
	bianhao=address[0][0];
	$("#addess1").html("");
	$("#addess2").html("");
	$("#addess3").html("");
	$("#addess1").html(address[0][4]+address[0][1]);
	$("#addess2").html(address[0][2]);
	$("#addess3").html(address[0][3]);
	}
	if(arg=="2") {
		document.getElementById("div2").style.borderColor="#FF0000";
		document.getElementById("div2").style.fontWeight="bold";
		document.getElementById("div2").style.color="#0210f2";
		document.getElementById("div1").style.borderColor="#FFFFFF";
		document.getElementById("div1").style.fontWeight="normal";
		document.getElementById("div1").style.color="#000000";
		document.getElementById("div3").style.borderColor="#FFFFFF";
		document.getElementById("div3").style.fontWeight="normal";
		document.getElementById("div3").style.color="#000000";
		document.getElementById("div4").style.borderColor="#FFFFFF";
		document.getElementById("div4").style.fontWeight="normal";
		document.getElementById("div4").style.color="#000000";
		document.getElementById("div5").style.borderColor="#FFFFFF";
		document.getElementById("div5").style.fontWeight="normal";
		document.getElementById("div5").style.color="#000000";
		document.getElementById("div6").style.borderColor="#FFFFFF";
		document.getElementById("div6").style.fontWeight="normal";
		document.getElementById("div6").style.color="#000000";
		document.getElementById("div7").style.borderColor="#FFFFFF";
		document.getElementById("div7").style.fontWeight="normal";
		document.getElementById("div7").style.color="#000000";
		document.getElementById("div8").style.borderColor="#FFFFFF";
		document.getElementById("div8").style.fontWeight="normal";
		document.getElementById("div8").style.color="#000000";
		document.getElementById("div9").style.borderColor="#FFFFFF";
		document.getElementById("div9").style.fontWeight="normal";
		document.getElementById("div9").style.color="#000000";
		document.getElementById("div10").style.borderColor="#FFFFFF";
		document.getElementById("div10").style.fontWeight="normal";
		document.getElementById("div10").style.color="#000000";
		bianhao=address[1][0];
		$("#addess1").html("");
		$("#addess2").html("");
		$("#addess3").html("");
		$("#addess1").html(address[1][4]+address[1][1]);
		$("#addess2").html(address[1][2]);
		$("#addess3").html(address[1][3]);
		}
	if(arg=="3") {
		document.getElementById("div3").style.borderColor="#FF0000";
		document.getElementById("div3").style.fontWeight="bold";
		document.getElementById("div3").style.color="#0210f2";
		document.getElementById("div2").style.borderColor="#FFFFFF";
		document.getElementById("div2").style.fontWeight="normal";
		document.getElementById("div2").style.color="#000000";
		document.getElementById("div1").style.borderColor="#FFFFFF";
		document.getElementById("div1").style.fontWeight="normal";
		document.getElementById("div1").style.color="#000000";
		document.getElementById("div4").style.borderColor="#FFFFFF";
		document.getElementById("div4").style.fontWeight="normal";
		document.getElementById("div4").style.color="#000000";
		document.getElementById("div5").style.borderColor="#FFFFFF";
		document.getElementById("div5").style.fontWeight="normal";
		document.getElementById("div5").style.color="#000000";
		document.getElementById("div6").style.borderColor="#FFFFFF";
		document.getElementById("div6").style.fontWeight="normal";
		document.getElementById("div6").style.color="#000000";
		document.getElementById("div7").style.borderColor="#FFFFFF";
		document.getElementById("div7").style.fontWeight="normal";
		document.getElementById("div7").style.color="#000000";
		document.getElementById("div8").style.borderColor="#FFFFFF";
		document.getElementById("div8").style.fontWeight="normal";
		document.getElementById("div8").style.color="#000000";
		document.getElementById("div9").style.borderColor="#FFFFFF";
		document.getElementById("div9").style.fontWeight="normal";
		document.getElementById("div9").style.color="#000000";
		document.getElementById("div10").style.borderColor="#FFFFFF";
		document.getElementById("div10").style.fontWeight="normal";
		document.getElementById("div10").style.color="#000000";
		bianhao=address[2][0];
		$("#addess1").html("");
		$("#addess2").html("");
		$("#addess3").html("");
		$("#addess1").html(address[2][4]+address[2][1]);
		$("#addess2").html(address[2][2]);
		$("#addess3").html(address[2][3]);
		}
	if(arg=="4") {
		document.getElementById("div4").style.borderColor="#FF0000";
		document.getElementById("div4").style.fontWeight="bold";
		document.getElementById("div4").style.color="#0210f2";
		document.getElementById("div2").style.borderColor="#FFFFFF";
		document.getElementById("div2").style.fontWeight="normal";
		document.getElementById("div2").style.color="#000000";
		document.getElementById("div3").style.borderColor="#FFFFFF";
		document.getElementById("div3").style.fontWeight="normal";
		document.getElementById("div3").style.color="#000000";
		document.getElementById("div1").style.borderColor="#FFFFFF";
		document.getElementById("div1").style.fontWeight="normal";
		document.getElementById("div1").style.color="#000000";
		document.getElementById("div5").style.borderColor="#FFFFFF";
		document.getElementById("div5").style.fontWeight="normal";
		document.getElementById("div5").style.color="#000000";
		document.getElementById("div6").style.borderColor="#FFFFFF";
		document.getElementById("div6").style.fontWeight="normal";
		document.getElementById("div6").style.color="#000000";
		document.getElementById("div7").style.borderColor="#FFFFFF";
		document.getElementById("div7").style.fontWeight="normal";
		document.getElementById("div7").style.color="#000000";
		document.getElementById("div8").style.borderColor="#FFFFFF";
		document.getElementById("div8").style.fontWeight="normal";
		document.getElementById("div8").style.color="#000000";
		document.getElementById("div9").style.borderColor="#FFFFFF";
		document.getElementById("div9").style.fontWeight="normal";
		document.getElementById("div9").style.color="#000000";
		document.getElementById("div10").style.borderColor="#FFFFFF";
		document.getElementById("div10").style.fontWeight="normal";
		document.getElementById("div10").style.color="#000000";
		bianhao=address[3][0];
		$("#addess1").html("");
		$("#addess2").html("");
		$("#addess3").html("");
		$("#addess1").html(address[3][4]+address[3][1]);
		$("#addess2").html(address[3][2]);
		$("#addess3").html(address[3][3]);
		}
	if(arg=="5") {
		document.getElementById("div5").style.borderColor="#FF0000";
		document.getElementById("div5").style.fontWeight="bold";
		document.getElementById("div5").style.color="#0210f2";
		document.getElementById("div2").style.borderColor="#FFFFFF";
		document.getElementById("div2").style.fontWeight="normal";
		document.getElementById("div2").style.color="#000000";
		document.getElementById("div3").style.borderColor="#FFFFFF";
		document.getElementById("div3").style.fontWeight="normal";
		document.getElementById("div3").style.color="#000000";
		document.getElementById("div4").style.borderColor="#FFFFFF";
		document.getElementById("div4").style.fontWeight="normal";
		document.getElementById("div4").style.color="#000000";
		document.getElementById("div1").style.borderColor="#FFFFFF";
		document.getElementById("div1").style.fontWeight="normal";
		document.getElementById("div1").style.color="#000000";
		document.getElementById("div6").style.borderColor="#FFFFFF";
		document.getElementById("div6").style.fontWeight="normal";
		document.getElementById("div6").style.color="#000000";
		document.getElementById("div7").style.borderColor="#FFFFFF";
		document.getElementById("div7").style.fontWeight="normal";
		document.getElementById("div7").style.color="#000000";
		document.getElementById("div8").style.borderColor="#FFFFFF";
		document.getElementById("div8").style.fontWeight="normal";
		document.getElementById("div8").style.color="#000000";
		document.getElementById("div9").style.borderColor="#FFFFFF";
		document.getElementById("div9").style.fontWeight="normal";
		document.getElementById("div9").style.color="#000000";
		document.getElementById("div10").style.borderColor="#FFFFFF";
		document.getElementById("div10").style.fontWeight="normal";
		document.getElementById("div10").style.color="#000000";
		bianhao=address[4][0];
		$("#addess1").html("");
		$("#addess2").html("");
		$("#addess3").html("");
		$("#addess1").html(address[4][4]+address[4][1]);
		$("#addess2").html(address[4][2]);
		$("#addess3").html(address[4][3]);
		}
	if(arg=="6") {
		document.getElementById("div6").style.borderColor="#FF0000";
		document.getElementById("div6").style.fontWeight="bold";
		document.getElementById("div6").style.color="#0210f2";
		document.getElementById("div2").style.borderColor="#FFFFFF";
		document.getElementById("div2").style.fontWeight="normal";
		document.getElementById("div2").style.color="#000000";
		document.getElementById("div3").style.borderColor="#FFFFFF";
		document.getElementById("div3").style.fontWeight="normal";
		document.getElementById("div3").style.color="#000000";
		document.getElementById("div4").style.borderColor="#FFFFFF";
		document.getElementById("div4").style.fontWeight="normal";
		document.getElementById("div4").style.color="#000000";
		document.getElementById("div5").style.borderColor="#FFFFFF";
		document.getElementById("div5").style.fontWeight="normal";
		document.getElementById("div5").style.color="#000000";
		document.getElementById("div1").style.borderColor="#FFFFFF";
		document.getElementById("div1").style.fontWeight="normal";
		document.getElementById("div1").style.color="#000000";
		document.getElementById("div7").style.borderColor="#FFFFFF";
		document.getElementById("div7").style.fontWeight="normal";
		document.getElementById("div7").style.color="#000000";
		document.getElementById("div8").style.borderColor="#FFFFFF";
		document.getElementById("div8").style.fontWeight="normal";
		document.getElementById("div8").style.color="#000000";
		document.getElementById("div9").style.borderColor="#FFFFFF";
		document.getElementById("div9").style.fontWeight="normal";
		document.getElementById("div9").style.color="#000000";
		document.getElementById("div10").style.borderColor="#FFFFFF";
		document.getElementById("div10").style.fontWeight="normal";
		document.getElementById("div10").style.color="#000000";
		bianhao=address[5][0];
		$("#addess1").html("");
		$("#addess2").html("");
		$("#addess3").html("");
		$("#addess1").html(address[5][4]+address[5][1]);
		$("#addess2").html(address[5][2]);
		$("#addess3").html(address[5][3]);
		}
	if(arg=="7") {
		document.getElementById("div7").style.borderColor="#FF0000";
		document.getElementById("div7").style.fontWeight="bold";
		document.getElementById("div7").style.color="#0210f2";
		document.getElementById("div2").style.borderColor="#FFFFFF";
		document.getElementById("div2").style.fontWeight="normal";
		document.getElementById("div2").style.color="#000000";
		document.getElementById("div3").style.borderColor="#FFFFFF";
		document.getElementById("div3").style.fontWeight="normal";
		document.getElementById("div3").style.color="#000000";
		document.getElementById("div4").style.borderColor="#FFFFFF";
		document.getElementById("div4").style.fontWeight="normal";
		document.getElementById("div4").style.color="#000000";
		document.getElementById("div5").style.borderColor="#FFFFFF";
		document.getElementById("div5").style.fontWeight="normal";
		document.getElementById("div5").style.color="#000000";
		document.getElementById("div6").style.borderColor="#FFFFFF";
		document.getElementById("div6").style.fontWeight="normal";
		document.getElementById("div6").style.color="#000000";
		document.getElementById("div1").style.borderColor="#FFFFFF";
		document.getElementById("div1").style.fontWeight="normal";
		document.getElementById("div1").style.color="#000000";
		document.getElementById("div8").style.borderColor="#FFFFFF";
		document.getElementById("div8").style.fontWeight="normal";
		document.getElementById("div8").style.color="#000000";
		document.getElementById("div9").style.borderColor="#FFFFFF";
		document.getElementById("div9").style.fontWeight="normal";
		document.getElementById("div9").style.color="#000000";
		document.getElementById("div10").style.borderColor="#FFFFFF";
		document.getElementById("div10").style.fontWeight="normal";
		document.getElementById("div10").style.color="#000000";
		bianhao=address[6][0];
		$("#addess1").html("");
		$("#addess2").html("");
		$("#addess3").html("");
		$("#addess1").html(address[6][4]+address[6][1]);
		$("#addess2").html(address[6][2]);
		$("#addess3").html(address[6][3]);
		}
	if(arg=="8") {
		document.getElementById("div8").style.borderColor="#FF0000";
		document.getElementById("div8").style.fontWeight="bold";
		document.getElementById("div8").style.color="#0210f2";
		document.getElementById("div2").style.borderColor="#FFFFFF";
		document.getElementById("div2").style.fontWeight="normal";
		document.getElementById("div2").style.color="#000000";
		document.getElementById("div3").style.borderColor="#FFFFFF";
		document.getElementById("div3").style.fontWeight="normal";
		document.getElementById("div3").style.color="#000000";
		document.getElementById("div4").style.borderColor="#FFFFFF";
		document.getElementById("div4").style.fontWeight="normal";
		document.getElementById("div4").style.color="#000000";
		document.getElementById("div5").style.borderColor="#FFFFFF";
		document.getElementById("div5").style.fontWeight="normal";
		document.getElementById("div5").style.color="#000000";
		document.getElementById("div6").style.borderColor="#FFFFFF";
		document.getElementById("div6").style.fontWeight="normal";
		document.getElementById("div6").style.color="#000000";
		document.getElementById("div7").style.borderColor="#FFFFFF";
		document.getElementById("div7").style.fontWeight="normal";
		document.getElementById("div7").style.color="#000000";
		document.getElementById("div1").style.borderColor="#FFFFFF";
		document.getElementById("div1").style.fontWeight="normal";
		document.getElementById("div1").style.color="#000000";
		document.getElementById("div9").style.borderColor="#FFFFFF";
		document.getElementById("div9").style.fontWeight="normal";
		document.getElementById("div9").style.color="#000000";
		document.getElementById("div10").style.borderColor="#FFFFFF";
		document.getElementById("div10").style.fontWeight="normal";
		document.getElementById("div10").style.color="#000000";
		bianhao=address[7][0];
		$("#addess1").html("");
		$("#addess2").html("");
		$("#addess3").html("");
		$("#addess1").html(address[7][4]+address[7][1]);
		$("#addess2").html(address[7][2]);
		$("#addess3").html(address[7][3]);
		}
	if(arg=="9") {
		document.getElementById("div9").style.borderColor="#FF0000";
		document.getElementById("div9").style.fontWeight="bold";
		document.getElementById("div9").style.color="#0210f2";
		document.getElementById("div2").style.borderColor="#FFFFFF";
		document.getElementById("div2").style.fontWeight="normal";
		document.getElementById("div2").style.color="#000000";
		document.getElementById("div3").style.borderColor="#FFFFFF";
		document.getElementById("div3").style.fontWeight="normal";
		document.getElementById("div3").style.color="#000000";
		document.getElementById("div4").style.borderColor="#FFFFFF";
		document.getElementById("div4").style.fontWeight="normal";
		document.getElementById("div4").style.color="#000000";
		document.getElementById("div5").style.borderColor="#FFFFFF";
		document.getElementById("div5").style.fontWeight="normal";
		document.getElementById("div5").style.color="#000000";
		document.getElementById("div6").style.borderColor="#FFFFFF";
		document.getElementById("div6").style.fontWeight="normal";
		document.getElementById("div6").style.color="#000000";
		document.getElementById("div7").style.borderColor="#FFFFFF";
		document.getElementById("div7").style.fontWeight="normal";
		document.getElementById("div7").style.color="#000000";
		document.getElementById("div8").style.borderColor="#FFFFFF";
		document.getElementById("div8").style.fontWeight="normal";
		document.getElementById("div8").style.color="#000000";
		document.getElementById("div1").style.borderColor="#FFFFFF";
		document.getElementById("div1").style.fontWeight="normal";
		document.getElementById("div1").style.color="#000000";
		document.getElementById("div10").style.borderColor="#FFFFFF";
		document.getElementById("div10").style.fontWeight="normal";
		document.getElementById("div10").style.color="#000000";
		bianhao=address[8][0];
		$("#addess1").html("");
		$("#addess2").html("");
		$("#addess3").html("");
		$("#addess1").html(address[8][4]+address[8][1]);
		$("#addess2").html(address[8][2]);
		$("#addess3").html(address[8][3]);
		}
	if(arg=="10") {
		document.getElementById("div10").style.borderColor="#FF0000";
		document.getElementById("div10").style.fontWeight="bold";
		document.getElementById("div10").style.color="#0210f2";
		document.getElementById("div2").style.borderColor="#FFFFFF";
		document.getElementById("div2").style.fontWeight="normal";
		document.getElementById("div2").style.color="#000000";
		document.getElementById("div3").style.borderColor="#FFFFFF";
		document.getElementById("div3").style.fontWeight="normal";
		document.getElementById("div3").style.color="#000000";
		document.getElementById("div4").style.borderColor="#FFFFFF";
		document.getElementById("div4").style.fontWeight="normal";
		document.getElementById("div4").style.color="#000000";
		document.getElementById("div5").style.borderColor="#FFFFFF";
		document.getElementById("div5").style.fontWeight="normal";
		document.getElementById("div5").style.color="#000000";
		document.getElementById("div6").style.borderColor="#FFFFFF";
		document.getElementById("div6").style.fontWeight="normal";
		document.getElementById("div6").style.color="#000000";
		document.getElementById("div7").style.borderColor="#FFFFFF";
		document.getElementById("div7").style.fontWeight="normal";
		document.getElementById("div7").style.color="#000000";
		document.getElementById("div8").style.borderColor="#FFFFFF";
		document.getElementById("div8").style.fontWeight="normal";
		document.getElementById("div8").style.color="#000000";
		document.getElementById("div9").style.borderColor="#FFFFFF";
		document.getElementById("div9").style.fontWeight="normal";
		document.getElementById("div9").style.color="#000000";
		document.getElementById("div1").style.borderColor="#FFFFFF";
		document.getElementById("div1").style.fontWeight="normal";
		document.getElementById("div1").style.color="#000000";
		bianhao=address[9][0];
		$("#addess1").html("");
		$("#addess2").html("");
		$("#addess3").html("");
		$("#addess1").html(address[9][4]+address[9][1]);
		$("#addess2").html(address[9][2]);
		$("#addess3").html(address[9][3]);
		}
}
function fundizhi1() {
	document.getElementById("cha").style.borderColor="#000000";
	document.getElementById("cha").style.backgroundColor="#000000";
	document.getElementById("cha").style.color="#FFFFFF";
}
function fundizhi2() {
	document.getElementById("cha").style.borderColor="#C5C5C5";
	document.getElementById("cha").style.backgroundColor="#C5C5C5";
	document.getElementById("cha").style.color="#000000";
}
function fundizhi3() {
	document.getElementById("chuangjian").style.display="none";
}
function funjia() {
	if(sddress<10) {
		alertAddAddressDiag();
		chenggong();
	}
	else alter("您的地址数目已达到最大数目10个，不能添加！");
}
function save() {
	var dizhi=$("#text1").val();
	var shouhuoren=$("#text2").val();
	var dianhua=$("#text3").val();
	if(dizhi==""){
		document.getElementById("text1").style.borderColor="#FF0000";
	}
	if(shouhuoren==""){
		document.getElementById("text2").style.borderColor="#FF0000";
	}
	if(dianhua==""){
		document.getElementById("text3").style.borderColor="#FF0000";
	}
	if(dizhi!=""&&shouhuoren!=""&&dianhua!=""){
	$.get("AddAddressServle",{dizhi1:dizhi,ren:shouhuoren,dianhua1:dianhua,shuliang:sddress},
			function (date) {
		    if(date=="1"){ 
		    	alert("添加成功！");
		    	document.getElementById("chuangjian").style.display="none";
		    	chenggong();
		    }
		    if(date=="2") alert("添加失败！");
	}
	);
	}
}
function tijiao() {
	var product=$("#product").html();
	var specifications=$("#specifications").html();
	var unit_price=$("#unit_price").html();
	var numberof=$("#numberof").html();
	var weightof=$("#weightof").html();
	var total_price=$("#total_price").html();
	$.get("TijiaoServle",{addressId:bianhao,total_price:total_price,product:product,specifications:specifications,unit_price:unit_price,numberof:numberof,weightof:weightof},
			function(date) {
		/* if(date!="001"){
			window.location.href="index.jsp?orderID="+date+"&total_price="+total_price+"&product="+product+specifications+numberof;
		    } */
		 if(date=="001"){
			alert("下单失败！请重新下订单");
		    }
		else if(date=="002"){
			alert("抱歉！存库不足");
		}
		else 
			window.location.href="index.jsp?orderID="+date+"&total_price="+total_price+"&product="+product+specifications+numberof;
		    
		});
}
</script>
<body>
	<div class="top" id="divm">
		<span id="wuesesname1" class="zitiyanse zitiyanse1">Hello!<%=session.getAttribute("yonghu11")%></span>
	</div>
	<div class="divyangshi">
		<div class="top1">
			<span class="ziti1">林果果</span>
		</div>
		<br>

		<hr class="hr hr2">
		<div id="div1" class="div" onmouseover=funs( "1") onmouseout=funb(
			"1") onclick=funw("1")>
			<span class="weizhi weizhi1" id="dizhi1"></span>
		</div>
		<div id="div2" class="div" onmouseover=funs( "2") onmouseout=funb(
			"2") onclick=funw("2")>
			<span class="weizhi " id="dizhi2"></span>
		</div>
		<div id="div3" class="div" onmouseover=funs( "3") onmouseout=funb(
			"3") onclick=funw("3")>
			<span class="weizhi " id="dizhi3"></span>
		</div>
		<div id="div4" class="div" onmouseover=funs( "4") onmouseout=funb(
			"4") onclick=funw("4")>
			<span class="weizhi " id="dizhi4"></span>
		</div>
		<div id="div5" class="div" onmouseover=funs( "5") onmouseout=funb(
			"5") onclick=funw("5")>
			<span class="weizhi " id="dizhi5"></span>
		</div>
		<div id="div6" class="div" onmouseover=funs( "6") onmouseout=funb(
			"6") onclick=funw("6")>
			<span class="weizhi " id="dizhi6"></span>
		</div>
		<div id="div7" class="div" onmouseover=funs( "7") onmouseout=funb(
			"7") onclick=funw("7")>
			<span class="weizhi " id="dizhi7"></span>
		</div>
		<div id="div8" class="div" onmouseover=funs( "8") onmouseout=funb(
			"8") onclick=funw("8")>
			<span class="weizhi " id="dizhi8"></span>
		</div>
		<div id="div9" class="div" onmouseover=funs( "9") onmouseout=funb(
			"9") onclick=funw("9")>
			<span class="weizhi " id="dizhi9"></span>
		</div>
		<div id="div10" class="div" onmouseover=funs( "10") onmouseout=funb(
			"10") onclick=funw("10")>
			<span class="weizhi " id="dizhi10"></span>
		</div>
		<br>
		<!-- onclick="funjia()" -->
		<input type="button" value="添加新地址" class="weizhi2" onclick="funjia()">
		<br> <br> <br> <br> <span class="ziti2">确认订单信息</span>
		<br> <br>
		<div class="divyangshi1">
			<span class="ziti3"><span class="left">农产品</span><span
				class="left1">商品属性</span><span class="left2">单价(元)</span> <span
				class="left3">数量(件)</span><span class="left4">均重(斤)</span><span
				class="left5">小计</span></span>
			<hr class="hr hr1">
		</div>
		<br>
		<div class="divyangshi1">
			<span class="ziti3"> <span id="product" class="left8"><%=request.getParameter("product") %></span>
				<span id="specifications" class="left1"><%=request.getParameter("specifications") %></span>
				<span id="unit_price" class="left2"><%=request.getParameter("unit_price") %></span>
				<span id="numberof" class="left3"><%=request.getParameter("numberof") %></span>
				<span id="weightof" class="left4"><%=request.getParameter("weightof") %></span>
				<span id="total_price" class="left5 left6"><%=request.getParameter("total_price") %></span>
			</span>
		</div>
		<br> <br>
		<div class="divyangshi1">
			<span class="ziti3 ziti4 left2">配送方式:&nbsp;&nbsp;&nbsp;普通配送&nbsp;&nbsp;快递(包邮)</span>
			<span class="ziti3 left5 left6">0.00</span>
		</div>
		<div class="divyangshi1">
			<span class="ziti3 ziti4 left2">发货时间:&nbsp;&nbsp;&nbsp;卖家承诺订单在买家付款后,
				48小时内发货</span>
		</div>
		<div class="divyangshi2">
			<span class="ziti3 ziti5 left9">应付款：</span><span class="ziti6 left10">￥</span><span
				class="ziti6 ziti7 left11"><%=request.getParameter("total_price") %></span>
			<br> <span class="ziti3 ziti5 left12">寄送至：</span><span
				id="addess1" class="ziti3 left12 left13"></span> <br> <br>
			<br> <br> <span class="ziti3 ziti5 left14">收获人：</span><span
				id="addess2" class="ziti3 left14"></span> <br> <span
				class="ziti3 ziti5 left14">电话：</span><span id="addess3"
				class="ziti3 left14"></span>
		</div>
		<input class="tijiao " type="button" value="提交订单" onclick="tijiao()">
		<br> <br> <br> <br> <br> <br>
		<div id="chuangjian" class="jiadizhi">
			<div class="jiadizhi1">
				<span class="ziti8">创建地址</span>
				<div id="cha" class="round" onmouseover="fundizhi1()"
					onmouseout="fundizhi2()" onclick="fundizhi3()">×</div>
			</div>
			<span class="ziti9 left16">详细地址</span>
			<textarea id="text1" class="wenben1 left15" cols="3"></textarea>
			<br> <span class="ziti9 left17">收货人姓名</span><input id="text2"
				class="wenben2 left18" type="text" placeholder="长度不超过20个字符"><br>
			<span class="ziti9 left16 left19">手机号码</span><input id="text3"
				class="wenben2 left20" type="text" placeholder="收获人电话"><br>
			<input type="button" class="baocun left21" value="保存"
				onclick="save()">
		</div>
	</div>

	<script type="text/javascript">

</script>
	<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
	<script type="text/javascript" src="//wl.jd.com/wl.js"></script>
	<script type="text/javascript" src="js/easybuy.js"></script>
	<script type="text/javascript" src="js/distpicker.data.js"></script>
	<script type="text/javascript" src="js/distpicker.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	<script type="text/javascript"
		src="//misc.360buyimg.com/user/myjd-2015/widget/??common/common.js"
		source="widget"></script>


</body>

</html>