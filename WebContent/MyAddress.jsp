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
<script type="text/javascript">
	function myfunction() {
		$.post("QueryAddressServlet",{},
				function (date) {
			   var sddress=date.languages.length;
			    $("#addressNum_top").html(sddress);
			    $("#addressNum_botton").html(sddress);
			    if(sddress==0){
			    	$("#xianshi").html("<div class='mc'>"+
			    			"<div class='sm easebuy-m '>"+
					"<div class='smt'>"+
						"<h3>"+
							"你暂时还没有添加收获地址！ "+
						"</h3>"+
					"</div>"+
					"</div>"+
					"</div>"
					);
			    }else{
			    	
			    	var div="";
			    	for(var i=0;i<date.languages.length;i++){
			    		
				    	var dvi="<div class='mc'>"+
						"<div class='sm easebuy-m ' id='addresssDiv-"+date.languages[i].addressID+"'>"+
						"<div class='smt'>"+
							"<h3>"+
							date.languages[i].consigneeName+
							"</h3>"+
							"<div class='extra'>"+
							"<a onclick='alertDelAddressDiag("+date.languages[i].addressID+");' class='del-btn' href='#none'>删除</a>"+
		                "</div>"+
						"</div>"+

						"<div class='smc'>"+
							"<div class='items new-items'>"+
								"<div class='item-lcol'>"+
									"<div class='item'>"+
										"<span class='label'>收货人：</span>"+
										"<div class='fl'>"+date.languages[i].consigneeName+"</div>"+
										"<div class='clr'></div>"+
									"</div>"+
									"<div class='item'>"+
										"<span class='label'>所在地区：</span>"+
										"<div class='fl'>"+date.languages[i].region+"</div>"+
										"<div class='clr'></div>"+
									"</div>"+
									"<div class='item'>"+
										"<span class='label'>地址：</span>"+
										"<div class='fl'>"+date.languages[i].consigneeAddress+"</div>"+
										"<div class='clr'></div>"+
									"</div>"+
									"<div class='item'>"+
										"<span class='label'>手机：</span>"+
										"<div class='fl'>"+date.languages[i].mobile+"</div>"+
										"<div class='clr'></div>"+
									"</div>"+
									"<div class='item'>"+
										"<span class='label'>固定电话：</span>"+
										"<div class='fl'></div>"+
										"<div class='clr'></div>"+
									"</div>"+
									"<div class='item'>"+
										"<span class='label'>电子邮箱：</span>"+
										"<div class='fl'></div>"+
										"<div class='clr'></div>"+
									"</div>"+
								"</div>"+

								"<div class='item-rcol'>"+
									"<div class='extra'>"+
										"<a class='ml10 ftx-05'"+
											"href='javascript:makeAddressAllDefaultByoverseas('853490379',0);'>设为默认</a>"+
								
										"<a class='ml10 ftx-05' href='javascript:;'"+
											"onclick='alertUpdateAddressDiagByoverseas("+date.languages[i].addressID+",0);'>编辑</a>"+
									"</div>"+
								"</div>"+
								"<div class='clr'></div>"+
							"</div>"+
						"</div>"+
					"</div>"+
				"</div>";
				    	div+=dvi;
			    	}
			    	$("#xianshi").html(div);
				    }
			    
		},"JSON");
	}
	
	function prompt(){
		alert("抱歉！该功能暂未开放");
	}
		 window.onload=myfunction;
	</script>
<body myjd="_MYJD_comments" menuId="set">
	<!--shortcut start-->
	<div id="shortcut-2014">
		<div class="w">
			<ul class="fl">
				<li id="ttbar-home"><i class="iconfont">&#xe608;</i><a
					href="/LGG/yici.jsp" target="_blank">林果果首页</a></li>
			</ul>
			<ul class="fr">
				<li class="fore1" id="ttbar-login">
					<!-- <a href="javascript:login();" class="link-login">你好，请登录</a>&nbsp;&nbsp;<a href="javascript:regist();" class="link-regist style-red">免费注册</a> -->
					<a id="lgg" href="/LGG/HomeLGG.jsp" class="link-login  style-red"><%=session.getAttribute("yonghu11") %></a>
				</li>
				<li class="spacer"></li>
				<li class="fore2">
					<div class="dt">
						<a target="_blank" href="/LGG/MyOrder.jsp">我的订单</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore3">
					<div class="dt">
						<a target="_blank" href="/LGG/HomeLGG.jsp">我的林果果</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore4" id="ttbar-member">
					<div class="dt">
						<a onclick="prompt()">个人采购</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore5" id="ttbar-ent">
					<div class="dt">
						<a onclick="prompt()">企业采购</a>
					</div>
				</li>

			</ul>
			<span class="clr"></span>
		</div>
	</div>
	<div id="o-header-2013">
		<div id="header-2013" style="display: none;"></div>
	</div>
	<!--shortcut end-->
	<div id="nav">
		<div class="w">
			<div class="logo">
				<a href="/LGG/yici.jsp" target="_blank" class="fore1"
					clstag="homepage|keycount|home2013|Homejdlogo"><img
					width="160px" height="80px;" alt="" src="picture/HeadorPtrait.jpg"></a>
				<a href="/LGG/HomeLGG.jsp" target="_self" class="fore2"
					clstag="homepage|keycount|home2013|Homebackm">我的林果</a> <a
					href="/LGG/yici.jsp" target="_blank" class="fore3"
					clstag="homepage|keycount|home2013|Homebackjd">返回林果首页</a>
			</div>
			<div class="navitems">
				<ul>
					<li class="fore-1"><a target="_self" href="/LGG/HomeLGG.jsp"
						clstag="homepage|keycount|home2013|Homeindex">首页</a></li>
					<li class="fore-3">
						<div class="dl" clstag="click|keycount|myhome|hsz">
							<div class="dt">
								<span class="myjd-set">账户设置</span> <b></b>
							</div>
							<div class="dd">

								<a tid="_MYJD_info" clstag="Homeyser" onclick="prompt()"
									target="_self"><span>个人信息</span></a> <a tid="_MYJD_comments"
									clstag="homeadd" href="/LGG/MyAddress.jsp" target="_self"><span>收货地址</span></a>

								<a tid="_MYJD_safe" clstag="Homesafe" onclick="prompt()"><span>账户安全</span></a>

							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="nav-r">
				<div id="search-2014">
					<ul id="shelper" class="hide"></ul>
					<div class="form">
						<input type="text"
							onkeydown="javascript:if(event.keyCode==13) search('key');"
							autocomplete="off" id="key" accesskey="s" class="text" />
						<button onclick="" class="button cw-icon" type="button">
							<i></i>搜索
						</button>
						<!-- <button onclick="search('key');return false;" class="button cw-icon"  type="button"><i></i>搜索</button> -->
					</div>
				</div>
				<div id="settleup-2014" class="dorpdown">
					<div class="cw-icon">
						<i class="ci-left"></i> <i class="ci-right">&gt;</i> <a
							onclick="prompt()">我的采摘车</a>
					</div>
					<div class="dorpdown-layer">
						<div class="spacer"></div>
						<div id="settleup-content">
							<span class="loading"></span>
						</div>
					</div>
				</div>
				<div id="hotwords-2014"></div>
			</div>
			<div class="clr"></div>
		</div>
	</div>
	<div id="container">
		<div class="w">
			<div id="content">
				<input type="hidden" id="whereFrom" value="" />
				<div id="sub">
					<div id="menu">
						<dl class="fore1">
							<dt id="_MYJD_setting">设置</dt>
							<dd class="fore1_1" id="_MYJD_info">
								<a clstag="homepage|keycount|home2013|Homeyser"
									onclick="prompt()" target="_self">个人信息</a>
							</dd>

							<dd class="fore1_5" id="_MYJD_comments">
								<a clstag="homepage|keycount|home2013|homeadd"
									href="/LGG/MyAddress.jsp" target="_self">收货地址</a>
							</dd>

							<dd class="fore1_2" id="_MYJD_safe">
								<a clstag="homepage|keycount|home2013|Homesafe"
									onclick="prompt()">账户安全</a>
							</dd>
						</dl>
					</div>
					<div id="menu-ads">
						<!--广告全部放这里-->
					</div>
				</div>
				<div id="main">
					<div id="addressList" class="mod-main mod-comm">
						<div class="mt">
							<a id="edit-add-dialog" onclick="alertAddAddressDiag()"
								class="e-btn add-btn btn-5" href="javascript:;">新增收货地址</a> <span
								class="ftx-03">您已创建<span id="addressNum_top"
								class="ftx-02">0 </span>个收货地址，最多可创建<span class="ftx-02">10</span>个
							</span>
						</div>

						<div id="xianshi"></div>

						<div class="mt" id="addAddressDiv_bottom">
							<a onclick="alertAddAddressDiag()" class="e-btn add-btn btn-5"
								href="javascript:;">新增收货地址</a> <span class="ftx-03">您已创建<span
								id="addressNum_botton" class="ftx-02">0 </span>个收货地址，最多可创建<span
								class="ftx-02">10</span>个
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--service start-->
	<div id="service-2017">
		<div class="w">
			<ol class="slogen">
				<li class="item fore1"><i>多</i>品类齐全，轻松购物</li>
				<li class="item fore2"><i>快</i>多仓直发，极速配送</li>
				<li class="item fore3"><i>好</i>正品行货，精致服务</li>
				<li class="item fore4"><i>省</i>天天低价，畅选无忧</li>
			</ol>
		</div>
	</div>

	<script type="text/javascript">

</script>
	<!--footer end-->
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