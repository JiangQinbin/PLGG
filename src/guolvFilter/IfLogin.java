package guolvFilter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class IfLogin
 */
@WebFilter({"*.jsp"})
public class IfLogin implements Filter {

    /**
     * Default constructor. 
     */
    public IfLogin() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request2 = (HttpServletRequest)request;
		HttpServletResponse response2 = (HttpServletResponse)response;
		HttpSession session = request2.getSession();
		String username = (String)session.getAttribute("yonghux");
		response2.setContentType("text/html;");
		response2.setCharacterEncoding("utf-8");
		 // PrintWriter out = resp.getWriter();
		  // 得到用户请求的URI
		  String request_uri = request2.getRequestURI(); 
		  // 获得请求的参数
	      String parameter = request2.getQueryString();  
	      if(parameter!=null)
	      parameter = parameter.replace("&", "!");
		  // 得到web应用程序的上下文路径
		  String ctxPath = request2.getContextPath();
		  // 去除上下文路径，得到剩余部分的路径
		  String uri = request_uri.substring(ctxPath.length());
		  // 判断用户访问的是否是登录页面
		  if (uri.equals("/yici11.jsp") || uri.equals("/yici.jsp") || uri.equals("/Registered.jsp") || uri.equals("/search.jsp")|| uri.equals("/merchants.jsp")) {
		   chain.doFilter(request, response);
		   return;
		  } else {
		   // 如果访问的不是登录页面，则判断用户是否已经登录
		   if (null != username && "" != username)

		{
		    chain.doFilter(request, response);
		    return;
		   } 
		   else {
			   request2.setAttribute("parameter", parameter);
			   request2.setAttribute("url", uri);
	           String  url = "yici11.jsp";
	             RequestDispatcher dis = request2.getRequestDispatcher(url);
	  		     dis.forward(request2, response2);
		   }
		  }
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
