<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Expires-Type" content="0" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" CONTENT="no-cache" />
<title>账户信息</title>
<link type="text/css" rel="stylesheet"
	href="//misc.360buyimg.com/jdf/1.0.0/unit/??ui-base/5.0.0/ui-base.css,shortcut/5.0.0/shortcut.css,global-header/1.0.0/global-header.css,myjd/5.0.0/myjd.css,nav/2.0.0/nav.css,shoppingcart/2.0.0/shoppingcart.css,global-footer/5.0.0/global-footer.css,service/5.0.0/service.css,basePatch/1.0.0/basePatch.css" />
<script type="text/javascript"
	src="//misc.360buyimg.com/jdf/1.0.0/unit/??base/5.0.0/base.js,basePatch/1.0.0/basePatch.js"></script>
<link rel="stylesheet" type="text/css"
	href="//misc.360buyimg.com/user/myjd-2015/css/myjd.info.css"
	media="all">
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

	<input type="hidden" name="gBkSuuxyHn" value="wKLVi" id="otherId" />
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


						</dl>
					</div>
				</div>

				<div id="main">
					<div class="mod-main">
						<div class="mt">
							<ul class="extra-l">
								<li class="fore-1"><a class="curr" href="/LGG/userInfo.jsp">基本信息</a></li>
								<li class="fore-2"><a href="/LGG/userInfoShowlmg.jsp">头像照片</a></li>
								<li class="fore-3"><a href="/LGG/userInfomore.jsp">更多个人信息</a></li>

							</ul>
						</div>
						<div class="mc">
							<div class="user-set userset-lcol">
								<div class="form">
									<div class="item">
										<span class="label">用户名：</span>
										<div class="fl">
											<div>
												<strong>彬的购物方式</strong>
											</div>
										</div>
									</div>

									<div class="item">
										<span class="label"><em>*</em>昵称：</span>
										<div class="fl">
											<input id="code" value="" style="display: none" /> <input
												id="rkey" value="" style="display: none" /> <input
												clstag="homepage|keycount|home2013|infoname" type="text"
												class="itxt" maxlength="20" id="nickName"
												name="userVo.nickName" value="彬的购物方式">
											<div class="clr"></div>
											<div class="prompt-06">
												<span id="nickName_msg"></span>
											</div>
										</div>
									</div>
									<div class="item">
										<span class="label">性别：</span>
										<div class="fl" clstag="homepage|keycount|home2013|infoGender">
											<input type="radio" name="sex" class="jdradio" value="0"><label
												class="mr10">男</label> <input type="radio" name="sex"
												class="jdradio" value="1"><label class="mr10">女</label>
											<input type="radio" name="sex" class="jdradio" value="2"><label
												class="mr10">保密</label>
										</div>
									</div>
									<div class="item"
										clstag="homepage|keycount|home2013|infoBirthday">
										<span class="label">生日：</span>
										<div class="fl birthday-info">
											<select name="" class="selt selt1" id="birthdayYear"></select>
											<label class="ml5 mr5">年</label> <select name=""
												class="selt selt1" id="birthdayMonth"></select> <label
												class="ml5 mr5">月</label> <select name="" class="selt selt1"
												id="birthdayDay"></select> <label class="ml5 mr5">日</label>
											<span class="ftx03">填生日有惊喜哦~</span>
										</div>
									</div>


									<div class="item">
										<span class="label">邮箱：</span>
										<div class="fl" clstag="homepage|keycount|home2013|infomail">
											<div>
												<strong> </strong> <s id="email_orderly"></s>&nbsp;&nbsp;&nbsp;
												<a href="" class="ml5 ftx05"><s></s>立即验证</a>
											</div>
											<div class="clr"></div>
											<div class="prompt-06">
												<span id="email_msg"></span>
											</div>

										</div>

										<div class="clr"></div>
									</div>


									<div class="item">
										<span class="label">&nbsp;</span>
										<div class="fl">

											<a clstag="homepage|keycount|home2013|infobtn"
												href="javascript:void(0)" class="btn-5"
												onclick="updateUserInfo()">提交</a>
										</div>
									</div>
								</div>
							</div>
							<div id="user-info">
								<div class="u-pic">
									<img alt="用户头像" src="picture/HeadPortrait.jpg">
									<div class="mask"></div>
									<div class="face-link-box"></div>
									<a href="//i.jd.com/user/userinfo/showImg.html"
										class="face-link">修改头像</a>
								</div>
								<div class="info-m">
									<div>
										<B>用户名：彬的购物方式</B>
									</div>

									<!--<div class="shop-level">购物行为评级：<span><a target="_blank" href="//vip.jd.com/help_behaviorRating.html">
									<s id="userCredit" class="rank-sh rank-sh01"></s></a></span></div> -->
									<div class="u-level">
										<span class="rank jxz"> <s></s><a href="//vip.jd.com"
											target="_blank" title="586">果享值586</a>
										</span>

									</div>
									<div clstag="pageclick|keycount|201602251|4">
										小彬信用：<a href="//credit.jd.com" target="_blank">64.0 </a>
									</div>
									<div>会员类型：个人用户</div>
								</div>
							</div>
							<div class="fr ac" style="width: 280px;">
								注：修改手机和邮箱请到<a clstag="homepage|keycount|home2013|infopay"
									class="ml5 ftx05" href="">账户安全</a>
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
    if(1 == 1){
        $("#aliasArea").show();
    }else{
        $("#aliasArea").hide();
    }
    //性别初始化
    if(2==0){
        $("input[name=sex]").get(0).checked=true;
    }else if(2==1){
        $("input[name=sex]").get(1).checked=true;
    }else if(2==2){
        $("input[name=sex]").get(2).checked=true;
    }

    //生日初始化
    var originalBirthday=''.split("-");
    var originalBirthdayYear=originalBirthday[0];  // 原年份
    var originalBirthdayMonth=parseInt(originalBirthday[1],10);// 原月份
    var originalBirthdayDay=parseInt(originalBirthday[2],10);// 原日期
    //地区初始化
    var originalProvince='';//省ID
    if(originalProvince==0){
        originalProvince=1;
    }
    var originalCity='';//市ID
    if(originalCity==0){
        originalCity=72;
    }
    var originalCounty='';//县区ID
    if(originalCounty==0){
        originalCounty=2799;
    }


    $(".hobul").children().click(
            function () {
                if($(this).attr("class")=="" ||$(this).attr("class")=="i-li" ||$(this).attr("class")==undefined){
                    $(this).removeClass("i-li");
                    $(this).addClass("selected i-li");
                }else{
                    $(this).removeClass("selected i-li");
                    $(this).addClass("i-li");
                }
            }
    )
    var hobbyType='';//兴趣爱好
    if(hobbyType!=null||hobbyType!=""){
        var arr=hobbyType.split(",");
        for(var i=0;i<arr.length;i++){
            $(".hobul").children().each(function() {
                if($(this).val()==arr[i]){
                    $(this).removeClass("i-li");
                    $(this).addClass("selected i-li");
                }
            });
        }
    }

</script>
	<script type="text/javascript" src="js/common.js"></script>
	<script type="text/javascript" src="js/userInfo.js"></script>
	<!--
<script type="text/javascript" src="/js/updatePetName.js"></script>
-->
	<script type="text/javascript">
    (function () {
        var ja = document.createElement('script');
        ja.type = 'text/javascript';
        ja.async = true;
        ja.src = ('https:' == document.location.protocol ? 'https://wlssl' : 'http://wl') + '.jd.com/wl.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ja, s);
    })();
</script>
</body>
</html>
