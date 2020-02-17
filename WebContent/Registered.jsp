<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册|花果网</title>
<link href="picture/HeadorPtrait.png" rel="shortcut icon">
</head>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/md5.js"></script>
<script type="text/javascript">
/* 这里所有的函数用来判断是否可以进入下一步 */
 var c=0;
 var k=1;
 var countdown=60; 
	function m() {
		$.post("jianchaServlet",{username112:$("#username1").val()},
				function(date) {
					$("#nemt").html(date);
					if(date=="")
						 c=1;
			        else
			        	 c=0;
				}
				);
	}
	function GVCode() {
		var obj = $("#Send");
		if($("#MobilePhone").val().length==0){
			document.getElementById("cha").style.display="block";
			document.getElementById("geshi1").style.display="none";
			document.getElementById("cha1").style.display="none";
			document.getElementById("geshi2").style.display="block";
			document.getElementById("MobilePhone").style.border="0.5px solid red";
			k=1;
			return;
		}
		if(k==2){
			settime(obj);
		    $.post("SendVCodeServlet",{Mphoneno1:$("#MobilePhone").val()},
		    function(date){
				if(date!=""){
					document.getElementById("gou").style.display="block";
					document.getElementById("geshi3").style.display="block";
	                }
		        else
		        	alert("请检查你的网络！");
			}
		    )
		}
	    
	}
	function settime(obj) { //发送验证码倒计时
	    if (countdown == 0) { 
	        obj.attr('disabled',false); 
	        //obj.removeattr("disabled"); 
	        obj.val("免费获取验证码");
	        countdown = 60; 
	        return;
	    } else { 
	        obj.attr('disabled',true);
	        obj.val("重新发送(" + countdown + ")");
	        countdown--; 
	    } 
	setTimeout(function() { 
	    settime(obj) }
	    ,1000)
	  
	}
	function TheNextStep() {
		$.post("nextServlet",{MobilePhone6:$("#MobilePhone").val(),VerificationCode6:$("#VerificationCode").val()},
				function(date) {
					if(date!="0"){
						if (date=="15") {
							document.getElementById("mokuai1").style.display="block"; 
						    document.getElementById("mokuai2").style.display="none";
						    document.getElementById("san").style.color="black";
						    document.getElementById("san1").style.backgroundColor="red";
						    document.getElementById("san1").style.height="1.5px";
						    document.getElementById("san2").style.background="red";
						    document.getElementById("san2").style.border=" 1px solid red";
						} else {
							document.getElementById("mokuai4").style.display="block"; 
						    document.getElementById("mokuai2").style.display="none";
						    var b=""+date;
						    var a=b.length;
						    $("#hao").html(date.substring(0, 10));
						    $("#ming").html(date.substring(11, a));
						}
						
		                }
			        else
			        	alert("验证码不正确！"); 
				}
				)
	}
	function mm() {
		$("#nemt1").html("6~16位数字或字母，区分大小写");
	}
	function mmm() {
		if($("#password1").val().length>5&&$("#password1").val().length<17){
			$("#nemt1").html("");
		}else{
			$("#nemt1").html("密码格式不正确");
		}
	}
	
	function jjj12() {
		if ($("#password4").val()!=$("#password1").val()) {
			$("#nemt9").html("两次输入密码不一致！");
		} else {
			$("#nemt9").html("");
		}
	}

	function firstStep() {

		if($("#username1").val()!=""&&$("#username1").val()!=null&&c==1&&$("#nemt1").html()==""&&$("#nemt9").html()==""){
		$.post("RegistrationServlet",{username6:$("#username1").val(),password6:$("#password1").val(),nicheng6:$("#nicheng1").val()},
				function(date) {
					if(date=="congyan"){
						document.getElementById("mokuai3").style.display="block"; 
					    document.getElementById("mokuai1").style.display="none";
					    document.getElementById("si").style.color="black";
					    document.getElementById("si1").style.backgroundColor="red";
					    document.getElementById("si1").style.height="1.5px";
					    document.getElementById("si2").style.background="red";
					    document.getElementById("si2").style.border=" 1px solid red";
		                }
			        else
			        	alert("注册失败！");
				}
				)
	}else{
		alert("输入有误，请按要求输入。");
	}
		}
	function shoujihao() {
		if($("#MobilePhone").val().length==0){
			document.getElementById("cha").style.display="block";
			document.getElementById("geshi1").style.display="none";
			document.getElementById("cha1").style.display="none";
			document.getElementById("geshi2").style.display="block";
			document.getElementById("MobilePhone").style.border="0.5px solid red";
			k=1;
		}else{
	    if($("#MobilePhone").val().length==11){
			var b=$("#MobilePhone").val();
			var c=Number(b);
			 if (!isNaN(c)){
				document.getElementById("cha").style.display="none";
				document.getElementById("cha1").style.display="block";
				document.getElementById("geshi1").style.display="none";
				document.getElementById("geshi2").style.display="none";
				document.getElementById("MobilePhone").style.border="0.5px solid gray";
				k=2
			}
			else{
				document.getElementById("cha").style.display="block";
				document.getElementById("geshi1").style.display="block";
				document.getElementById("cha1").style.display="none";
				document.getElementById("geshi2").style.display="none";
				document.getElementById("MobilePhone").style.border="0.5px solid red";
				k=1;
			}
		}
		else{
			document.getElementById("cha").style.display="block";
			document.getElementById("cha1").style.display="none";
			document.getElementById("geshi1").style.display="block";
			document.getElementById("geshi2").style.display="none";
			document.getElementById("MobilePhone").style.border="0.5px solid red";
			k=1;
		}
	}
	}
	function yanzheng() {
		if(k==2){
		     document.getElementById("Determine").style.borderColor="rgb(255, 60, 60)";
		     document.getElementById("Determine").style.backgroundColor="rgb(255, 60, 60)"; 
		     document.getElementById("Determine").disabled=undefined;
		}
		else{
			document.getElementById("Determine").style.borderColor="rgb(220, 220, 220)";
		    document.getElementById("Determine").style.backgroundColor="rgb(220, 220, 220)"; 
		    document.getElementById("Determine").disabled="disabled";
		}
	}
</script>
<style type="text/css">
span {
	color: red;
}

ziti {
	color: rgb(255, 0, 0);
	font-weight: bold;
	font-family: 方正舒体;
}

ziti3 {
	position: relative;
	font-family: 宋体;
	font-size: 30px;
	top: -22px;
	left: 86px;
}

.ziti1 {
	position: relative;
	left: 26px;
	font-size: 46px;
}

.ziti2 {
	position: relative;
	left: 56px;
	font-size: 25px;
}

.biaodan {
	position: relative;
	height: 26px;
	width: 188px;
}

.biaodan1 {
	position: relative;
	height: 22px;
	width: 166px;
	font-size: 14px;
	left: 16px;
}

.biaodan2 {
	position: relative;
	height: 34px;
	width: 100px;
	font-size: 18px;
	left: 49px;
	top: 22px;
}

.biaodan3 {
	position: relative;
	height: 40px;
	width: 133px;
	font-size: 16px;
	left: 62px;
	top: 22px;
	border: 0.5px solid;
	border-color: #000000;
	background-color: rgb(230, 230, 250);
}

.biaodan4 {
	position: absolute;
	height: 40px;
	width: 100px;
	font-size: 18px;
	left: 363px;
	top: 293px;
	border: solid;
	font-weight: bold;
	border-color: rgb(220, 220, 220);
	background-color: rgb(220, 220, 220);
	color: #FFFFFF;
}

.zitik {
	font-size: 22px;
	color: #000000;
}

.zitik9 {
	position: relative;
	left: 36px;
	top: 18px;
}

zitik1 {
	font-size: 16px;
}

.bianju {
	margin-left: 0px;
}

.bianju1 {
	margin-left: -66px;
}

.bianju2 {
	margin-left: -22px;
}

.bianju3 {
	margin-left: -14px;
}

.zhuce {
	margin-left: 18px;
	font-size: 16px;
	height: 34px;
	width: 133px;
	border: solid;
	border-color: rgb(255, 60, 60);
	background-color: rgb(255, 60, 60);
	color: gray;
}

.aa {
	color: gray;
	font-size: 16px;
	font-weight: bold;
}

.aa1 {
	color: black;
	position: absolute;
	left: 398px;
}

.aa3 {
	position: absolute;
	left: 598px;
}

.aa4 {
	position: absolute;
	left: 808px;
}

.bb {
	position: absolute;
	width: 216px;
	background-color: gray;
	border: none;
	top: 127px;
}

.aaa1 {
	position: absolute;
	left: 328px;
	background-color: red;
	height: 1.5px;
}

.aaa3 {
	position: absolute;
	left: 544px;
}

.aaa4 {
	position: absolute;
	left: 736px;
}

.container {
	position: absolute;
	left: 244px;
	text-align: center;
	width: 760px;
	height: 344px;
	background-color: #FFFFFF;
	padding: 20px;
}

.content1 {
	border-top-width: 3px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
	border-top-color: #006400;
	border-right-color: #CFCFCF;
	border-bottom-color: #CFCFCF;
	border-left-color: #CFCFCF;
	background-color: #FFFFFF;
}

.round {
	position: absolute;
	width: 22px;
	height: 22px;
	background: #CFCFCF;
	border: 1px solid #CFCFCF;
	border-radius: 50%;
	text-align: center;
	line-height: 22px;
	color: #FFFFFF;
	top: 105px;
	font-size: 18px;
	font-weight: bold;
}

.round1 {
	background: red;
	border: 1px solid red;
	left: 367px;
}

.round3 {
	left: 567px;
}

.round4 {
	left: 767px;
}

.round5 {
	position: absolute;
	background: rgb(255, 215, 0);
	border: 1px solid rgb(255, 215, 0);
	width: 14px;
	height: 14px;
	line-height: 14px;
	top: 72px;
	left: 126px;
}

.round56 {
	position: relative;
	background: rgb(50, 205, 50);
	border: 1px solid rgb(50, 205, 50);
	top: 32px;
	left: 346px;
	display: none;
}

.round57 {
	position: absolute;
	background: rgb(255, 0, 0);
	border: 1px solid rgb(255, 0, 0);
	top: 133px;
	left: 542px;
	display: none;
}

.round67 {
	position: absolute;
	top: 133px;
	left: 542px;
}

.bn {
	position: relative;
	left: -136px;
}

.bn1 {
	position: relative;
	left: 116px;
	display: none;
}

.bn2 {
	position: absolute;
	color: red;
	top: 120px;
	left: 563px;
	font-size: 14px;
	display: none;
}

.huan {
	font-size: 66px;
	font-weight: bold;
	color: #228822;
	position: absolute;
	left: 166px;
	top: 66px;
}

.huan1 {
	font-size: 28px;
	font-weight: bold;
	color: #228822;
	position: absolute;
	left: 226px;
	top: 96px;
}

.huan2 {
	background: rgb(255, 60, 60);
	border: 1px solid rgb(255, 60, 60);
	position: absolute;
	left: 228px;
	top: 156px;
}

.huan3 {
	position: absolute;
	top: 228px;
	left: 216px;
	font-size: 14px;
	font-weight: bold;
	color: #575757;
}

.huan4 {
	top: 258px;
}

.exist {
	position: relative;
	top: 88px;
	color: #000000;
}

.exist1 {
	top: 106px;
}

.exist2 {
	position: relative;
	top: 124px;
	height: 40px;
	width: 233px;
	font-size: 18px;
	border: solid;
	font-weight: bold;
	border-color: rgb(255, 60, 60);
	background-color: rgb(255, 60, 60);
	color: #FFFFFF;
	border-radius: 3%;
}

.exist3 {
	position: relative;
	top: 142px;
	color: #FF7256;
}

