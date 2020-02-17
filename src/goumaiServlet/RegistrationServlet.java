/*    */ package goumaiServlet;
/*    */ 
/*    */ import java.io.IOException;
/*    */ import java.io.PrintWriter;
/*    */ import javax.servlet.ServletException;
/*    */ import javax.servlet.annotation.WebServlet;
/*    */ import javax.servlet.http.HttpServlet;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ import javax.servlet.http.HttpServletResponse;
/*    */ import javax.servlet.http.HttpSession;
/*    */ import jiang.RegistrationClass;
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
/*    */ @WebServlet({"/RegistrationServlet"})
/*    */ public class RegistrationServlet
/*    */   extends HttpServlet
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 35 */     PrintWriter out = response.getWriter();
/* 36 */     response.setContentType("text/html");
/* 37 */     HttpSession session = request.getSession();
/* 38 */     String username = request.getParameter("username6");
/* 39 */     String password = request.getParameter("password6");
/* 40 */     String nicheng = request.getParameter("nicheng6");
/* 41 */     if (nicheng == "") {
/* 42 */       nicheng = username;
/*    */     }
/* 44 */     String shoujihao = (String)session.getAttribute("Mphoneno2");
/*    */     
/* 46 */     if (RegistrationClass.registrationZC(username, password, nicheng, shoujihao)) {
/* 47 */       out.print("congyan");
/*    */     } else {
/* 49 */       out.print("xieting");
/*    */     }
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 58 */     doGet(request, response);
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\goumaiServlet\RegistrationServlet.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */