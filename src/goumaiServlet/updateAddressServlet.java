package goumaiServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dingcengjiekou.AddressInformationDAOlmg;
import yingselei.UserAddress;

/**
 * Servlet implementation class updateAddressServlet
 */
@WebServlet("/updateAddressServlet")
public class updateAddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateAddressServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session = request.getSession();
		    PrintWriter out = response.getWriter();
		             String username = (String)session.getAttribute("yonghux");
		             
		             String consigneeName = request.getParameter("consigneeName");
		             String provinceId = request.getParameter("provinceId");
		             String cityId = request.getParameter("cityId");
		             String countyId = request.getParameter("countyId");
		             String townId = request.getParameter("townId");
		             String consigneeAddress = request.getParameter("consigneeAddress");
		             String mobile = request.getParameter("mobile");
		             String fullAddress = request.getParameter("fullAddress");
		             String addressID = request.getParameter("addressId");
		             UserAddress userAddress = new UserAddress(username, consigneeName, provinceId, cityId, countyId,townId,consigneeAddress,mobile,fullAddress,addressID);
		             AddressInformationDAOlmg kk = new AddressInformationDAOlmg();
		             boolean bb = kk.update1(userAddress);
		             if(bb){
		             	List<UserAddress> list = kk.select3(username);
		             	String div="";
		             	int  n = list.size();
		             	String dev2="";
		             	String dev1="<div >"+
		 	                "<div id='addressList' class='mod-main mod-comm'>"+
		 	    				"<div class='mt'>"+
		 	"<a id='edit-add-dialog' onclick='alertAddAddressDiag()' class='e-btn add-btn btn-5' href='javascript:;'>新增收货地址</a>"+
		 	"<span class='ftx-03'>您已创建<span id='addressNum_top' class='ftx-02'>"+n+"</span>个收货地址，最多可创建<span class='ftx-02'>10</span>个</span>"+
		 "</div>";
		               String dev3= "<div class='mt' id='addAddressDiv_bottom'>"+
		 		"<a onclick='alertAddAddressDiag()' class='e-btn add-btn btn-5' href='javascript:;'>新增收货地址</a>"+
		 		"<span class='ftx-03'>您已创建<span id='addressNum_botton' class='ftx-02'>"+n+"</span>个收货地址，最多可创建<span class='ftx-02'>10</span>个</span>"+
		 	"</div>"+
		 	    			"</div>"+
		 	            "</div>";
		               for (int i = 0; i < n; i++) {
		             	  UserAddress address = (UserAddress)list.get(i);
		             		String dvi="<div class='mc'>"+
		     						"<div class='sm easebuy-m ' id='addresssDiv-"+address.getAddressID()+"'>"+
		     						"<div class='smt'>"+
		     							"<h3>"+
		     							address.getConsigneeName()+
		     							"</h3>"+
		     							"<div class='extra'>"+
		     							"<a onclick='alertDelAddressDiag("+address.getAddressID()+");' class='del-btn' href='#none'>删除</a>"+
		     		                "</div>"+
		     						"</div>"+

		     						"<div class='smc'>"+
		     							"<div class='items new-items'>"+
		     								"<div class='item-lcol'>"+
		     									"<div class='item'>"+
		     										"<span class='label'>收货人：</span>"+
		     										"<div class='fl'>"+address.getConsigneeName()+"</div>"+
		     										"<div class='clr'></div>"+
		     									"</div>"+
		     									"<div class='item'>"+
		     										"<span class='label'>所在地区：</span>"+
		     										"<div class='fl'>"+address.getFullAddress().replaceAll(address.getConsigneeAddress(), "")+"</div>"+
		     										"<div class='clr'></div>"+
		     									"</div>"+
		     									"<div class='item'>"+
		     										"<span class='label'>地址：</span>"+
		     										"<div class='fl'>"+address.getConsigneeAddress()+"</div>"+
		     										"<div class='clr'></div>"+
		     									"</div>"+
		     									"<div class='item'>"+
		     										"<span class='label'>手机：</span>"+
		     										"<div class='fl'>"+address.getMobile()+"</div>"+
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
		     											"onclick='alertUpdateAddressDiagByoverseas("+address.getAddressID()+",0);'>编辑</a>"+
		     											"<a class='ml10 ftx-05'"+
		     											"href='javascript:makeAddressAllDefaultByoverseas('853490379',0);'>&nbsp;&nbsp;&nbsp;&nbsp;</a>"+
		     									"</div>"+
		     								"</div>"+
		     								"<div class='clr'></div>"+
		     							"</div>"+
		     						"</div>"+
		     					"</div>"+
		     				"</div>";
		     				    	dev2+=dvi;
		             		    
		             		    }
		               div=dev1+dev2+dev3;
		             	out.print(div);
		                 out.close();
		             }else{
		             	return;
		             }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
