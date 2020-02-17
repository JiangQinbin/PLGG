package goumaiServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dingcengjiekou.OrderInformationDAOlmg;
import yingselei.OrderQuery;

/**
 * Servlet implementation class CompleteOrderServlet
 */
@WebServlet("/CompleteOrderServlet")
public class CompleteOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CompleteOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
	    String username=request.getParameter("username");
	    OrderInformationDAOlmg orderDAO=new OrderInformationDAOlmg();
	    List<OrderQuery> list = new ArrayList<OrderQuery>();
	    list=orderDAO.select5(username);
	    String div="";
	    if(list.size()>0){
	    	int n =list.size();
	    	for(int i = 0; i < n ;i++ ){
	    		OrderQuery OQ=list.get(i);
	    		String ndiv="<li class='item'><a href='OrderServlet?mangoname="+OQ.getManguoaId()+"'"+
										"class='good' clstag='homepage|keycount|order_1530067572375|21' target='_blank'>"+
											"<img alt='' class='lrc-image  img-loaded' title=''"+
											"src='http://www.linguoguo.com.cn:8080/farmers_picture/"+OQ.getUsername()+"/"+OQ.getManguoname()+"/file1.jpg'></a>"+
									"<div class='state'"+
											"clstag='homepage|keycount|order_1530067572375|21'>"+
											"<div class='text'"+
												"title=''>您已购买"+OQ.getManguoname()+OQ.getGuige()+OQ.getNumber()+"两件"+"</div>"+
											"<div class='other'>"+
												"<div id='queding' class='type color' onclick=queding('"+OQ.getOrdernumber()+"')>确认收获</div>"+
												"<span class='spacer'></span>"+
												"<div class='type'>"+OQ.getPaymentamount()+"</div>"+
												"<span class='spacer'></span>"+
												"<div class='date'>"+OQ.getPaymentTime()+"</div>"+
											"</div>"+
										"</div>"+
										"<div id='btn' class='operate'>"+
										"<a class='link a1'"+
											"onclick=dizhi('"+OQ.getConsignee()+"','"+OQ.getPhone()+"','"+OQ.getAddress()+"')"+
											">地址信息</a>"+
												"<span class='spacer'></span>"+
												"<a class='link'"+
												"href='merchants.jsp?nonghu="+OQ.getUsername()+"'"+
												"target='_blank' rel='noopener noreferrer'"+
												"clstag='homepage|keycount|order_1530067572375|26'>"+OQ.getUsername()+"</a>"+
										"</div></li>";
	    		div+=ndiv;
	    	}
	    }else {
	    	 div="<hr><span class='ziti'>暂没有待收货订单信息！</span>";
	    }
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
