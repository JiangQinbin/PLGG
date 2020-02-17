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
/*    */ @WebServlet({"/JianServlet"})
/*    */ public class JianServlet
/*    */   extends HttpServlet
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 31 */     PrintWriter out = response.getWriter();
/* 32 */     String number = request.getParameter("number");
/* 33 */     int number1 = Integer.parseInt(number);
/* 34 */     int jianumber1 = number1 - 1;
/* 35 */     out.print(jianumber1);
/* 36 */     out.flush();
/* 37 */     out.close();
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 45 */     doGet(request, response);
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\goumaiServlet\JianServlet.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */