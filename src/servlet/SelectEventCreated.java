package servlet;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;

import controller.EventController;
import controller.UserController;
import model.Event;
import password.Password;

/**
 * Servlet implementation class SelectEventCreated
 */
@WebServlet(urlPatterns="/private/profil")
public class SelectEventCreated extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SelectEventCreated() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			Class.forName("com.mysql.jdbc.Driver");

			Password password = new Password();
			String url = "jdbc:mysql://localhost:3306/eventech_db?verifyServerCertificate=false&useSSL=true";
			String user = "root";
			String pwd = password.getPassword();

			HttpSession session = request.getSession();

			ArrayList<EventController> evenementsCrees = new ArrayList<EventController>();

			Connection cn = (Connection) DriverManager.getConnection(url, user, pwd);

			Statement st = (Statement) cn.createStatement();

			String sql = "SELECT * FROM events WHERE id_creator = "
					+ ((UserController) session.getAttribute("user")).getUserId();

			ResultSet result = (ResultSet) st.executeQuery(sql);

			while (result.next()) {

				EventController ec = new EventController();
				ec.setIdEvent(result.getInt("id_event"));
				ec.setEventIdCreator(result.getInt("id_creator"));
				ec.setNomEvent(result.getString("nom_event"));
				ec.setLieuEvent(result.getString("lieu"));
				ec.setDateEvent(result.getDate("date_event"));
				ec.setHeureEvent(result.getTime("heure_event"));
				ec.setTypeEvent(result.getString("type_event"));
				ec.setDescriptionEvent(result.getString("description_event"));
				ec.setNbPersonnesEvent(result.getInt("nb_personnes"));
				ec.setMoyenneNoteEvent(result.getDouble("moyenne_notes"));
				ec.setPrixEvent(result.getDouble("prix"));
				ec.setDomaineEvent(result.getString("domaine"));
				ec.cutDate(ec.getModel());
				
				evenementsCrees.add(ec);

			}
			
			EventController control = new EventController();
			ArrayList<Event> subsList = control.selectSubEvents(((UserController) session.getAttribute("user")).getUserId());
			request.setAttribute("Subs", subsList);
			request.setAttribute("Events", evenementsCrees);
			RequestDispatcher rd = request.getRequestDispatcher("/private/profil.jsp");
			rd.forward(request, response);

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

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
