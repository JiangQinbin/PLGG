/*    */ package guolvFilter;
/*    */ 
/*    */ import java.io.IOException;
/*    */ import javax.servlet.Filter;
/*    */ import javax.servlet.FilterChain;
/*    */ import javax.servlet.FilterConfig;
/*    */ import javax.servlet.ServletException;
/*    */ import javax.servlet.ServletRequest;
/*    */ import javax.servlet.ServletResponse;
/*    */ import javax.servlet.annotation.WebFilter;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ import javax.servlet.http.HttpServletResponse;
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
/*    */ 
/*    */ 
/*    */ @WebFilter({"/*"})
/*    */ public class bianma
/*    */   implements Filter
/*    */ {
/*    */   public void destroy() {}
/*    */   
/*    */   public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
/*    */     throws IOException, ServletException
/*    */   {
/* 38 */     HttpServletRequest request2 = (HttpServletRequest)request;
/* 39 */     request2.setCharacterEncoding("UTF-8");
/*    */     
/* 41 */     HttpServletResponse response2 = (HttpServletResponse)response;
/* 42 */     response2.setCharacterEncoding("UTF-8");
/* 43 */     chain.doFilter(request, response);
/*    */   }
/*    */   
/*    */   public void init(FilterConfig fConfig)
/*    */     throws ServletException
/*    */   {}
/*    */ }


/* Location:              F:\jiang\WEB-INF\classes\!\guolvFilter\bianma.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */