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
/*    */ import jing11.GenerateRandomNumbers;
/*    */ import yanzhengma.fasongyanzhengma;
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
/*    */ @WebServlet({"/SendVCodeServlet"})
/*    */ public class SendVCodeServlet
/*    */   extends HttpServlet
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 36 */     HttpSession session = request.getSession();
/* 37 */     PrintWriter out = response.getWriter();
/* 38 */     session.setMaxInactiveInterval(1200);
/* 39 */     GenerateRandomNumbers number = new GenerateRandomNumbers();
/* 40 */     String phone = request.getParameter("Mphoneno1");
/* 41 */     String number1 = number.RandomNumbers();
/* 42 */     String bString = "";
/* 43 */     fasongyanzhengma cod = new fasongyanzhengma();
/* 44 */     bString = cod.Sendverificationcode(phone, number1);
/* 45 */     String pn = phone + number1;
/* 46 */     session.setAttribute("phonenumber", pn);
/* 47 */     session.setAttribute("Mphoneno2", phone);
/* 48 */     out.print(bString);
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 56 */     doGet(request, response);
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\goumaiServlet\SendVCodeServlet.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */