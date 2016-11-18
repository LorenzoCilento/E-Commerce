package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.AuctionDAO;
import connection.ItemDAO;
import model.bean.Auction;
import model.bean.Item;
import model.bean.User;

/**
 * Servlet implementation class AddItemController
 */
@WebServlet("/AddItemController")
public class AddItemController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddItemController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("inputName");
		double price = Double.parseDouble(request.getParameter("inputPrice"));
		String description = request.getParameter("textDescription");
		String category = request.getParameter("inputCategory");
		String path = "images/"+request.getParameter("inputPath");
		String username = ((User) request.getSession().getAttribute("user")).getUsername();
		java.util.Date utilDate = new java.util.Date();
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
		
		
		java.sql.Date endDate = java.sql.Date.valueOf(request.getParameter("endDate"));
		Item item = new Item(name, category, price, description, path,username);
		
		int itemId = new ItemDAO().getLastItemId();
		Auction auction = new Auction(itemId, sqlDate, endDate);
		new ItemDAO().addItem(item);
		new AuctionDAO().addAuction(auction);
		response.sendRedirect("home.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
