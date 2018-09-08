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
			HttpSession session = request.getSession(false);
			UserController user = (UserController)session.getAttribute("user");
			EventController event = new EventController();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			SimpleDateFormat format2 = new SimpleDateFormat("hh:mm");
			Date date = new Date(format.parse(request.getParameter("dateEvent")).getTime());
			out.print("");
			event.setDateEvent(date);
			event.setDescriptionEvent(request.getParameter("descriptionEvent"));
			event.setDomaineEvent(request.getParameter("domaineActivite"));
			event.setEventIdCreator(user.getUserId());
			event.setTypeEvent("interne");
			Time time = new Time(format2.parse(request.getParameter("heureEvent")).getTime());
			event.setHeureEvent(time);
			event.setLieuEvent(request.getParameter("lieu"));
			event.setNomEvent(request.getParameter("nomEvent"));
			event.setPrixEvent(Double.parseDouble(request.getParameter("prix")));

			int s = event.insertEvent();
			if (s > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("profil.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("formulaireEvenementsInternes.jsp?error=1");
				rd.forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher rd = request.getRequestDispatcher("formulaireEvenementsInternes.jsp?error=1");
			rd.forward(request, response);
		}

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

}
