<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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

						</dl>
					</div>
				</div>

				<div id="main">
					<div class="mod-main">
						<div class="mt">
							<ul class="extra-l">
								<li class="fore-1"><a href="/LGG/userInfo.jsp">基本信息</a></li>
								<li class="fore-2"><a class="curr"
									href="/LGG/userInfoShowlmg.jsp">头像照片</a></li>

								<li class="fore-3"><a href="/LGG/userInfomore.jsp">更多个人信息</a></li>

							</ul>
						</div>
						<div class="mc update-face-cont">
							<div class="update-lcol">
								<div class="mb10">
									<object id="SWFUpload_0" type="application/x-shockwave-flash"
										data="/commons/swfupload.swf?preventswfcaching=1541167827556"
										width="202" height="34" class="swfupload">
										<param name="wmode" value="transparent">
										<param name="movie"
											value="/commons/swfupload.swf?preventswfcaching=1541167827556">
										<param name="quality" value="high">
										<param name="menu" value="false">
										<param name="allowScriptAccess" value="always">
										<param name="flashvars"
											value="movieName=SWFUpload_0&amp;uploadURL=%2Fuser%2Fupload%2Fimage.action&amp;useQueryString=false&amp;requeueOnError=false&amp;httpSuccess=&amp;assumeSuccessTimeout=0&amp;params=flashuploadimg%3D79A107C75563FF717F05BECAC80D8A9E3145E96F243B0C1EE43D408D754F245706F4639D539B7662F6BE10D1355418BC3F707F6574BADA9856BC754F8B0410820EBAE04F6862D705F3B48FF932C5B0DC8CEC219AC9EEC2419672CFD1B01711D60623BFDFACF10958E47D7D17A8A01406945F7D76FBFFAF662FA3044BB40D3296&amp;filePostName=file&amp;fileTypes=*.jpg%3B*.gif%3B*.png%3B*.jpeg%3B*.bmp&amp;fileTypesDescription=img&amp;fileSizeLimit=4%20MB&amp;fileUploadLimit=0&amp;fileQueueLimit=0&amp;debugEnabled=false&amp;buttonImageURL=%2Fimages%2Fperfect_bg.jpg&amp;buttonWidth=202&amp;buttonHeight=34&amp;buttonText=&amp;buttonTextTopPadding=0&amp;buttonTextLeftPadding=0&amp;buttonTextStyle=color%3A%20%23000000%3B%20font-size%3A%2016pt%3B&amp;buttonAction=-100&amp;buttonDisabled=false&amp;buttonCursor=-1">
									</object>
									<img id="loading" class="float:left" src="/images/loading.gif"
										style="display: none">
									<div id="messages"
										style="border: 1px solid #DB9A9A; background-color: #FFE8E8; color: #CC0000; text-align: left; display: none"></div>
									<input id="btnCancel" type="hidden"
										clstag="pageclick|keycount|201602251|5">
									<div class="ftx03">仅支持JPG、GIF、PNG、JPEG、BMP格式，文件小于4M</div>
								</div>
								<div class="img-b-cont img-cont ">
									<!--<div class="tip">编辑预览区</div>-->
									<div class="img-b">
										<img id="bigImage" name="bigImage" alt="" width="150"
											height="150" src="picture/HeadPortrait.jpg">
									</div>
								</div>


							</div>
							<div class="update-rcol">
								<div class="smt">
									<h3>效果预览</h3>
								</div>
								<div class="smc">
									你上传的图片会自动生成2种尺寸，请注意小尺寸的头像是否清晰
									<div class="img-m-cont img-cont">
										<div class="img-s">
											<img id="midImage" name="midImage" src="">
										</div>
									</div>
									100*100像素
									<div class="img-s-cont img-cont">
										<div class="img-s">
											<img id="smaImage" name="smaImage" src="">
										</div>
									</div>
									50*50像素
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

	<script type="text/javascript" src="js/swfupload.js"></script>
	<script type="text/javascript" src="js/handlers.js"></script>
	<script type="text/javascript" src="js/userinfoupload.js"></script>
	<script type="text/javascript">
    document.domain=pageConfig.FN_getDomain();
    $(document).ready(function() {
    $("#bigImage").attr('src',"/images/no-img.jpg");
        var settings = {
            flash_url : "/commons/swfupload.swf",
            upload_url: "/user/upload/image.action",
            post_params: {"flashuploadimg":"3FA20C08DC31DD33AA461C1D655A08DBDA7A6FE15A85D6AC8CC0045E02D9BCBE1D93C7EDF7C8E8D92A413155E9C7498F284EDAFDB9BA353F64C887AAF2588528A7E5EBE8C1768397EC52939616CA0E000BD0918ECA6AA5A3E4265BA2B2E1A7A54DA82326C494068CD8E68A1134B7432F702C62FDA7C2E7BA115B439B49F48DE1"},
            file_post_name : "file",
            file_size_limit : "4 MB",
            file_types : "*.jpg;*.gif;*.png;*.jpeg;*.bmp",
            file_types_description : "img",
            custom_settings : {
                cancelButtonId : "btnCancel"
            },
            debug: false,
            // Button settings
            button_image_url: "/images/perfect_bg.jpg",
            button_width: "202",
            button_height: "34",
            button_placeholder_id: "spanButtonPlaceHolder",
            button_action:SWFUpload.BUTTON_ACTION.SELECT_FILE,
            button_window_mode:"transparent",
            file_queued_handler : fileQueued,
            file_queue_error_handler : fileQueueError,
            file_dialog_complete_handler : fileDialogComplete,
            upload_error_handler : uploadError,
            upload_success_handler : uploadSuccess

        };
        swfu = new SWFUpload(settings);
    });

    function froward(){
        alert("头像上传成功");
        window.location.reload(true);
    }
    function showMessages(str){
        document.getElementById("messages").style.display = "block";
        $("#messages").html(str);
    }

    $(".imgUl").children().click(
            function () {
                if($(this).attr("class")=="" ||$(this).attr("class")==undefined){
                    $(".imgUl").children().each(function(){
                        $(this).removeClass("selected");
                    });
                    $(this).addClass("selected");
                }else{
                    $(this).removeClass("selected");
                }
            }
    )
</script>

	<!--main-->
</body>
</html>
