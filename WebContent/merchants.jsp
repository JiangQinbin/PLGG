<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>农户</title>
<link href="picture/HeadorPtrait.png" rel="shortcut icon">
</head>
<style type="text/css">
.ziti {
	position: relative;
	color: rgb(255, 0, 0);
	font-weight: bold;
	font-family: 华文新魏;
	color: rgb(255, 0, 0);
	font-weight: bold;
	font-family: 华文新魏;
	font-size: 48px;
	left: 6%;
}

.ziti1 {
	position: relative;
	color: #3b651f;
	font-weight: bold;
	font-family: 华文新魏;
	font-size: 20px;
	left: 36%;
	top: -6px;
}

.div2 {
	position: relative;
	background-color: #f2f3f1;
	width: 100%;
	color: #b8bab5;
}

.dizhiweizhi {
	position: relative;
	left: 6%;
}

.shijianweizhi {
	position: relative;
	left: 2%;
}

.zhongzhishiping {
	position: absolute;
	left: 80%;
	top: 26px;
	cursor: pointer;
}

.nonghumangguo {
	position: absolute;
	left: 88%;
	top: 26px;
	cursor: pointer;
}

.zhongzhishiping:hover {
	color: #19fada;
}

.nonghumangguo:hover {
	color: #19fada;
}

.dixia {
	position: relative;
	width: 100%;
	text-align: center;
}

.top {
	height: 200px;
}

.div {
	position: relative;
	width: 100%;
	text-align: center;
}

.span {
	position: relative;
	font-size: 24px;
	top: 45%;
}

.vodeo1 {
	position: relative;
	width: 288px;
	height: 200px;
	border-width: 1px;
	border-style: solid;
	border-color: #FFFFFF;
	background-color: #EDEDED;
	border-radius: 2%;
	margin: 0px;
	text-align: center;
	overflow: hidden;
}

.vodeo {
	position: relative;
	width: 288px;
	height: 244px;
	border-width: 1px;
	border-style: solid;
	border-color: #FFFFFF;
	background-color: #EDEDED;
	border-radius: 2%;
	margin: 0px;
	text-align: center;
	overflow: hidden;
	display: inline-block;
}

.k {
	position: relative;
	width: 100%;
	height: 100%;
	top: -19px;
}

.a {
	font-weight: bold;
}

.zhongzhi {
	font-size: 28px;
	color: #AA0000;
	height: 66px;
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

.img {
	position: relative;
	width: 80%;
	height: 65%;
	top: 16px;
}

.gao {
	height: 20px;
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
</style>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/video.min.js"></script>
<script type="text/javascript">
var nonghu ="";
function start(){
	nonghu = '<%=request.getParameter("nonghu")%>';
	$.post("QueryNongHuServlet",{nonghu:nonghu},
		    function(date){
		var jsObject = JSON.parse(date); 
		document.getElementById("shijian").innerHTML="开店时间："+jsObject["kaidianshijian"];
		document.getElementById("dizhi").innerHTML="农户地址："+jsObject["dizhi"];
          
	});
	$.post("QuearVodeoServlet",{nonghu:nonghu},
  		  function(date){
		 if(date==""){
 	   document.getElementById("kkk").style.display = "block";
 	   document.getElementById("kkkk").style.display = "none";
 	   document.getElementById("kkkk1").style.display = "none";
    }
    else{
 	   document.getElementById("kkk").style.display = "none";
 	   document.getElementById("kkkk1").style.display = "none";
 	   document.getElementById("kkkk").style.display = "block";
 	  var jsObject = eval(date);
 	   var leng = jsObject.length;
 	   var html = "";
 	   for(var i = 0;i<leng;i++){
 		   var vodeo = date[i];
 		   html = html + "<div class='vodeo'><div class='vodeo1'><video id='' class='k' data-html5-video autoplay preload='metadata' controls preload='auto' data-setup='{}' ><source src='http://www.linguoguo.com.cn:8080/farmers_picture/"+vodeo['yonghu']+"/"+vodeo['shipinming']+".mp4' type='video/mp4'/></video></div><span class='a'>"+vodeo['shijian']+"</span></div>";
 	   }
 	   document.getElementById("kkkkk").innerHTML = html;
    }
    },"JSON");
}
function vodeo(){
	$.post("QuearVodeoServlet",{nonghu:nonghu},
	  		  function(date){
			 if(date==""){
	 	   document.getElementById("kkk").style.display = "block";
	 	   document.getElementById("kkkk").style.display = "none";
	 	   document.getElementById("kkkk1").style.display = "none";
	    }
	    else{
	 	   document.getElementById("kkk").style.display = "none";
	 	   document.getElementById("kkkk1").style.display = "none";
	 	   document.getElementById("kkkk").style.display = "block";
	 	  var jsObject = eval(date);
	 	   var leng = jsObject.length;
	 	   var html = "";
	 	   for(var i = 0;i<leng;i++){
	 		   var vodeo = date[i];
	 		   html = html + "<div class='vodeo'><div class='vodeo1'><video id='' class='k' data-html5-video autoplay preload='metadata' controls preload='auto' data-setup='{}' ><source src='http://www.linguoguo.com.cn:8080/farmers_picture/"+vodeo['yonghu']+"/"+vodeo['shipinming']+".mp4' type='video/mp4'/></video></div><span class='a'>"+vodeo['shijian']+"</span></div>";
	 	   }
	 	   document.getElementById("kkkkk").innerHTML = html;
	    }
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

function mangguo(){
	var url;
	$.post("urlServlet",{},
			 function(date){
		 url=date;
	 });
	var html1="";
	$.post("QuartyMangGuoServlet",{nonghu:nonghu},
		    function(date){
		document.getElementById("kkkkk").innerHTML = "";
		document.getElementById("kkk").style.display = "none";
	 	   document.getElementById("kkkk1").style.display = "block";
	 	   document.getElementById("kkkk").style.display = "none";
		if(date.languages.length==0){
			html1="<div class='wu'>"+
			"<span class='wu1'>抱歉，没有找到农户的商品</span>"+
			"</div>";
		}else {
			for(var i = 0;i < date.languages.length; i++){
				
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
	
			if((i+1)%5==0&&i!=0) html1+="<br>";
		}
		}
		$("#kkkkk1").html(html1);
 },"JSON");
}
</script>
<body onload="start()">
	<div class="div1">
		<span class="ziti">林果果</span><span class="ziti1"><%=request.getParameter("nonghu")%></span>
		<span id="zhongzhishiping" class="zhongzhishiping" onclick="vodeo()">种植视频</span>
		<span id="nonghumangguo" class="nonghumangguo" onclick="mangguo()">农户芒果</span>
		<br>
	</div>
	<div class="div2">
		<span id="shijian" class="shijianweizhi"></span><span id="dizhi"
			class="dizhiweizhi"></span>
	</div>
	<div id="kkk" class="dixia top">
		<span class="span">抱歉！该农户还没有上传任何种植视频。</span>
	</div>
	<div id="kkkk" class="div">
		<div class="zhongzhi">农户种植视频</div>
		<div id="kkkkk" class="div"></div>
	</div>
	<div id="kkkk1" class="div">
		<div class="zhongzhi">农户芒果</div>
		<div id="kkkkk1"></div>
	</div>
</body>
</html>