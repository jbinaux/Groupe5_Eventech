package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.SubscriptionController;
import controller.UserController;

/**
 * Servlet implementation class SubscriptionServlet
 */
@WebServlet("/SubscriptionServlet")
public class SubscriptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubscriptionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SubscriptionController sub = new SubscriptionController();
		HttpSession session = request.getSession(false);
		if(session.getAttribute("user") == null)
		{
			RequestDispatcher rd = request.getRequestDispatcher("/connect.jsp");
			rd.forward(request, response);
		}
		int userId = ((UserController)session.getAttribute("user")).getUserId();
		int eventId = Integer.parseInt(request.getParameter("eventId"));
		if(sub.exist(userId,eventId))
		{
			sub.retrieveSub(userId, eventId);
			sub.delete(sub.getIdSub());
			request.setAttribute("sub", false);
		}
		else
		{
			sub.create(userId, eventId);
			request.setAttribute("sub", true);
		}
		RequestDispatcher rd = request.getRequestDispatcher("/EventPageServlet?id=" + eventId);
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
