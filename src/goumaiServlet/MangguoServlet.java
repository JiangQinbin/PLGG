/*    */ package goumaiServlet;
/*    */ 
/*    */ import com.google.gson.JsonObject;
/*    */ import java.io.IOException;
/*    */ import java.io.PrintWriter;
/*    */ import javax.servlet.ServletException;
/*    */ import javax.servlet.annotation.WebServlet;
/*    */ import javax.servlet.http.HttpServlet;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ import javax.servlet.http.HttpServletResponse;
/*    */ import jiang.Mangoprice;
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
/*    */ 
/*    */ 
/*    */ 
/*    */ @WebServlet({"/MangguoServlet"})
/*    */ public class MangguoServlet
/*    */   extends HttpServlet
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 37 */     PrintWriter out1 = response.getWriter();
/* 38 */     Mangoprice mangoprice9 = new Mangoprice();
/* 39 */     JsonObject jsonObject1 = new JsonObject();
/* 40 */     jsonObject1 = mangoprice9.price();
/* 41 */     out1.print(jsonObject1);
/* 42 */     out1.flush();
/* 43 */     out1.close();
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


/* Location:              F:\jiang\WEB-INF\classes\!\goumaiServlet\MangguoServlet.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */