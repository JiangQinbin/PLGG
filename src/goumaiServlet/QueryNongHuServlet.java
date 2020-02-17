package goumaiServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dingcengjiekou.NongHuDao;
import net.sf.json.JSONObject;
import yingselei.NongHu;

/**
 * Servlet implementation class QueryVideoServlet
 */
@WebServlet("/QueryNongHuServlet")
public class QueryNongHuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QueryNongHuServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nonghu = request.getParameter("nonghu");
		NongHuDao nongHuDao = new NongHuDao();
		NongHu nongHu = nongHuDao.QearyNongHu(nonghu);
		if(nongHu!=null) {
		String dizhi = nongHu.getDizhi();
		int n = dizhi.indexOf("村");
		dizhi = dizhi.substring(0,n+1);
		nongHu.setDizhi(dizhi);
		}
		PrintWriter out = response.getWriter();
		JSONObject json = JSONObject.fromObject(nongHu);//将java对象转换为json对象
		out.print(json);
		out.close();
		out.flush();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
