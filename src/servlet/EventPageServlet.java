package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.EventController;
import controller.SubscriptionController;
import controller.UserController;

/**
 * Servlet implementation class EventPageServlet
 */
@WebServlet("/EventPageServlet")
public class EventPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EventPageServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Je r�cupere mon Id et je le Parse ( changer mon String en Int)
		int eventId = Integer.parseInt(request.getParameter("id"));

		// Je cr�er un Nouvel evenement
		EventController event = new EventController();

		// Je r�cupere l'�v�nement qui est � l'id indiquer
		event.retrieveEvent(eventId);

		// Je d�finie un attribut � notre request
		request.setAttribute("event", event);

		HttpSession session = request.getSession(false);
		if (session.getAttribute("user") == null) 
		{
			request.setAttribute("sub", false);
		} 
		else if (request.getAttribute("sub") != null)
		{
			request.setAttribute("sub", request.getAttribute("sub"));
		} 
		else 
		{
			int userId = ((UserController) session.getAttribute("user")).getUserId();
			SubscriptionController sub = new SubscriptionController();
			if (sub.exist(userId, eventId)) 
			{
				request.setAttribute("sub", true);
			} 
			else 
			{
				request.setAttribute("sub", false);
			}
		}

		// Redirectioon vers la page et on lui donne les attributs de la request
		RequestDispatcher rd = request.getRequestDispatcher("/EventPage.jsp");
		rd.forward(request, response);
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
