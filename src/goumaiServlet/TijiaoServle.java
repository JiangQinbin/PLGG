/*    */ package goumaiServlet;
/*    */ 
/*    */ import java.io.IOException;
/*    */ import java.io.PrintStream;
/*    */ import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;

/*    */ import javax.servlet.ServletException;
/*    */ import javax.servlet.annotation.WebServlet;
/*    */ import javax.servlet.http.HttpServlet;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ import javax.servlet.http.HttpServletResponse;
/*    */ import javax.servlet.http.HttpSession;



import dingcengjiekou.OrderInformationDAOlmg;
import jiang.SimpleDateFotmatSingleton;
import yingselei.OrderInformation;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ @WebServlet({"/TijiaoServle"})
/*    */ public  class  TijiaoServle
/*    */   extends HttpServlet
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   protected synchronized void  doGet(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
	         PrintWriter out = response.getWriter();
/* 34 */     HttpSession session = request.getSession();
             SimpleDateFormat sd=SimpleDateFotmatSingleton.getSimpleDateFormat();
             String time=sd.format(System.currentTimeMillis());
/* 32 */     String userName=(String) session.getAttribute("yonghux");
             String orderID=time+userName;
             String tradingID="";
             String specifications= request.getParameter("specifications");
             String addressID=request.getParameter("addressId");
             int number=Integer.parseInt(request.getParameter("numberof"));
             String tradingTime="";
             float total_price=Float.parseFloat(request.getParameter("total_price"));
             String merchants=(String) session.getAttribute("username");
             String manguoID=(String) session.getAttribute("manguoID");
             float unit_price=Float.parseFloat((String) request.getParameter("unit_price"));
             float weightof=Float.parseFloat(request.getParameter("weightof"));
/* 33 */     int payment=0;
             String paymentTime="";
             float actualPayment=-0.0f;
/* 35 */     OrderInformation oi=new OrderInformation(orderID, tradingID, userName, specifications, addressID, number, tradingTime, total_price, merchants, manguoID, unit_price, weightof, payment,paymentTime,actualPayment);
/* 36 */     OrderInformationDAOlmg kkk = new OrderInformationDAOlmg();
            	 /*String guige= oi.getSpecifications();
                 if(guige.indexOf("20")>0) {
                	 int n = oi.getNumber();
                	 oi.setNumber(n*2);
                	 }*/
                 try {
					int r = kkk.selectM(manguoID);
					if(r-oi.getNumber()>=0) {
						boolean mm = kkk.inser(oi);
						    if(mm){
						  out.print(orderID);
						  }else{
						    out.print("001");
						  }   
					}else {
						out.print("002");
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
/* 37 */     
/* 64 */  
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   protected synchronized void doPost(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 72 */     doGet(request, response);
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\goumaiServlet\TijiaoServle.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */