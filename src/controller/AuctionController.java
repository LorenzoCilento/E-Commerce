package controller;

import java.io.IOException;
import java.io.PrintWriter;

import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.AuctionDAO;
import model.bean.Auction;
import util.DateConverter;


/**
 * Servlet implementation class AuctionController
 */
@WebServlet("/AuctionController")
public class AuctionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuctionController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String var = request.getParameter("paramAuction");
		
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		
//		if(var.equals("addAuction")){
			String itemId = request.getParameter("itemId");
			String startDate =request.getParameter("startDate");
			String endDate = request.getParameter("endDate");
	
			Date start_date = new DateConverter().convertStringInDateSql(startDate);
			Date end_date = new DateConverter().convertStringInDateSql(endDate);
			int item_id = Integer.parseInt(itemId);
			
			new AuctionDAO().addAuction(new Auction(item_id,start_date,end_date));
			
			out.close();
//		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
