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
/*    */ import javax.servlet.http.HttpSession;
/*    */ import jiang.AddressConnection;
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
/*    */ @WebServlet({"/QueryAddressServlet"})
/*    */ public class QueryAddressServlet
/*    */   extends HttpServlet
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 36 */     HttpSession session = request.getSession();
/* 37 */     PrintWriter out = response.getWriter();
/* 38 */     String username = (String)session.getAttribute("yonghux");
/* 39 */     AddressConnection MM = new AddressConnection();
/* 40 */     JsonObject jsonObject1 = new JsonObject();
/* 41 */     jsonObject1 = MM.address(username);
/* 42 */     out.print(jsonObject1);
/* 43 */     out.flush();
/* 44 */     out.close();
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 52 */     doGet(request, response);
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\goumaiServlet\QueryAddressServlet.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */