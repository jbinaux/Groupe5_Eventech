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
import model.Event;

/**
 * Servlet implementation class EventsPublicServlet
 */
@WebServlet("/EventsPublicServlet")
public class EventsPublicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EventsPublicServlet() {
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
		// cr�er une arrayList de type Event nommee listeEvents pour les events
		ArrayList<Event> listeEvents = new ArrayList<Event>();
		// on cr��e un controleur pour avoir acc�s � sa m�thode
		EventController control = new EventController();
		
		int nb = 5;
		int page = 1;
		if(request.getParameter("nb") != null)
		{
			nb = Integer.parseInt(request.getParameter("nb"));
		}
		if(request.getParameter("page") != null)
		{
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		// on r�cup�re les events � venir dans la BDD
		listeEvents = control.selectUpcomingEvents();
		// on attribue un nom � listeEvents dans la request
		request.setAttribute("events", listeEvents);
		request.setAttribute("nb", nb);
		request.setAttribute("page", page);
		// Redirection vers la page et on lui donne les attributs de la request
		RequestDispatcher rd = request.getRequestDispatcher("/eventsPublic2.jsp");
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
