/*    */ package dengluServlet;
/*    */ 
/*    */ import java.io.IOException;
/*    */ import java.io.PrintWriter;
/*    */ import javax.servlet.RequestDispatcher;
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
/*    */ @WebServlet({"/xiugai"})
/*    */ public class xiugai
/*    */   extends HttpServlet
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 30 */     request.setCharacterEncoding("UTF-8");
/* 31 */     response.setCharacterEncoding("UTF-8");
/* 32 */     HttpSession session = request.getSession();
/* 33 */     String baobei8 = (String)session.getAttribute("manguo9");
/* 34 */     String danjia8 = (String)session.getAttribute("danjia9");
/* 35 */     String shuliang8 = (String)session.getAttribute("shuliang9");
/* 36 */     String xingming8 = (String)session.getAttribute("xingming9");
/* 37 */     String dianhua8 = (String)session.getAttribute("dianhua9");
/* 38 */     String dizhi8 = (String)session.getAttribute("dizhi9");
/* 39 */     request.setAttribute("manguo66", baobei8);
/* 40 */     request.setAttribute("danjia6", danjia8);
/* 41 */     request.setAttribute("shuliang5", shuliang8);
/* 42 */     request.setAttribute("xingming5", xingming8);
/* 43 */     request.setAttribute("dianhua5", dianhua8);
/* 44 */     request.setAttribute("dizhi5", dizhi8);
/*    */     
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/* 51 */     request.getRequestDispatcher("dingdan.jsp").forward(request, response);
/*    */     
/* 53 */     response.getWriter().append("Served at: ").append(request.getContextPath());
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 61 */     doGet(request, response);
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\dengluServlet\xiugai.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */