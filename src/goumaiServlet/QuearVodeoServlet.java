package goumaiServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dingcengjiekou.NongHuDao;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import yingselei.Vodeo;

/**
 * Servlet implementation class QuearVodeoServlet
 */
@WebServlet("/QuearVodeoServlet")
public class QuearVodeoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuearVodeoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nonghu = request.getParameter("nonghu");
		NongHuDao nongHuDao = new NongHuDao();
		List<Vodeo> list = nongHuDao.qearyVodeo(nonghu);
		PrintWriter out = response.getWriter();
		JSONArray json = new JSONArray();
		for(Vodeo pLog : list){
			JSONObject jo = JSONObject.fromObject(pLog);//将java对象转换为json对象
            json.add(jo);
        }
		
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
