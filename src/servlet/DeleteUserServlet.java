package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.EventController;
import controller.UserController;
import model.Event;
import model.User;

/**
 * Servlet implementation class DeleteUserServlet
 */
@WebServlet("/admin/deleteUser")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteUserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserController userControl = new UserController();
		EventController eventControl = new EventController();
		if(request.getParameter("id") != null)
		{
			userControl.deleteUser(Integer.parseInt(request.getParameter("id")));
		}
		
		ArrayList<User> listUsers = userControl.selectUsers("");
		ArrayList<Event> listEvents = eventControl.selectUpcomingEvents();
		
		request.setAttribute("users", listUsers);
		request.setAttribute("events", listEvents);
		RequestDispatcher rd = request.getRequestDispatcher("/admin/admin.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
