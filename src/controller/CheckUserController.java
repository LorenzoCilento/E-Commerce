package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.UserDAO;
import model.bean.User;
import util.Validate;


/**
 * Servlet implementation class CheckUserController
 */
@WebServlet("/CheckUserController")
public class CheckUserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckUserController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		if (new Validate().validateParameters(username)){
			User mUser = new UserDAO().getUser(username);
		
			if (mUser.getUsername() == (null))
				response.getWriter().write("success");
			else 
				response.getWriter().write("error");
			
		}
		else{
			response.getWriter().write("warning");
		}

	}
}
