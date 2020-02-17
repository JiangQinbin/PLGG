/*    */ package dengluServlet;
/*    */ 
/*    */ import dingcengjiekou.ImageUtils;
/*    */ import java.awt.image.BufferedImage;
/*    */ import java.io.IOException;
/*    */ import javax.imageio.ImageIO;
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
/*    */ 
/*    */ @WebServlet({"/YanZhengMaServlet"})
/*    */ public class YanZhengMaServlet
/*    */   extends HttpServlet
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   
/*    */   protected void doGet(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/*    */     try
/*    */     {
/* 37 */       response.setHeader("Pragma", "No-cache");
/* 38 */       response.setHeader("Cache-Control", "no-cache");
/* 39 */       response.setDateHeader("Expires", 0L);
/*    */       
/* 41 */       response.setContentType("image/jpeg");
/*    */       
/* 43 */       BufferedImage image = ImageUtils.createMulImage(80, 36);
/* 44 */       String code = ImageUtils.getCode();
/*    */       
/* 46 */       HttpSession session = request.getSession(true);
/* 47 */       session.setAttribute("CHECKCODE", code);
/*    */       
/*    */ 
/* 50 */       ImageIO.write(image, "JPEG", response.getOutputStream());
/*    */     }
/*    */     catch (Exception ex) {
/* 53 */       ex.printStackTrace();
/*    */     }
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   protected void doPost(HttpServletRequest request, HttpServletResponse response)
/*    */     throws ServletException, IOException
/*    */   {
/* 62 */     doGet(request, response);
/*    */   }
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\dengluServlet\YanZhengMaServlet.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */