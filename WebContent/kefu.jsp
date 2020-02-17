<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>客服</title>
</head>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#send").click(function() {
		if ($("#speak").val() == "") {//判断说话内容是否为空
			alert("说话内容不可以为空！");
			$("speak").focus();	//让说话内容文本框获得焦点
		}
		$.post("ChatServlet?action=send", {
			user :"<%=session.getAttribute("yonghu11")%>",
			speak : $("#speak").val()
		});	//发送POST请求
		$("#speak").val(""); //清空说话内容文本框的值
		$("#speak").focus(); //让说话内容文本框获得焦点
	});
	getContent();
	window.setInterval("getContent();", 500);	//每隔5秒钟获取一次聊天内容
});

$(document).ready(function() {
	$("#speak").keypress(function() {
		if(event.keyCode == 13){
		if ($("#speak").val() == "") {//判断说话内容是否为空
			alert("说话内容不可以为空！");
			$("speak").focus();	//让说话内容文本框获得焦点
		}
		$.post("ChatServlet?action=send", {
			user :"<%=session.getAttribute("yonghu11")%>",
			speak : $("#speak").val()
		});	//发送POST请求
		$("#speak").val(""); //清空说话内容文本框的值
		$("#speak").focus(); //让说话内容文本框获得焦点
	}});
	getContent();
	window.setInterval("getContent();", 500);	//每隔5秒钟获取一次聊天内容
});

//读取聊天内容
function getContent() {
	$.get("ChatServlet?action=get&nocache=" + new Date().getTime(),
			function(data) {
				$("#content").html(data);	//显示读取到的聊天内容
			});
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
	left: 3px;
}

.ziti1 {
	font-size: 46px;
}

.ziti2 {
	font-size: 25px;
}

weizhi {
	position: relative;
	left: 866px;
}

body {
	font-size: 16px; /*设置文字的大小*/
	margin: 0px;
}

section {
	width: 389px; /*设置宽度*/
	margin: 0 auto auto auto; /*设置居中显示*/
	clear: both; /*设置两侧均不显示任何元素*/
}

#main {
	padding: 10px; /*设置内边距*/
	height: 388px; /*设置高度*/
	background-color: #EAF7FD; /*设置背景颜色*/
}

footer {
	height: 56px; /*设置高度*/
	padding-top: 30px; /*设置右内边距*/
	padding-left: 50px; /*设置左内边距*/
}

.jjjj {
	font-size: 24px;
	color: rgb(255, 80, 0);
}

.jj {
	color: rgb(60, 60, 255);
	font-size: 12px;
}

.jjjjj {
	position: relative;
	height: 50px;
	left: -59px;
	top: -46px;
	border: solid;
	border-width: 0px;
}

.jjjjj1 {
	position: relative;
	height: 24px;
	width: 66px;
	background-color: gray;
	border-width: 0px;
	left: 233px;
	top: -36px;
}

.jjjj2 {
	position: relative;
	top: 50px;
}
</style>
<body>
	<ziti class="ziti1">黄士富网</ziti>
	<br />
	<ziti class="ziti2">huangfushi.com</ziti>
	<ziti3>客服</ziti3>
	<weizhi class="jj">黄士富客服人员为您服务！</weizhi>
	<hr>
	<section>
	<div id="main">
		<center class="jjjj">欢迎咨询黄士富</center>
		<div id="content"
			style="height: 266px; overflow: hidden; overflow-y: scroll; border: 1px; solid: #000000;"></div>
		<hr />
		<hr class="jjjj2" />
		<footer>
		<form name="form1" method="post" action="">
			<input class="jjjjj" name="speak" type="text" id="speak" size="58"
				onkeypress="search()"> <input class="jjjjj1" id="send"
				type="button" value="发送消息">
		</form>
		</footer>
	</div>
	</section>
</body>
</html>