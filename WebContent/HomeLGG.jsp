<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的林果果</title>
<link href="picture/HeadorPtrait.png" rel="shortcut icon">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="renderer" content="webkit" />
<link type="text/css" rel="stylesheet"
	href="//misc.360buyimg.com/jdf/1.0.0/unit/??ui-base/5.0.0/ui-base.css,shortcut/5.0.0/shortcut.css,global-header/1.0.0/global-header.css,myjd/5.0.0/myjd.css,nav/2.0.0/nav.css,shoppingcart/2.0.0/shoppingcart.css,global-footer/5.0.0/global-footer.css,service/5.0.0/service.css,basePatch/1.0.0/basePatch.css" />
<link type="text/css" rel="stylesheet"
	href="//misc.360buyimg.com/user/??myjd-2015/widget/julike/julike.css,myjd/home/2.0.2/css/app.css" />
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
</head>
<script type="text/javascript">
function prompt(){
	alert("抱歉！该功能暂未开放");
}
</script>
<body>
	<!--shortcut start-->
	<div id="shortcut-2014">
		<div class="w">
			<ul class="fl">
				<li id="ttbar-home"><i class="iconfont">&#xe608;</i><a
					href="/LGG/yici.jsp">林果果首页</a></li>
			</ul>
			<ul class="fr">
				<li class="fore1" id="ttbar-login">
					<!-- <a id="lgg1" href="yici11.jsp" class="link-login" style=display:block;>你好，请登录</a>&nbsp;&nbsp;<a id="lgg2" style=display:block; href="/LGG/Registered.jsp" class="link-regist style-red">免费注册</a>
				 --> <a id="lgg" href="/LGG/HomeLGG.jsp"
					class="link-login  style-red"><%=session.getAttribute("yonghu11") %></a>
				</li>
				<li class="spacer"></li>
				<li class="fore2">
					<div class="dt">
						<a target="_blank" href="/LGG/MyOrder.jsp">我的订单</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore2">
					<div class="dt">
						<a href="/LGG/HomeLGG.jsp">我的林果果</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore2">
					<div class="dt">
						<a onclick="prompt()">个人采购</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore2">
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
			<div style="float: left;">
				<a href="/LGG/yici.jsp" target="_blank" class="fore1"
					clstag="homepage|keycount|header_1530066058149|1"><img
					width="160px" height="80px" alt="" src="picture/HeadorPtrait1.jpg"></a>
			</div>
			<div class="title" clstag="homepage|keycount|header_1530066058149|2">我的林果果</div>
			<div class="navitems">
				<div class="dl myjd-home curr">
					<div class="dt" clstag="homepage|keycount|header_1530066058149|11">
						<span>首页</span> <b></b>
					</div>
					<div class="dd myjd-popup">
						<div class="inner">
							<a tid="_MYJD_info"
								clstag="homepage|keycount|header_1530066058149|12"
								href="/LGG/MyOrder.jsp" target="_blank"><span>订单中心</span></a> <a
								tid="_MYJD_info"
								clstag="homepage|keycount|header_1530066058149|16"
								href="/PLGG/main.jsp" target="_blank"><span>客户服务</span></a>
						</div>
					</div>
				</div>
				<div class="dl myjd-set">
					<div class="dt" clstag="homepage|keycount|header_1530066058149|21">
						<span>账户设置</span> <b></b>
					</div>
					<div class="dd myjd-popup gt5">
						<div class="inner">
							<a tid="_MYJD_info"
								clstag="homepage|keycount|header_1530066058149|22"
								target="_self" onclick="prompt()"><span>个人信息</span></a>
							<!-- <a tid="_MYJD_info" clstag="homepage|keycount|header_1530066058149|22" href="/LGG/userInfo.jsp target="_self" onclick="prompt()"><span>个人信息</span></a> -->
							<a tid="_MYJD_add"
								clstag="homepage|keycount|header_1530066058149|24"
								href="/LGG/MyAddress.jsp" target="_self"><span>收货地址</span></a> <a
								tid="_MYJD_safe" clstag="Homesafe" onclick="prompt()"><span>账户安全</span></a>

						</div>
					</div>
				</div>
			</div>
			<div class="nav-r">
				<div id="search-2014">
					<ul id="shelper" class="hide"></ul>
					<div class="form" class="homepage|keycount|header_1530066058149|3">
						<input type="text"
							onkeydown="javascript:if(event.keyCode==13) search('key');"
							autocomplete="off" id="key" accesskey="s" class="text" />
						<button onclick="" class="button cw-icon" type="button">
							<i></i>搜索
						</button>
					</div>
				</div>
				<div id="hotwords-2014"></div>
			</div>
			<div class="clr"></div>
		</div>
	</div>
	<!-- main -->
	<div>
		<iframe src="MyOrder.jsp" id="myiframe" frameborder="0" width="100%"
			height="366" scrolling="no"></iframe>
	</div>
	<!-- /main -->
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
	<div id="J-global-toolbar"></div>
	<script
		src="//misc.360buyimg.com/??jdf/1.0.0/unit/base/5.0.0/base.js,jdf/lib/jquery-1.6.4.js,jdf/1.0.0/unit/basePatch/1.0.0/basePatch.js,mtd/pc/common/js/o2_ua.js,channel/lib/1.3.0/js/media-match.js"></script>

	<script>

function setIframeHeight(iframe) {
	if (iframe) {
	var iframeWin = iframe.contentWindow || iframe.contentDocument.parentWindow;
	if (iframeWin.document.body) {
	iframe.height = iframeWin.document.documentElement.scrollHeight || iframeWin.document.body.scrollHeight;
	}
	}
	};
	window.onload = function () {
	setIframeHeight(document.getElementById('myiframe'));
	};
	
  window.pageConfig.wideVersion = true;
  $('html').addClass('root61');
	seajs.use([
        'jdf/1.0.0/unit/globalInit/5.0.0/globalInit.js',
        'jdf/1.0.0/unit/hotwords/5.0.0/hotwords',
        'jdf/1.0.0/ui/dialog/1.0.0/dialog',
        '//static.360buyimg.com/devfe/toolbar/1.0.0/js/main',
        '//misc.360buyimg.com/user/myjd-2015/js/fas',
        '//nfa.jd.com/loadFa.js?aid=0_0_6298'
      ],function(globalInit, hotwords, dialog, Toolbar){
        globalInit();
        hotwords();
        (function () {
          var ie = function () {
            var undef = void 0,
                v = 3,
                div = document.createElement('div'),
                all = div.getElementsByTagName('i');
            while (div.innerHTML = '<!--[if gt IE ' + ++v + ']><i></i><![endif]-->', all[0]) {}
            return v > 4 ? v : undef;
          }();
          var le8 = typeof ie != 'undefined' && ie < 9;
          var template = '\
            <div id="ie6tip">\
                <div class="left-con">\
                    <div></div>\
                </div>\
                <div class="right-con">\
                    <div class="tip1">您的浏览器版本过低，可能存在安全风险</div>\
                    <div class="tip2">建议您使用以下浏览器：</div>\
                    <ul class="clearfix">\
                        <li class="chrome">\
                            <a class="img" href="http://www.google.cn/chrome/browser" target="_blank"></a>\
                            <div class="title">谷歌浏览器</div>\
                            <div class="btn"><a href="http://www.google.cn/chrome/browser" target="_blank">下载</a></div>\
                        </li>\
                        <li class="qq">\
                            <a class="img" href="http://browser.qq.com" target="_blank"></a>\
                            <div class="title">QQ浏览器</div>\
                            <div class="btn"><a href="http://browser.qq.com" target="_blank">下载</a></div>\
                        </li>\
                        <li class="ie">\
                            <a class="img" href="http://www.microsoft.com/zh-cn/download/internet-explorer.aspx" target="_blank"></a>\
                            <div class="title">IE浏览器</div>\
                            <div class="btn"><a href="http://www.microsoft.com/zh-cn/download/internet-explorer.aspx" target="_blank">下载</a></div>\
                        </li>\
                    </ul>\
                </div>\
            </div>';
          if (le8) {
            $('body').dialog({
                width: 690,
                height: 320,
                title: '安全提示',
                opacity: .9,
                type: 'html',
                source: template
            });
            document.documentElement.style.overflow ='hidden';
          }
        })();
        $(function () {
          pageConfig.toolbar = new Toolbar({
            pType: 'myjdhome',
            bars: {
              jdvip: {
                enabled: false
              },
              message: {
                enabled: false
              },
              follow: {
                enabled: false
              },
              jimi: {
                enabled: true
              },
              cart: {
                enabled: false
              },
              history: {
                enabled: false
              }
            },
            links: {
              feedback: {
                index: 2,
                href: '',
                title: '调查问卷'
              },
              top:{
                index: 1,
                anchor:"javascript:window.scrollTo(0,0);"
              }
            }
          });
        });
        var Menu = {
          init : function() {
            this.setSelectItem();
            this.setPopSize();
            this.bindEvent();
            this.loadExtraMenu();
          },
          setSelectItem : function() {
            var val = $('body').attr('myjd');
            $('#' + val).addClass('curr');
          },
          setPopSize: function() {
            var $moreList = $('.menu dd[tid=_MYJD_menu_more] .myjd-popup');
            $.each($moreList, function() {
              var $this = $(this);
              var height = $this.outerHeight();
              $this.css({'height': height, 'margin-top': height / -2});
            });
          },
          loadExtraMenu : function() {
            var myjd = $('body').attr('myjd');

            //消息精灵
            $.ajax({
              url : '//joycenter.jd.com/msgCenter/getUnreadNum.action',
              dataType : 'jsonp',
              success : function(b) {
                if(b.msgUnreadCount){
                  var count = b.msgUnreadCount > 99 ? '99+' : b.msgUnreadCount;
                  $('span[tid=_MYJD_message]').append('<i>' + count + '</i>');
                }
              }
            })

            // 判断是否企业用户
            $.ajax({
              url: '//corp.jd.com/publicSoa/userInfo/getUserLevel',
              dataType: 'jsonp',
              data: {
                pin: decodeURIComponent(readCookie('pin'))
              },
              success: function (response) {
                if (response.success && response.userLevel == 90) {
                  var qiyeLinks = '<a tid="_MYJD_qyfp" clstag="homepage|keycount|header_1530066058149|32" href="//corp.jd.com/invoice/commonlist" target="_self"><span>企业发票</span></a><a tid="_MYJD_cgxq" clstag="homepage|keycount|header_1530066058149|33" href="//kw.jd.com/" target="_self"><span>采购需求单</span></a>';
                  $('#nav .navitems .myjd-set .dd .inner').append(qiyeLinks);

                  // 企业用户 把 白条 替换为 金采
                  $('#_MYJD_credit a').attr('href', '//jc.jd.com').html('企业金釆');
                }
              }
            })
          },
          bindEvent : function() {
            var mTimer, lTimer;

            $('.navitems .dl').hover(function() {
              var self = this;
              clearTimeout(mTimer);
              mTimer = setTimeout(function() {
                $(self).addClass('hover');
              }, 300);
            }, function() {
              var self = this;
              clearTimeout(mTimer);
              $(self).removeClass('hover');
            });
          }
        };
        Menu.init();
        
        var data = window.nfaData['nfa-6298'];
        
        var template = '{for item in content}<a href="${item.url}" target="_blank"><img src="${item.picUrl}" alt="" /></a>{/for}';
        
        if (data) {
          $('.container .w').append(template.process(data));
        }
        
      });
</script>
	<script
		src="//misc.360buyimg.com/user/??myjd/home/2.0.2/js/manifest.js,myjd/home/2.0.2/js/vendor.js,myjd/home/2.0.2/js/app.js,myjd-2015/widget/julike/julike.js"></script>
	<script type="text/javascript" src="//wl.jd.com/wl.js"></script>
</body>
</html>