.exist4 {
	position: relative;
	top: 106px;
}
</style>
<body>
	<%session.setMaxInactiveInterval(1200); %>
	<ziti class="ziti1">林果果</ziti>
	<br />
	<ziti class="ziti2">L&nbsp;&nbsp;G&nbsp;&nbsp;G</ziti>
	<ziti3>用户注册</ziti3>
	<br>
	<br>
	<span id="yi" class="aa aa1">验证手机 </span>
	<div class="round round1">1</div>
	<hr id="yi1" class="bb aaa1">
	<span id="san" class="aa aa3">设置用户名</span>
	<div id="san2" class="round  round3">2</div>
	<hr id="san1" class="bb aaa3">
	<span id="si" class="aa aa4">注册成功</span>
	<div id="si2" class="round round4">√</div>
	<hr id="si1" class="bb aaa4">
	<br>
	<hr>
	<br />
	<div class="content1 container">
		<div id="mokuai1" style="display: none;">
			<form method="post">
				<span class="bianju zitik">登录名</span>&nbsp;&nbsp;&nbsp;<input
					class="biaodan" type="text" name="username" id="username1"
					tabindex="1" placeholder="设置你的登录账号" onblur="m()"><span
					id="nemt"></span><br /> <br /> <span class="bianju1 zitik">设置登录密码</span>&nbsp;&nbsp;&nbsp;
				<zitik1>登录时验证，保护账号信息</zitik1>
				<br /> <br /> <span class="bianju2 zitik">登录密码</span>&nbsp;&nbsp;&nbsp;<input
					class="biaodan" type="password" name="password" id="password1"
					tabindex="2" placeholder="设置你的登录密码" onfocus="mm()" onblur="mmm()"><span
					id="nemt1"></span> <br /> <br /> <span class="bianju2 zitik">密码确认</span>&nbsp;&nbsp;&nbsp;<input
					class="biaodan" type="password" name="password3" id="password4"
					tabindex="3" placeholder="请再次输入你的密码" onblur="jjj12()"><span
					id="nemt9"></span><br /> <br /> <span class="bianju3 zitik">设置会员名</span>&nbsp;&nbsp;&nbsp;
				<zitik1>方便别人称呼你( 默认为登录名)</zitik1>
				<br /> <br /> <span class="bianju zitik">会员名</span>&nbsp;&nbsp;&nbsp;<input
					class="biaodan" type="text" name="nicheng" id="nicheng1"
					tabindex="2" placeholder="设置你的会员名"><br /> <br /> <input
					class="zhuce" id="xiayibu" type="button" value="注册"
					onclick="firstStep()" /><br />
			</form>
		</div>

		<div id="mokuai2" style="display: block;">
			<br /> <br />
			<div class="round round5">!</div>
			<p class="bn">验证码20分钟内有效，请勿泄露</p>
			<br />
			<form action="" method="post">
				<span class="zitik">手机号</span><input class="biaodan1"
					name="MobilePhone1" tabindex="1" id="MobilePhone" type="text"
					placeholder="输入手机号" onblur="shoujihao()">
				<div id="cha" class="round round5 round57">×</div>
				<div id="cha1" class="round round5 round56 round67">√</div>
				<p id="geshi1" class="bn2">手机号格式不正确，请重新输入</p>
				<p id="geshi2" class="bn2">请输入你的手机号</p>
				<br /> <span class="zitik zitik9">验证码</span><input class="biaodan2"
					name="VerificationCode1" tabindex="2" id="VerificationCode"
					type="text" onfocus="yanzheng()"><input class="biaodan3"
					id="Send" type="button" value="免费获取验证码" onclick="GVCode()"><br />
				<br />
				<div id="gou" class="round round5 round56">√</div>
				<p id="geshi3" class="bn1">校验码已发送至你的手机，请查收</p>
				<input class="biaodan4" id="Determine" type="button" value="确认"
					disabled="disabled" onclick="TheNextStep()">
			</form>
		</div>
		<div id="mokuai3" style="display: none;">
			<div id="gougong" class="huan">√</div>
			<div id="gougong1" class="huan1">恭喜，注册成功！</div>
			<form action="yici11.jsp" method="post">
				<input type="submit" value="立即登录" class="biaodan4 huan2">
			</form>
			<p class="huan3">欢迎您使用林亭网，您可使用手机号或者用户名登录，希望您在这里摘到自己喜欢的水果</p>
			<p class="huan3 huan4">如您在使用过程中遇到什么问题，请及时反馈给我们</p>
		</div>

		<div id="mokuai4" style="display: none;">
			<span class="exist">登录名：</span> <span class="exist" id="ming"></span><br>
			<span class="exist exist1">手机号</span> <span class="exist4" id="hao"></span>
			<span class="exist exist1">已被以上账户使用，请确认该账户是否为你本人所有</span><br>
			<form action="yici11.jsp">
				<input class="exist2 " id="jump" name="jump1" type="submit"
					value="该账户是我的，立即登录">
			</form>
			<a class="exist3" href="">不是我的，提出申请</a>
		</div>
	</div>
<body>
</html>