/*    */ package goumaiServlet;
/*    */ 
/*    */ import dingcengjiekou.OrderInformationDAOlmg;
/*    */ import java.io.IOException;
import java.sql.SQLException;

/*    */ import javax.servlet.ServletException;
/*    */ import javax.servlet.annotation.WebServlet;
/*    */ import javax.servlet.http.HttpServlet;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ import javax.servlet.http.HttpServletResponse;
/*    */ import javax.servlet.http.HttpSession;
/*    */ import yingselei.OrderInformation;
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
/*    */ 
/*    */ @WebServlet({"/GenggongServlet"})
/*    */ public class GenggongServlet
/*    */   extends HttpServlet
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 33 */     
/* 34 */     String dingdanhao = request.getParameter("dingdanhao");
/* 35 */     String jiaoyihao = request.getParameter("jiaoyihao");
/* 36 */     float total_amount=Float.parseFloat(request.getParameter("actualPayment"));
/* 37 */     OrderInformationDAOlmg kkk = new OrderInformationDAOlmg();
/* 38 */     try {
	boolean mm=kkk.update1(dingdanhao,jiaoyihao, total_amount);
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
/* 39 */     
/* 40 */        
/* 42 */     
/* 43 */    
/* 44 */     
/* 45 */     
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */ 
/*    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 54 */     doGet(request, response);
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\goumaiServlet\GenggongServlet.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */