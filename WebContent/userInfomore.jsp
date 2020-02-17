<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Expires-Type" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache" />
<title>账户信息</title>
<link type="text/css" rel="stylesheet"
	href="//misc.360buyimg.com/jdf/1.0.0/unit/??ui-base/5.0.0/ui-base.css,shortcut/5.0.0/shortcut.css,global-header/1.0.0/global-header.css,myjd/5.0.0/myjd.css,nav/2.0.0/nav.css,shoppingcart/2.0.0/shoppingcart.css,global-footer/5.0.0/global-footer.css,service/5.0.0/service.css,basePatch/1.0.0/basePatch.css" />
<script type="text/javascript"
	src="//misc.360buyimg.com/jdf/1.0.0/unit/??base/5.0.0/base.js,basePatch/1.0.0/basePatch.js"></script>
<link type="text/css" rel="stylesheet"
	href="//misc.360buyimg.com/user/myjd-2015/css/myjd.info.css"
	source="combo" />
<link type="text/css" rel="stylesheet"
	href="//misc.360buyimg.com/user/myjd-2015/widget/??common/common.css"
	source="widget" />
<script type="text/javascript"
	src="//misc.360buyimg.com/jdf/??lib/jquery-1.6.4.js,1.0.0/unit/libPath/1.0.0/libPath.js"></script>
</head>

