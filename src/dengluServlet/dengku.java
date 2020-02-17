/*    */ package dengluServlet;
/*    */ 
/*    */ import dingcengjiekou.shiyanDAO;
/*    */ import dingcengjiekou.shiyanDAOImg;
/*    */ import java.io.IOException;
/*    */ import java.io.PrintWriter;
import java.net.URLEncoder;

/*    */ import javax.servlet.RequestDispatcher;
/*    */ import javax.servlet.ServletException;
/*    */ import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
/*    */ import javax.servlet.http.HttpServlet;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ import javax.servlet.http.HttpServletResponse;
/*    */ import javax.servlet.http.HttpSession;
/*    */ import jiang.Verificationcodecomparison;
/*    */ import jiang.denglum;
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
/*    */ 
/*    */ @WebServlet({"/dengku"})
/*    */ public class dengku
/*    */   extends HttpServlet
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 40 */     PrintWriter out = response.getWriter();
/* 41 */     HttpSession session = request.getSession();
/* 42 */     response.setContentType("text/html");
     String yonghuimi = request.getParameter("yonghuming1");
     String mimaa = request.getParameter("mima1");
     String yanzhangma = request.getParameter("yanzhengma1");
     String code = (String)session.getAttribute("CHECKCODE");
             String remember=request.getParameter("fuxuan1");
             
     Verificationcodecomparison comparison = new Verificationcodecomparison();
    if (comparison.compare(code, yanzhangma)) {
      if (denglum.panduandenglu(yonghuimi, mimaa)) {
	             if(remember!=null){
	            	 Cookie[] cookies = request.getCookies();
		             if(cookies!=null){
		            	 for(Cookie cookie5:cookies){
		            		 if(cookie5.getName().equals("name")){
		            			 cookie5.setValue(null);  
			                        cookie5.setMaxAge(0);// 立即销毁cookie  
			                        cookie5.setPath("/");    
			                        response.addCookie(cookie5); 
		            		 }
		            	 }
		             }
		             Cookie cookie=new Cookie("name", yonghuimi);
		             cookie.setPath("/");
	            	 cookie.setMaxAge(Integer.MAX_VALUE);
	            	 response.addCookie(cookie);
	             }
	             Cookie[] cookies1 = request.getCookies();
	             if(cookies1!=null){
	            	 for(Cookie cookie5:cookies1){
	            		 if(cookie5.getName().equals("yonghu")){
	            			 cookie5.setValue(null);  
		                        cookie5.setMaxAge(0);// 立即销毁cookie  
		                        cookie5.setPath("/");    
		                        response.addCookie(cookie5); 
	            		 }
	            	 }
	             }
	             Cookie cookie1=new Cookie("yonghu", yonghuimi);
	             cookie1.setPath("/");
            	 cookie1.setMaxAge(10*60);
            	 response.addCookie(cookie1);
/* 50 */         shiyanDAO dao = new shiyanDAOImg();
                 String nichen="";
                 String name="";
                 
/* 51 */         kuyingsr User = (kuyingsr)dao.select(yonghuimi);
                 kuyingsr User1=null;
                 if(User!=null) {           	 
/* 52 */             nichen = User.getNicheng();
                     name = User.getYonghuming();
                 }
                 else {
                	 User1 =(kuyingsr)dao.select1(yonghuimi);
                	 nichen=User1.getNicheng();
                	 name=User1.getYonghuming();
                 }
/* 53 */         session.setAttribute("yonghu11", nichen);
/* 54 */         session.setAttribute("yonghux", name);
/* 55 */       //  String dizhi = request.getParameter("backurl");
                 String url = "";
                 String dizhi = request.getParameter("url");
                 String parameter = request.getParameter("parameter");
                 String nonghu = request.getParameter("nonghu");
                 if(parameter==null || parameter=="")
                 url=dizhi;
                 else {
                	  parameter = parameter.replaceAll("!","&");
                	//  parameter =  URLEncoder.encode(parameter,"GBK");
             
                	 //String reg = "[^\u4e00-\u9fa5]";
                	// String str = parameter.replaceAll(reg, "");
                	// System.out.println(str);
                	 url=dizhi+"?"+parameter;
                	 
                 }
/* 56 */         if (dizhi.equals("null")&&nonghu.equals("null"))
/*    */         {
/* 58 */           /*request.getRequestDispatcher("yici.jsp").forward(request, response);*/
	                response.sendRedirect("yici.jsp");
/*    */         }
           else if(nonghu.equals("1")) {
        	   response.sendRedirect("/PLGG/FarmersCenter.jsp");
           }
/*    */         else {
/* 61 */          /* request.getRequestDispatcher(dizhi).forward(request, response);*/
	               // response.sendRedirect(url);
	     RequestDispatcher dis = request.getRequestDispatcher(url);
	          dis.forward(request, response);
/*    */         }
/*    */       }
/*    */       else
/*    */       {
/* 66 */         response.sendRedirect("dengcuowu.jsp");
/*    */       }
/* 68 */       out.flush();
/* 69 */       out.close();
/*    */     } else {
/* 71 */       out.println("<script>alert('验证码错误！');window.location.href='yici11.jsp'</script>");
/*    */     }
/*    */   }
/*    */   
/*    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 78 */     doGet(request, response);
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\dengluServlet\dengku.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */