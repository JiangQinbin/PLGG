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
/*    */ @WebServlet({"/DanjiaServlet"})
/*    */ public class DanjiaServlet
/*    */   extends HttpServlet
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 32 */     PrintWriter out = response.getWriter();
/* 33 */     HttpSession session = request.getSession();
/* 34 */     String daxiao = request.getParameter("Mangodaxiao");
/* 35 */     String guige = request.getParameter("Mangoguige");
/* 36 */     float jiage1 = ((Float)session.getAttribute("daguohao")).floatValue();
/* 37 */     float jiage2 = ((Float)session.getAttribute("daguozhong")).floatValue();
/* 38 */     float jiage3 = ((Float)session.getAttribute("xiaoguohao")).floatValue();
/* 39 */     float jiage4 = ((Float)session.getAttribute("xiaoguozhong")).floatValue();
/* 40 */     if (daxiao.equals("1")) {
/* 41 */       if (guige.equals("1")) {
/* 42 */         float m = jiage3 / 2.0F + 3.0F;
/* 43 */         float dj = Math.round(m * 100.0F) / 100.0F;
/* 44 */         out.print(dj);
/*    */       }
/* 46 */       if (guige.equals("2")) {
/* 47 */         float m = jiage4 / 2.0F + 3.0F;
/* 48 */         float dj = Math.round(m * 100.0F) / 100.0F;
/* 49 */         out.print(dj);
/*    */       }
/* 51 */       if (guige.equals("3")) {
/* 52 */         out.print(jiage3);
/*    */       }
/* 54 */       if (guige.equals("4")) {
/* 55 */         out.print(jiage4);
/*    */       }
/* 57 */       if (guige.equals("5")) {
/* 58 */         float m = jiage3 * 2.0F - 3.0F;
/* 59 */         out.print(m);
/*    */       }
/* 61 */       if (guige.equals("6")) {
/* 62 */         float m = jiage4 * 2.0F - 3.0F;
/* 63 */         out.print(m);
/*    */       }
/*    */     }
/* 66 */     if (daxiao.equals("2")) {
/* 67 */       if (guige.equals("1")) {
/* 68 */         float m = jiage1 / 2.0F + 3.0F;
/* 69 */         float dj = Math.round(m * 100.0F) / 100.0F;
/* 70 */         out.print(dj);
/*    */       }
/* 72 */       if (guige.equals("2")) {
/* 73 */         float m = jiage2 / 2.0F + 3.0F;
/* 74 */         float dj = Math.round(m * 100.0F) / 100.0F;
/* 75 */         out.print(dj);
/*    */       }
/* 77 */       if (guige.equals("3")) {
/* 78 */         out.print(jiage1);
/*    */       }
/* 80 */       if (guige.equals("4")) {
/* 81 */         out.print(jiage2);
/*    */       }
/* 83 */       if (guige.equals("5")) {
/* 84 */         float m = jiage1 * 2.0F - 3.0F;
/* 85 */         out.print(m);
/*    */       }
/* 87 */       if (guige.equals("6")) {
/* 88 */         float m = jiage2 * 2.0F - 3.0F;
/* 89 */         out.print(m);
/*    */       }
/*    */     }
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 99 */     doGet(request, response);
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\goumaiServlet\DanjiaServlet.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */