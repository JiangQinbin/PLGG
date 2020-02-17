/*    */ package goumaiServlet;
/*    */ 
/*    */ import java.io.IOException;
/*    */ import java.io.PrintWriter;
/*    */ import java.util.Random;
/*    */ import java.util.Vector;
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
/*    */ 
/*    */ 
/*    */ 
/*    */ @WebServlet({"/ChatServlet"})
/*    */ public class ChatServlet
/*    */   extends HttpServlet
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 35 */     response.setContentType("text/html;charset=UTF-8");
/* 36 */     String action = request.getParameter("action");
/* 37 */     if ("send".equals(action)) {
/* 38 */       send(request, response);
/* 39 */     } else if ("get".equals(action)) {
/* 40 */       get(request, response);
/*    */     }
/*    */   }
/*    */   
/*    */   public void send(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
/* 45 */     HttpSession session = request.getSession();
/*    */     
/*    */ 
/* 48 */     response.setContentType("text/html;charset=UTF-8");
/* 49 */     String user = request.getParameter("user");
/* 50 */     String speak = request.getParameter("speak");
/* 51 */     Vector<String> v = null;
/* 52 */     String message = "[" + user + "]：" + speak;
/* 53 */     if (session.getAttribute("message") == null) {
/* 54 */       v = new Vector();
/*    */     } else {
/* 56 */       v = (Vector)session.getAttribute("message");
/*    */     }
/* 58 */     v.add(message);
/* 59 */     session.setAttribute("message", v);
/* 60 */     Random random = new Random();
/* 61 */     request.getRequestDispatcher("ChatServlet?action=get&nocache=" + random.nextInt(10000)).forward(request, response);
/*    */   }
/*    */   
/* 64 */   public void get(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { response.setContentType("text/html;charset=UTF-8");
/* 65 */     response.setHeader("Cache-Control", "no-cache");
/* 66 */     PrintWriter out = response.getWriter();
/*    */     
/*    */ 
/* 69 */     HttpSession session = request.getSession();
/* 70 */     String msg = "";
/* 71 */     if (session.getAttribute("message") != null) {
/* 72 */       Vector<String> v_temp = (Vector)session.getAttribute("message");
/* 73 */       for (int i = v_temp.size() - 1; i >= 0; i--) {
/* 74 */         msg = msg + "<br>" + (String)v_temp.get(i);
/*    */       }
/*    */     } else {
/* 77 */       msg = "";
/*    */     }
/* 79 */     out.println(msg);
/* 80 */     out.close();
/*    */   }
/*    */   
/*    */ 
/*    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 87 */     doGet(request, response);
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\goumaiServlet\ChatServlet.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */