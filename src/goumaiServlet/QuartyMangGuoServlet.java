package goumaiServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

import jiang.Mangoprice;

/**
 * Servlet implementation class QuartyMangGuoServlet
 */
@WebServlet("/QuartyMangGuoServlet")
public class QuartyMangGuoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuartyMangGuoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nonghu = request.getParameter("nonghu");
		PrintWriter out1 = response.getWriter();
		Mangoprice mangoprice9 = new Mangoprice();
		JsonObject jsonObject1 = new JsonObject();
		jsonObject1 = mangoprice9.price2(nonghu);
		out1.print(jsonObject1);
		out1.flush();
		out1.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
