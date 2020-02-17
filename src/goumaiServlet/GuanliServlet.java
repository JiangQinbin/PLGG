/*    */ package goumaiServlet;
/*    */ 
/*    */ import java.io.IOException;
/*    */ import java.io.PrintWriter;
/*    */ import javax.servlet.ServletException;
/*    */ import javax.servlet.annotation.WebServlet;
/*    */ import javax.servlet.http.HttpServlet;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ import javax.servlet.http.HttpServletResponse;
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
/*    */ @WebServlet({"/GuanliServlet"})
/*    */ public class GuanliServlet
/*    */   extends HttpServlet
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 31 */     PrintWriter out = response.getWriter();
/* 32 */     String username = request.getParameter("username");
/* 33 */     String mima = request.getParameter("mima");
/* 34 */     if (!username.equals("jqb520xt")) {
/* 35 */       out.print("1");
/* 36 */     } else if (!mima.equals("xieting0427")) {
/* 37 */       out.print("2");
/*    */     }
/*    */     else {
/* 40 */       out.print("3");
/*    */     }
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 49 */     doGet(request, response);
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\goumaiServlet\GuanliServlet.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */