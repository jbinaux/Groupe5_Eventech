package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.EventController;
import controller.UserController;

@WebServlet("/CreateEventServlet")
public class CreateEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		try {
			//recupere la session en cours
			HttpSession session = request.getSession(false);
			//si la session n'existe pas, redirige vers la page de connection
			if(session.getAttribute("user") == null)
			{
				RequestDispatcher rd = request.getRequestDispatcher("/connect.jsp");
				rd.forward(request, response);
			}
			//cree un event 
			EventController event = new EventController();
			
			//permet de recuperer une date a partir d'une chaine de character
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat format2 = new SimpleDateFormat("hh:mm");
			
			//initialise les donnees de l'event
			Date date = new Date(format.parse(request.getParameter("dateEvent")).getTime());
			event.setDateEvent(date);
			event.setDescriptionEvent(request.getParameter("descriptionEvent"));
			event.setDomaineEvent(request.getParameter("domaineActivite"));
			event.setEventIdCreator(((UserController)session.getAttribute("user")).getUserId());
			event.setTypeEvent("interne");
			Time time = new Time(format2.parse(request.getParameter("heureEvent")).getTime());
			event.setHeureEvent(time);
			event.setLieuEvent(request.getParameter("lieu"));
			event.setNomEvent(request.getParameter("nomEvent"));
			event.setPrixEvent(Double.parseDouble(request.getParameter("prix")));
			event.setCapacite(Integer.parseInt(request.getParameter("capacite")));
			
			//appelle la methode d'insertion de l'event dans la base de donnee
			int s = event.insertEvent();
			
			//si l'operation a reussi, dispatch vers le profil, sinon retourne sur la page avec code d'erreur 1
			if (s > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("/private/profil");
				rd.forward(request, response);
			} else {
				request.setAttribute("error", 1);
				RequestDispatcher rd = request.getRequestDispatcher("/private/formulaireEvenementsInternes.jsp");
				rd.forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", 1);
			RequestDispatcher rd = request.getRequestDispatcher("/private/formulaireEvenementsInternes.jsp");
			rd.forward(request, response);
		}

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

}