<!--set|info-->
<body myjd="_MYJD_info" menuId="set">
	<!--shortcut start-->
	<div id="shortcut-2014">
		<div class="w">
			<ul class="fl">
				<li id="ttbar-home"><i class="iconfont">&#xe608;</i><a
					href="/LGG/yici.jsp" target="_blank">林果果首页</a></li>
			</ul>
			<ul class="fr">
				<li class="fore1" id="ttbar-login"><a
					href="javascript:login();" class="link-login">你好，请登录</a>&nbsp;&nbsp;<a
					href="javascript:regist();" class="link-regist style-red">免费注册</a>
				</li>
				<li class="spacer"></li>
				<li class="fore2">
					<div class="dt">
						<a target="_blank" href="">我的订单</a>
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
						<a target="_blank" href="">个人采购</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore5" id="ttbar-ent">
					<div class="dt">
						<a target="_blank" href="">企业采购</a>
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

								<a tid="_MYJD_info" clstag="Homeyser" href="/LGG/userInfo.jsp"
									target="_self"><span>个人信息</span></a> <a tid="_MYJD_comments"
									clstag="homeadd" href="/LGG/MyAddress.jsp" target="_self"><span>收货地址</span></a>

								<a tid="_MYJD_safe" clstag="Homesafe" href="" target="_self"><span>账户安全</span></a>


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
						<button onclick="search('key');return false;"
							class="button cw-icon" type="button">
							<i></i>搜索
						</button>
					</div>
				</div>
				<div id="settleup-2014" class="dorpdown">
					<div class="cw-icon">
						<i class="ci-left"></i> <i class="ci-right">&gt;</i> <a
							target="_blank" href="">我的采摘车</a>
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

	<!--container start-->
	<div id="container">
		<div class="w">
			<div id="content">
				<div id="sub">
					<div id="menu">
						<dl class="fore1">
							<dt id="_MYJD_setting">设置</dt>
							<dd class="fore1_1" id="_MYJD_info">
								<a clstag="homepage|keycount|home2013|Homeyser"
									href="/LGG/userInfo.jsp" target="_self">个人信息</a>
							</dd>


							<dd class="fore1_5" id="_MYJD_comments">
								<a clstag="homepage|keycount|home2013|homeadd"
									href="/LGG/MyAddress.jsp" target="_self">收货地址</a>
							</dd>

							<dd class="fore1_2" id="_MYJD_safe">
								<a clstag="homepage|keycount|home2013|Homesafe" href=""
									target="_self">账户安全</a>
							</dd>
					</div>
				</div>
				<div id="main">
					<div class="mod-main">
						<div class="mt">
							<ul class="extra-l">
								<li class="fore-1"><a href="/LGG/userInfo.jsp">基本信息</a></li>
								<li class="fore-2"><a href="/LGG/userInfoShowlmg.jsp">头像照片</a></li>
								<li class="fore-3"><a class="curr"
									href="/LGG/userInfomore.jsp">更多个人信息</a></li>

							</ul>
						</div>
						<div class="mc">
							<div class="user-set">
								<div class="form">

									<div class="item" clstag="pageclick|keycount|201602251|6">
										<span class="label">婚姻状况：</span>
										<div class="fl"
											clstag="homepage|keycount|home2013|infomoreMarriage">
											<input type="radio" name="maritalStatus" value="0" checked
												style="display: none" /> <input type="radio"
												name="maritalStatus" class="jdradio" value="1"><label
												class="mr10">未婚</label> <input type="radio"
												name="maritalStatus" class="jdradio" value="2"><label
												class="mr10">已婚</label> <input type="radio"
												name="maritalStatus" class="jdradio" value="3"><label
												class="mr10">保密</label>
										</div>
									</div>
									<div class="item" clstag="pageclick|keycount|201602251|7">
										<span class="label">月收入：</span>
										<div class="fl"
											clstag="homepage|keycount|home2013|infomoreIncome">
											<select class="selt" name="monthlyIncome" id="monthlyIncome"><option
													value="">请选择</option>
												<option value="1">2000元以下</option>
												<option value="2">2000-3999元</option>
												<option value="3">4000-5999元</option>
												<option value="4">6000-7999元</option>
												<option value="5">8000元以上</option></select>
										</div>
									</div>
									<div class="item" clstag="pageclick|keycount|201602251|8">
										<span class="label">身份证号码：</span>
										<div class="fl"
											clstag="homepage|keycount|home2013|infomoreadd">
											<div id="cidShowDiv" style="display: none">
												<strong></strong> <a class="smod"
													href="javascript:showCidDiv()">修改</a>
											</div>
											<div id="cidInputDIv" style="display: none">
												<input name="userVo.cid" id="cid" value="" maxlength="18"
													type="text" class="itxt" />
												<div class="clr"></div>
												<div class="prompt-06">
													<span id="cid_msg"></span>
												</div>
											</div>
										</div>
									</div>
									<div class="item" clstag="pageclick|keycount|201602251|9">
										<span class="label">教育程度：</span>
										<div class="fl"
											clstag="homepage|keycount|home2013|infomoreedu">
											<select class="selt" name="education" id="education"><option
													value="">请选择</option>
												<option value="1">初中</option>
												<option value="2">高中</option>
												<option value="3">中专</option>
												<option value="4">大专</option>
												<option value="5">本科</option>
												<option value="6">硕士</option>
												<option value="7">博士</option>
												<option value="8">其他</option></select>
										</div>
									</div>
									<div class="item" clstag="pageclick|keycount|201602251|10">
										<span class="label">所在行业：</span>
										<div class="fl"
											clstag="homepage|keycount|home2013|infomoreIndustry">
											<select class="selt" name="industryInfo" id="industryInfo"><option
													value="">请选择</option>
												<option value="1">计算机硬件及网络设备</option>
												<option value="2">计算机软件</option>
												<option value="3">IT服务（系统/数据/维护）/多领域经营</option>
												<option value="4">互联网/电子商务</option>
												<option value="5">网络游戏</option>
												<option value="6">通讯（设备/运营/增值服务）</option>
												<option value="7">电子技术/半导体/集成电路</option>
												<option value="8">仪器仪表及工业自动化</option>
												<option value="9">金融/银行/投资/基金/证券</option>
												<option value="10">保险</option>
												<option value="11">房地产/建筑/建材/工程</option>
												<option value="12">家居/室内设计/装饰装潢</option>
												<option value="13">物业管理/商业中心</option>
												<option value="14">广告/会展/公关/市场推广</option>
												<option value="15">媒体/出版/影视/文化/艺术</option>
												<option value="16">印刷/包装/造纸</option>
												<option value="17">咨询/管理产业/法律/财会</option>
												<option value="18">教育/培训</option>
												<option value="19">检验/检测/认证</option>
												<option value="20">中介服务</option>
												<option value="21">贸易/进出口</option>
												<option value="22">零售/批发</option>
												<option value="23">快速消费品（食品/饮料/烟酒/化妆品</option>
												<option value="24">耐用消费品（服装服饰/纺织/皮革/家具/家电）</option>
												<option value="25">办公用品及设备</option>
												<option value="26">礼品/玩具/工艺美术/收藏品</option>
												<option value="27">大型设备/机电设备/重工业</option>
												<option value="28">加工制造（原料加工/模具）</option>
												<option value="29">汽车/摩托车（制造/维护/配件/销售/服务）</option>
												<option value="30">交通/运输/物流</option>
												<option value="31">医药/生物工程</option>
												<option value="32">医疗/护理/美容/保健</option>
												<option value="33">医疗设备/器械</option>
												<option value="34">酒店/餐饮</option>
												<option value="35">娱乐/体育/休闲</option>
												<option value="36">旅游/度假</option>
												<option value="37">石油/石化/化工</option>
												<option value="38">能源/矿产/采掘/冶炼</option>
												<option value="39">电气/电力/水利</option>
												<option value="40">航空/航天</option>
												<option value="41">学术/科研</option>
												<option value="42">政府/公共事业/非盈利机构</option>
												<option value="43">环保</option>
												<option value="44">农/林/牧/渔</option>
												<option value="45">跨领域经营</option>
												<option value="46">其它</option></select>
										</div>
									</div>

									<div class="item">
										<span class="label">&nbsp;</span>
										<div class="fl">
											<a clstag="homepage|keycount|home2013|infomorebtn"
												href="javascript:void(0)" class="btn-5"
												onclick="updateMoreUserInfo()">保存</a>
										</div>
									</div>
								</div>
							</div>
							<div class="clr"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--container end-->

	<!--main-->
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
	<!--service end-->
	<!--footer start-->

	<!--footer end-->
	<script type="text/javascript" src="//wl.jd.com/wl.js"></script>


	<script type="text/javascript"
		src="//misc.360buyimg.com/user/myjd-2015/widget/??common/common.js"
		source="widget"></script>

	<script type="text/javascript">
    var ucidShow="";
    if(ucidShow == ""){
        $("#cidInputDIv").show();
    }else{
        $("#cidShowDiv").show();
    }

    if(0==1){
        $("input[name=maritalStatus]").get(1).checked=true;
    }else if(0==2){
        $("input[name=maritalStatus]").get(2).checked=true;
    }else if(0==3){
        $("input[name=maritalStatus]").get(3).checked=true;
    }
</script>
	<script type="text/javascript" src="js/userinfomore.js"></script>

	<!--main-->
</body>
</html>
