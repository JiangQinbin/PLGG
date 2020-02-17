/*    */ package goumaiServlet;
/*    */ 
/*    */ import java.io.IOException;
/*    */ import java.io.PrintStream;
/*    */ import javax.servlet.RequestDispatcher;
/*    */ import javax.servlet.ServletException;
/*    */ import javax.servlet.annotation.WebServlet;
/*    */ import javax.servlet.http.HttpServlet;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ import javax.servlet.http.HttpServletResponse;
/*    */ import javax.servlet.http.HttpSession;
/*    */ import jiang.ChooseSpecifications;
/*    */ import yingselei.mangoprice;
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
/*    */ @WebServlet({"/OrderServlet"})
/*    */ public class OrderServlet
/*    */   extends HttpServlet
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 36 */     HttpSession session = request.getSession();
/* 37 */     String mangoID = request.getParameter("mangoname");
/* 38 */     session.setAttribute("manguoID", mangoID);
             
/* 39 */     ChooseSpecifications chooseSpecifications = new ChooseSpecifications();
/* 40 */     mangoprice kk = chooseSpecifications.price(mangoID);
/* 41 */     String username=kk.getUsername();
             String manguoname=kk.getManguoname();
             String introduce=kk.getIntroduce();
             request.setAttribute("manguo",manguoname);
             request.setAttribute("introduce",introduce);
             session.setAttribute("username", username);
/* 42 */     session.setAttribute("daguohao", Float.valueOf(kk.getDanjiadahao()));
/* 43 */     session.setAttribute("daguozhong", Float.valueOf(kk.getDanjiadazhong()));
/* 44 */     session.setAttribute("xiaoguohao", Float.valueOf(kk.getDanjiaxiaohao()));
/* 45 */     session.setAttribute("xiaoguozhong", Float.valueOf(kk.getDanjiaziaozhong()));
/* 46 */     request.setAttribute("dapinjun", Float.valueOf(kk.getDapingjun()));
/* 47 */     request.setAttribute("xiaopinjun", Float.valueOf(kk.getXiaopingjun()));
             request.setAttribute("yeshouliang", Integer.valueOf(kk.getYeshouliang()));
             request.setAttribute("keshouliang", Integer.valueOf(kk.getKeshouliang()));
/* 48 */     String path1 = "http://www.linguoguo.com.cn:8080/farmers_picture/" + username+"/"+manguoname+"/" + "file1.jpg";
/* 49 */     String path2 = "http://www.linguoguo.com.cn:8080/farmers_picture/" + username+"/"+manguoname+"/" + "file2.jpg";
/* 50 */     String path3 = "http://www.linguoguo.com.cn:8080/farmers_picture/" + username+"/"+manguoname+"/" + "file3.jpg";
/* 51 */     String path4 = "http://www.linguoguo.com.cn:8080/farmers_picture/" + username+"/"+manguoname+"/" + "file4.jpg";
/* 52 */     String path5 = "http://www.linguoguo.com.cn:8080/farmers_picture/" + username+"/"+manguoname+"/" + "file5.jpg";
/* 53 */     String path6 = "http://www.linguoguo.com.cn:8080/farmers_picture/" + username+"/"+manguoname+"/" + "file6.mp4";
             request.setAttribute("picture1", path1);
/* 54 */     request.setAttribute("picture2", path2);
/* 55 */     request.setAttribute("picture3", path3);
/* 56 */     request.setAttribute("picture4", path4);
/* 57 */     request.setAttribute("picture5", path5);
             request.setAttribute("picture6", path6); 
            // response.sendRedirect("chooseOrder.jsp");
/* 58 */    request.getRequestDispatcher("chooseOrder.jsp").forward(request, response);
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 66 */     doGet(request, response);
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\goumaiServlet\OrderServlet.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */