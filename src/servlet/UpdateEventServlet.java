package servlet;

import java.io.IOException;
import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.EventController;
import controller.UserController;

/**
 * Servlet implementation class UpdateEventServlet
 */
@WebServlet("/UpdateEventServlet")
public class UpdateEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateEventServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			EventController event = new EventController();
			//permet de recuperer une date a partir d'une chaine de character
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat format2 = new SimpleDateFormat("hh:mm");
			
			//initialise les donnees de l'event
			Date date = new Date(format.parse(request.getParameter("date")).getTime());
			event.setDateEvent(date);
			event.setDescriptionEvent(request.getParameter("description"));
			event.setDomaineEvent(request.getParameter("domaine"));
			Time time = new Time(format2.parse(request.getParameter("heure")).getTime());
			event.setHeureEvent(time);
			event.setLieuEvent(request.getParameter("lieu"));
			event.setNomEvent(request.getParameter("nom"));
			event.setPrixEvent(Double.parseDouble(request.getParameter("prix")));
			event.setIdEvent(Integer.parseInt(request.getParameter("id")));
			
			//update la base de donnee
			if(event.updateEvent() == 0)
			{
				request.setAttribute("error", 1);
				RequestDispatcher rd = request.getRequestDispatcher("/private/modificationEvenement.jsp");
				rd.forward(request, response);
			}
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("/private/modificationEvenement.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", 1);
			RequestDispatcher rd = request.getRequestDispatcher("/private/modificationEvenement.jsp");
			rd.forward(request, response);
		}
	}

}
