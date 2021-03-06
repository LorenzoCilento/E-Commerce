package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jettison.json.JSONObject;

import connection.ItemDAO;

/**
 * Servlet implementation class LoadItemController
 */
@WebServlet("/LoadItemController")
public class LoadItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoadItemController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		JSONObject item = new ItemDAO().getItem(Integer.parseInt(request.getParameter("id")));
		System.out.println("il parametro passato " + Integer.parseInt(request.getParameter("id")));
		if (item != null) {
			request.getSession().setAttribute("item", item);
			response.sendRedirect("item.jsp");
		}
		
//		JSONObject item = new ItemDAO().getItem(Integer.parseInt(request.getParameter("id")));
//		System.out.println("il parametro passato " + Integer.parseInt(request.getParameter("id")));
//		System.out.println("IL PARAMETRO è "+ request.getParameter("id"));
//		response.setContentType("application/json");
//		response.getWriter().write(item.toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
