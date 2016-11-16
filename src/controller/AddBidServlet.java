package controller;

import java.io.IOException;
import java.sql.Date;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.BidDAO;
import model.bean.Bid;

/**
 * Servlet implementation class AddBidServlet
 */
@WebServlet("/AddBidServlet")
public class AddBidServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBidServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Calendar cal = Calendar.getInstance();
		Date date = (Date) cal.getTime();
		String username = request.getParameter("username");
		int itemId = Integer.parseInt(request.getParameter("itemId"));
		double price = Double.parseDouble(request.getParameter("price"));
		Bid bid = new Bid(username, itemId, price, date);
		
		new BidDAO().addBid(bid);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
