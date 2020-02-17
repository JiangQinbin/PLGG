<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎登陆林果果</title>
<link href="picture/HeadorPtrait.png" rel="shortcut icon">
</head>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	function jjj() {
		if($("#yonghuming").val()!=""&&$("#mima").val().length>5&&$("#yanzhengma").val().length==4){
			document.getElementById("tijiao").disabled=undefined;
			document.getElementById("tijiao").style.color="white";
		}
		if($("#yonghuming").val()==""){
			document.getElementById("tijiao").disabled="disabled";
			document.getElementById("tijiao").style.color="gray";
		}
	}
	function qqq() {
		if($("#yonghuming").val()!=""&&$("#mima").val().length>5&&$("#yanzhengma").val().length==4){
			document.getElementById("tijiao").disabled=undefined;
			document.getElementById("tijiao").style.color="white";
		}
		if($("#mima").val().length<=5){
			document.getElementById("tijiao").disabled="disabled";
			document.getElementById("tijiao").style.color="gray";
		}
	}
	function bbb() {
		if($("#yonghuming").val()!=""&&$("#mima").val().length>5&&$("#yanzhengma").val().length==4){
			document.getElementById("tijiao").disabled=undefined;
			document.getElementById("tijiao").style.color="white";
		}
		if($("#yanzhengma").val().length!=4){
			document.getElementById("tijiao").disabled="disabled";
			document.getElementById("tijiao").style.color="gray";
		}
	}
</script>
<style type="text/css">
body {
	background-image: url("picture/loginBackground.jpg");
	background-size: 100% 150%;
}

a {
	position: relative;
	font-size: 14px;
	top: -10px;
	text-decoration: none;
	color: #575757;
	font-weight: bold;
}

span {
	position: relative;
	font-size: 14px;
	top: -10px;
}

#biankuang1 {
	margin: 1px;
	width: 334px;
	border-style: solid;
	border-width: 1px;
	border-color: #000;
	height: 31px;
	text-align: center;
	padding-top: 12px;
	margin-left: 760px;
	margin-top: -244px;
}

#biankuang2 {
	margin: 1px;
	width: 334px;
	border-style: solid;
	border-width: 1px;
	border-color: #000;
	height: 344px;
	border-color: gray;
	margin-top: -1px;
	margin-left: 760px;
	margin-top: -1px;
}

.yanse {
	border-color: rgb(60, 60, 255);
	background-color: rgb(60, 60, 255);
	color: rgb(255, 255, 255);
}

.dengluyangshi {
	margin-left: 24px;
	height: 44px;
	line-height: 33px;
	width: 288px;
	background-color: rgb(60, 60, 255);
	border: solid;
	border-width: 2px;
	border-color: rgb(60, 60, 255);
	font-size: 20px;
	color: gray;
}

.bianju {
	margin-top: 36px;
	margin-left: 24px;
	height: 36px;
	line-height: 33px;
	width: 284px;
	border: solid;
	border-width: 2px;
	font-size: 15px;
	margin-left: 24px;
	border-color: gray;
}

.bianju6 {
	margin-top: 16px;
	margin-left: 24px;
	height: 36px;
	line-height: 33px;
	width: 284px;
	border: solid;
	border-width: 2px;
	font-size: 15px;
	border-color: gray;
}

.bianju7 {
	position: absolute;
	margin-top: 16px;
	margin-left: 24px;
	height: 34px;
	line-height: 33px;
	width: 100px;
	border: solid;
	border-width: 2px;
	border-color: gray;
}

.bianju8 {
	position: absolute;
	margin-top: 16px;
	margin-left: 144px;
	border: solid;
	border-width: 2px;
	border-color: gray;
}

.bianju5 {
	margin-left: 24px;
}

ziti {
	font-size: 12px;
}

#bianjue {
	margin-left: 166px;
}

#bianju9 {
	position: absolute;
	left: 366px;
	top: 222px;
}

#ziti2 {
	font-size: 24px;
	color: blue;
}

kanbuqing {
	position: relative;
	font-size: 12px;
	left: 233px;
	top: 36px;
	text-decoration: none;
}

.wenziweizhi {
	margin-top: 88px;
	margin-left: 66px;
}

.wenzi {
	margin-left: 66px;
}
</style>
<body id="body"size()>
	<%
String dizhi=request.getParameter("dizhi");
%>
	<wenziweizhi>
	<p id="ziti2" class="wenziweizhi">林果果，引领全球！</p>
	<p class="wenzi">我们的团队创造无限的可能</p>
	<p class="wenzi">没有我们做不到的</p>
	<p class="wenzi">只有你们想不到的</p>
	<p class="wenzi">这个世界将由我们掌控</p>
	<p class="wenzi">你的未来在这里</p>
	</wenziweizhi>
	<div id="biankuang1" class="yanse">欢迎登陆林果果</div>
	<form id="biankuang2"
		action="dengku?url=<%=request.getAttribute("url") %>&parameter=<%=request.getAttribute("parameter") %>&nonghu=<%=request.getParameter("nonghu") %>"
		method="post">
		<input id="yonghuming" class="bianju" name="yonghuming1" type="text"
			value="${cookie.name.value}" tabindex="1" placeholder="用户名/手机号"
			onkeyup="jjj()" /> <input id="mima" name="mima1" class="bianju6"
			type="password" value="" tabindex="2" placeholder="密码"
			onkeyup="qqq()" /> <br /> <input id="yanzhengma" name="yanzhengma1"
			class="bianju7" type="text" value="" tabindex="2" placeholder="验证码"
			onkeyup="bbb()" /> <img class="bianju8" alt="????"
			src="YanZhengMaServlet"
			onclick="this.src='YanZhengMaServlet?k='+Math.random()">
		<kanbuqing>看不清，点击图片</kanbuqing>
		<br /> <br /> <br /> <br />
		<ziti> <input class="bianju5" id="fuxuan" name="fuxuan1"
			type="checkbox" value="下次自动登陆" />记住账号</ziti>
		<br /> <br /> <input class="dengluyangshi" id="tijiao"
			name="tijiao1" type="submit" value="登 录" disabled="disabled" /> <input
			type="hidden" name="backurl" value=<%=dizhi %>> <br /> <br />
		<ziti> <a id="bianjue" href="https://www.baidu.com/">忘记密码 </a>
		&nbsp;<span>|</span>&nbsp; <a href="Registered.jsp"> 免费注册 </a>
	</form>
	<img id="bianju9" src="picture/loginBackground2.png" width="300" />
	<div></div>
</body>
</html>