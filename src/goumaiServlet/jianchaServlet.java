/*    */ package goumaiServlet;
/*    */ 
/*    */ import dingcengjiekou.shiyanDAO;
/*    */ import dingcengjiekou.shiyanDAOImg;
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
/*    */ 
/*    */ @WebServlet({"/jianchaServlet"})
/*    */ public class jianchaServlet
/*    */   extends HttpServlet
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 34 */     response.setContentType("text/html; charset=UTF-8");
/* 35 */     PrintWriter out1 = response.getWriter();
/*    */     
/* 37 */     String username = request.getParameter("username112");
/* 38 */     shiyanDAO dao = new shiyanDAOImg();
/* 39 */     if (dao.select(username) != null) {
/* 40 */       out1.print("该用户名已存在！");
/*    */     } else {
/* 42 */       out1.print("");
/*    */     }
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 51 */     doGet(request, response);
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\goumaiServlet\jianchaServlet.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */