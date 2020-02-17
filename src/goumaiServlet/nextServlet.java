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
/*    */ import javax.servlet.http.HttpSession;
/*    */ import jiang.chuliyonghu;
/*    */ import jing11.nextstep;
/*    */ import yingselei.kuyingsr;
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
/*    */ @WebServlet({"/nextServlet"})
/*    */ public class nextServlet
/*    */   extends HttpServlet
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 38 */     HttpSession session = request.getSession();
/* 39 */     PrintWriter out = response.getWriter();
/* 40 */     String phone = request.getParameter("MobilePhone6");
/* 41 */     String number = request.getParameter("VerificationCode6");
/* 42 */     String pn1 = "xieting";
/* 43 */     pn1 = (String)session.getAttribute("phonenumber");
/* 44 */     nextstep jiangqibin = new nextstep();
/*    */     
/* 46 */     int xieting = jiangqibin.Judge(pn1, phone, number);
/* 47 */     if (xieting == 1) {
/* 48 */       shiyanDAO dao1 = new shiyanDAOImg();
/* 49 */       kuyingsr chaxun1 = null;
/* 50 */       chaxun1 = (kuyingsr)dao1.select1(phone);
/* 51 */       if (chaxun1 != null) {
/* 52 */         String chuliming = chaxun1.getYonghuming();
/* 53 */         chuliyonghu change = new chuliyonghu();
/* 54 */         chuliming = change.chuli(chuliming);
/* 55 */         out.print(phone + chuliming);
/*    */       } else {
/* 57 */         int congyan = xieting * 10 + 5;
/* 58 */         out.print(congyan);
/*    */       }
/*    */     } else {
/* 61 */       int congyan = xieting * 4 + 27;
/* 62 */       out.print(congyan);
/*    */     }
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */ 
/*    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 72 */     doGet(request, response);
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\goumaiServlet\nextServlet.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */