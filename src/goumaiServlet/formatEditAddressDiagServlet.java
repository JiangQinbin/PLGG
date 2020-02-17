package goumaiServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dingcengjiekou.AddressInformationDAOlmg;
import yingselei.UserAddress;

/**
 * Servlet implementation class formatEditAddressDiagServlet
 */
@WebServlet("/formatEditAddressDiagServlet")
public class formatEditAddressDiagServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public formatEditAddressDiagServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		 HttpSession session = request.getSession();
		String userneme = (String)session.getAttribute("yonghux");
		String addressID = request.getParameter("addressId");
		AddressInformationDAOlmg addressDAO = new AddressInformationDAOlmg();
		UserAddress UA = addressDAO.select6(userneme, addressID);
		String div="<div class='m' id='edit-cont'>"+
		      	"<div class='mc'>"+
				"<div class='form'>"+
		            "<input id='is-recommend-area' value='true' style='display: none'>"+
		            "<input id='ip-address-level1-whiteList' value='' style='display: none'>"+
		            "<input id='autoMapping' value='0' style='display: none'>"+
		            "<input id='edit-provinceId' value='"+UA.getProvinceId()+"' style='display: none'>"+
		            "<input id='edit-cityId' value='"+UA.getCityId()+"' style='display: none'>"+
		            "<input id='edit-countyId' value='"+UA.getCountyId()+"' style='display: none'>"+
		            "<input id='edit-townId' value='"+UA.getTownId()+"' style='display: none'>"+
		            "<input id='ip-address-special-provinces' value='' style='display: none'>"+
		            "<input id='ip-address-provinceJDCode' value='"+UA.getProvinceId()+"' style='display: none'>"+

					"<div class='item'>"+
						"<span class='label'><em>*</em>收货人：</span>"+
						"<div class='fl'>"+
							"<input id='consigneeName' value='"+UA.getConsigneeName()+"' type='text' class='text' onblur='checkConsigneeName()'>"+
							"<span id='consigneeNameNote' class='error-msg hide'></span>"+
						"</div>"+
						"<div class='clr'></div>"+
					"</div>"+

					               " <!-- 有推荐功能的地址菜单 -->"+
		                "<div class='item' id='recommend-area'>"+
		                  "  <span class='label'><em>*</em>所在地区：</span>"+
		                   " <div id='jd_area' class='ui-area-wrap fl'>"+
		                        "<div class='ui-area-text-wrap'>"+
		                            "<div class='ui-area-text' data-id='22-1930-50947-52198' title=''></div>"+
		                           " <b></b>"+
		                        "</div>"+
		                       " <div class='ui-area-content-wrap ui-area-w-max'>"+
		                           " <div class='ui-area-tab'><a class='ui-switchable-item' data-id='22' title='四川'><em>四川</em><i></i></a><a class='ui-switchable-item' data-id='1930' title='成都市'><em>成都市</em><i></i></a><a class='ui-switchable-item' data-id='50947' title='武侯区'><em>武侯区</em><i></i></a><a class='ui-switchable-item ui-area-current' data-id='52198' title='城区'><em>城区</em><i></i></a></div>"+
		                            "<div class='ui-area-content'><div style='display: none;' class='ui-switchable-panel' data-index='0'><ul class='ui-area-content-list'><li><a data-id='1' href='javascript:void(0)'>北京</a></li><li><a data-id='2' href='javascript:void(0)'>上海</a></li><li><a data-id='3' href='javascript:void(0)'>天津</a></li><li><a data-id='4' href='javascript:void(0)'>重庆</a></li><li><a data-id='5' href='javascript:void(0)'>河北</a></li><li><a data-id='6' href='javascript:void(0)'>山西</a></li><li><a data-id='7' href='javascript:void(0)'>河南</a></li><li><a data-id='8' href='javascript:void(0)'>辽宁</a></li><li><a data-id='9' href='javascript:void(0)'>吉林</a></li><li><a data-id='10' href='javascript:void(0)'>黑龙江</a></li><li><a data-id='11' href='javascript:void(0)'>内蒙古</a></li><li><a data-id='12' href='javascript:void(0)'>江苏</a></li><li><a data-id='13' href='javascript:void(0)'>山东</a></li><li><a data-id='14' href='javascript:void(0)'>安徽</a></li><li><a data-id='15' href='javascript:void(0)'>浙江</a></li><li><a data-id='16' href='javascript:void(0)'>福建</a></li><li><a data-id='17' href='javascript:void(0)'>湖北</a></li><li><a data-id='18' href='javascript:void(0)'>湖南</a></li><li><a data-id='19' href='javascript:void(0)'>广东</a></li><li><a data-id='20' href='javascript:void(0)'>广西</a></li><li><a data-id='21' href='javascript:void(0)'>江西</a></li><li class='ui-area-current'><a data-id='22' href='javascript:void(0)'>四川</a></li><li><a data-id='23' href='javascript:void(0)'>海南</a></li><li><a data-id='24' href='javascript:void(0)'>贵州</a></li><li><a data-id='25' href='javascript:void(0)'>云南</a></li><li><a data-id='26' href='javascript:void(0)'>西藏</a></li><li><a data-id='27' href='javascript:void(0)'>陕西</a></li><li><a data-id='28' href='javascript:void(0)'>甘肃</a></li><li><a data-id='29' href='javascript:void(0)'>青海</a></li><li><a data-id='30' href='javascript:void(0)'>宁夏</a></li><li><a data-id='31' href='javascript:void(0)'>新疆</a></li><li><a data-id='52993' href='javascript:void(0)'>港澳</a></li><li><a data-id='32' href='javascript:void(0)'>台湾</a></li><li><a data-id='84' href='javascript:void(0)'>钓鱼岛</a></li></ul></div></div>"+
		                            "<div class='ui-area-close'></div>"+
		                        "</div>"+
		                        "<span class='error-msg' id='areaNote'></span>"+
		                    "</div>"+
		                "</div>"+

		                "<div class='item' id='recommendAdd' style='display: none;'>"+
		                    "<div class='fl consignee-auto-tip'>"+
		                        "<i class='arrow-up'></i>"+
		                        "<div id='recommendAddList'>"+
		                        "</div>"+
		                    "</div>"+
		                "</div>"+
					
					
					"<div class='item'>"+
						"<span class='label'><em>*</em>详细地址：</span>"+
						"<div class='fl'>"+
							"<span style='float: left;margin-right: 5px;line-height:32px;' id='areaName'></span>"+
							"<input id='consigneeAddress' value='"+UA.getConsigneeAddress()+"' type='text' class='text text1' onblur='checkConsigneeAddress()'>"+
						"</div>"+
						"<span class='error-msg' id='consigneeAddressNote'></span>"+
						"<div class='clr'></div>"+
					"</div>"+
					"<div class='item'>"+
						"<div class='fl'>"+
							"<span class='label'><em>*</em>手机号码：</span>"+
							"<input id='consigneeMobile' value='"+UA.getMobile()+"' type='text' maxlength='11' class='text' onblur='checkMobile()' onfocus='if(value == defaultValue){value='';}' onkeyup='checkMobile()'>"+
						"</div>"+
						"<div class='fl'><span class='extra-span ftx-03'>或</span></div>"+
						"<div class='fl'>"+
							"<span class='label'>固定电话：</span>"+
							"<input id='consigneePhone' value='' type='text' class='text' onblur='checkMobile()' onfocus='if(value == defaultValue){value='+';}'>"+
							"<span class='error-msg hide' id='consigneeMobileNote'></span>"+
							"<span class='clr'></span>"+
						"</div>"+
						"<div class='clr'></div>"+
					"</div>"+
					"<div class='item'>"+
						"<span class='label'>邮箱：</span>"+
						"<div class='fl'>"+
							"<input id='consigneeEmail' value='' maxlength='50' type='text' class='text text1' onblur='checkEmailNew()' onfocus='if(value == defaultValue){value='+';}'>"+
							"<span class='error-msg hide' id='emailNote'></span>"+
						"</div>"+
						"<div class='clr'></div>"+
					"</div>"+
					"<div class='item'>"+
		              " <span class='label'>地址别名：</span>"+
		                "<div class='fl'>"+
		                	"<input id='consigneeAlias_old' value='' type='hidden'>"+
		                    "<input id='consigneeAlias' value='' type='text' class='text' onblur='checkConsigneeAlias('consigneeAlias')'>"+
		                    "<span class='error-msg' id='error_consigneeAlias'></span>"+
		                    "<span class='ftx-03'>建议填写常用名称</span>"+
		                    "<span class='addr-alias'>"+
		                       " <a href='javascript:setEditAddressAilas('home');' id='home'>家里</a>"+
								"<a href='javascript:setEditAddressAilas('parentHome');' id='parentHome'>父母家</a>"+
								"<a href='javascript:setEditAddressAilas('company');' id='company'>公司</a>"+
		                    "</span>"+
		               " </div>"+
		               " <div class='clr'></div>"+
		            "</div>"+

					"<div class='btns'>"+
						"<a href='javascript:;' onclick='editAddress("+UA.getAddressID()+");' class='e-btn btn-9 save-btn'>保存收货地址</a>"+
						"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"+
								"	</div>"+
				"</div>"+
			"</div>"+
		"</div>";
		out.print(div);
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
