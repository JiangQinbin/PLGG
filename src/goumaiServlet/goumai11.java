/*    */ package goumaiServlet;
/*    */ 
/*    */ import java.io.IOException;
/*    */ import javax.servlet.RequestDispatcher;
/*    */ import javax.servlet.ServletException;
/*    */ import javax.servlet.annotation.WebServlet;
/*    */ import javax.servlet.http.HttpServlet;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ import javax.servlet.http.HttpServletResponse;
/*    */ import jing11.goumai;
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
/*    */ @WebServlet({"/goumai11"})
/*    */ public class goumai11
/*    */   extends HttpServlet
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 32 */     String danjia111 = request.getParameter("mmmm");
/* 33 */     goumai bbb = new goumai();
/* 34 */     int jia = bbb.goumaimangguo(danjia111);
/* 35 */     String guo = bbb.goumaimangguo1(danjia111);
/* 36 */     if (bbb.panduanmangguo(guo, jia)) {
/* 37 */       request.setAttribute("manguo66", guo);
/* 38 */       request.setAttribute("danjia6", Integer.valueOf(jia));
/* 39 */       request.setAttribute("shuliang5", "");
/* 40 */       request.setAttribute("xingming5", "");
/* 41 */       request.setAttribute("dianhua5", "");
/* 42 */       request.setAttribute("dizhi5", "");
/* 43 */       request.getRequestDispatcher("dingdan.jsp").forward(request, response);
/*    */     } else {
/* 45 */       response.sendRedirect("dengcuowu.jsp");
/*    */     }
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 54 */     doGet(request, response);
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\goumaiServlet\goumai11.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */