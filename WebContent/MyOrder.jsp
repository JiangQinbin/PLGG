<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit">
<title>我的订单</title>
<link charset="utf-8" rel="stylesheet"
	href="https://static.360buyimg.com/devfe/toolbar/1.0.0/??widget/common/common.css">
<link href="picture/HeadorPtrait.png" rel="shortcut icon">
<link type="text/css" rel="stylesheet"
	href="//misc.360buyimg.com/jdf/1.0.0/unit/??ui-base/5.0.0/ui-base.css,shortcut/5.0.0/shortcut.css,global-header/1.0.0/global-header.css,myjd/5.0.0/myjd.css,nav/2.0.0/nav.css,shoppingcart/2.0.0/shoppingcart.css,global-footer/5.0.0/global-footer.css,service/5.0.0/service.css,basePatch/1.0.0/basePatch.css">
<link type="text/css" rel="stylesheet"
	href="//misc.360buyimg.com/user/??myjd-2015/widget/julike/julike.css,myjd/home/2.0.2/css/app.css">
<style>
#nav .nav-r #settleup-2014 .ci-left {
	height: 16px;
	background:
		url(http://img20.360buyimg.com/uba/jfs/t25564/270/1753228629/3678/dcd57a1a/5bbb0ee5Nfa88260f.png)
		no-repeat 0 0;
	background-size: cover;
}

.m-order .list .operate .trackinfo {
	z-index: inherit;
}

.m-order .list .operate .trackinfo .ti-wrapper {
	z-index: 1;
}
</style>
<script type="text/javascript">
	window.pageConfig = {
		compatible : true,
		wideVersion : true,
		jdfVersion : '2.0.0'
	};
</script>

<style type="text/css">
.body {
	background-color: #F8F8F8;
}

.body1 {
	position: relative;
	width: 71%;
	left: 10%;
	top: 16px;
	background-color: #FFFFFF;
}

.order {
	position: relative;
	font-size: 16px;
	font-family: Microsoft YaHei;
	top: 12px;
	left: 23px;
}

hr {
	background-color: #F8F8F8;
	height: 2px;
	border: none;
}

.ziti {
	position: relative;
	top: 66px;
	left: 266px;
	font-size: 26px;
	font-family: YouYuan;
}

.color {
	color: #FF0000;
	cursor: pointer;
}

* {
	margin: 0;
	padding: 0;
}

#btn {
	text-align: center;
}

.a1 {
	display: block;
	text-decoration: none; /* //创建一个超链接点击可现实弹框 */
	cursor: pointer;
}

#back {
	width: 100%;
	height: 100%;
	background: rgba(0, 0, 0, .5); /* //设置黑色的透明色 */
	position: fixed; /*  //在页面中绝对定位 */
	top: 0;
	left: 0;
	z-index: 999; /*   //因为要覆盖全网页所以设置一个比较高的权重 */
	display: none;
}

#login {
	display: none;
	width: 400px;
	height: 250px;
	background-color: #fff;
	position: fixed;
	top: 50%;
	left: 50%;
	margin: -125px 0 0 -200px;
	z-index: 1000;
} /* //弹框用样也是像背景一样实现 */
#close_all {
	position: absolute;
	top: 10px;
	right: 10px;
	width: 15px;
	height: 15px;
	font-size: 15px;
	cursor: pointer; /* //该步鼠标悬停时变小手 */
} /* //给×符号定位在右上角 */
.asd {
	position: relative;
	left: 55px;
}
</style>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	function myfunction() {

		 $.post("FirstOrderServlet",{username:'<%=session.getAttribute("yonghux")%>'},
			    function(date){
			 $("#purchaseOrder").html(date);
		 });
	}
	
	function prompt3(){
		alert("抱歉，系统暂时不支持该功能！")
	}
	function prompt1(){
		$.post("WaitOrderServlet",{username:'<%=session.getAttribute("yonghux")%>'},
			    function(date){
			 $("#purchaseOrder").html(date);
		 });
	}
	function prompt2(){
		$.post("CompleteOrderServlet",{username:'<%=session.getAttribute("yonghux")%>'},
			    function(date){
			 $("#purchaseOrder").html(date);
		 });
	}
	function prompt4(){
		$.post("EndOrderServlet",{username:'<%=session.getAttribute("yonghux")%>'},
			    function(date){
			 $("#purchaseOrder").html(date);
		 });
	}
	function queding(ID){
		$.post("UpdateOrderServlet",{ordernumber:ID},
			    function(date){
			 if(date==1){
				 $.post("CompleteOrderServlet",{username:'<%=session.getAttribute("yonghux")%>'},
						    function(date){
						 $("#purchaseOrder").html(date);
					 });
			 }
			 else 
				 alert("操作失败，请重试");
		 });
		
	}
	function queding1(ID){
		$.post("UpdateOrderServlet",{ordernumber:ID},
			    function(date){
			 if(date==1){
				 $.post("FirstOrderServlet",{username:'<%=session.getAttribute("yonghux")%>'},
						    function(date){
						 $("#purchaseOrder").html(date);
					 });
			 }
			 else 
				 alert("操作失败，请重试");
		 });
		
	}
  function dizhi(consignee,phone,address){
			 document.getElementById("back").style.display="block";
			document.getElementById("login").style.display="block";
			$("#xinxi").html("<span class='asd'>姓名："+consignee+"</span><br>"+
                              "<span class='asd'>电话："+phone+"</span><br>"+
                              "<span class='asd'>地址："+address+"</span>"); 
		}
	function dizhi1(){
			document.getElementById("back").style.display="none";
			document.getElementById("login").style.display="none";
		}
		 window.onload=myfunction;
	</script>
