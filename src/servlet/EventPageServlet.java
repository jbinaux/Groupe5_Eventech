package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.EventController;

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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//Je récupere mon Id et je le Parse ( changer mon String en Int) 
		int id = Integer.parseInt(request.getParameter("id"));
		//Je créer un Nouvel evenement
		EventController event = new EventController();
		//Je récupere l'événement qui est à l'id indiquer
		event.retrieveEvent(id);
		//Je définie un attribut à notre request
		request.setAttribute("event", event);
		//Redirectioon vers la page et on lui donne les attributs de la request
		RequestDispatcher rd = request.getRequestDispatcher("/EventPage.jsp");
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