</head>
<body class="body">
	<div class="body1">
		<div class="main">
			<div id="app">
				<div class="main" id="main">
					<div class="box-1">
						<div class="m m-block m-order">
							<div class="mt">
								<h3>我的订单</h3>
							</div>
							<div class="mc">
								<div class="nav">
									<a rel="noopener noreferrer" class="item item0"
										clstag="homepage|keycount|order_1530067572375|11"><div
											class="lrc-badge icon-sprite" onclick="prompt1()"></div> <span
										class="name" onclick="prompt1()">待发货</span></a><a
										rel="noopener noreferrer" class="item item1"
										clstag="homepage|keycount|order_1530067572375|12"><div
											class="lrc-badge icon-sprite" onclick="prompt2()"></div> <span
										class="name" onclick="prompt2()">待收货</span></a><a
										rel="noopener noreferrer" class="item item2"
										clstag="homepage|keycount|order_1530067572375|13"><div
											class="lrc-badge icon-sprite" onclick="prompt3()">
											<div>
												<sup class="badge number" title="3">3</sup>
											</div>
										</div> <span class="name" onclick="prompt3()">待评价</span></a><a
										class="item item3"
										clstag="homepage|keycount|order_1530067572375|14"><div
											class="lrc-badge icon-sprite" onclick="prompt3()">
											<div></div>
										</div> <span class="name" onclick="prompt3()">售后</span></a><a
										rel="noopener noreferrer" class="item item4"
										onclick="prompt4()"
										clstag="homepage|keycount|order_1530067572375|15"><div
											class="icon-sprite" onclick="prompt4()"></div> <span
										class="name" onclick="prompt4()">已收货</span></a>
								</div>
								<ul class="list">

									<div>
										<div id="purchaseOrder"></div>
									</div>
									<!-- 
									
									<li class="item"><a href="//item.jd.com/329873.html"
										class="good" clstag="homepage|keycount|order_1530067572375|41"><img
											alt="" class="lrc-image  img-loaded" title=""
											src="//img14.360buyimg.com/img/s60x60_jfs/t7852/219/1910955190/255075/e66f619b/59a3be83N67d92648.jpg.webp"></a>
									<div class="state"
											clstag="homepage|keycount|order_1530067572375|41">
											<div class="text"
												title="您的订单已由本人签收（已在配送员处采用无纸化方式签收本订单）。感谢您在京东购物，欢迎再次光临。参加评价还能赢取京豆哟。">您的订单已由本人签收（已在配送员处采用无纸化方式签收本订单）。感谢您在京东购物，欢迎再次光临。参加评价还能赢取京豆哟。</div>
											<div class="other">
												<div class="type">普通快递</div>
												<span class="spacer"></span>
												<div class="date">2018-10-14 12:24:43</div>
											</div>
										</div>
										<div class="operate">
											<a class="link"
												href="//details.jd.com/normal/item.action?orderid=81111837891&amp;PassKey=E24813781915B987B2E3D255A8781A73"
												target="_blank" rel="noopener noreferrer"
												clstag="homepage|keycount|order_1530067572375|42">查看详情</a><span
												class="spacer"></span><a class="link"
												href="//myivc.jd.com/fpzz/zzxqByOrderId?orderId=81111837891"
												target="_blank" rel="noopener noreferrer"
												clstag="homepage|keycount|order_1530067572375|46">查看发票</a>
										</div></li>  -->
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<div id="back"></div>
	<div id="login">
		<span id="close_all" onclick="dizhi1()">×</span> <br> <br> <br>
		<br> <br>
		<div id="xinxi"></div>
	</div>
</body>
</html>