package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import controller.UserController;


@WebServlet("/RegisterUserServlet")
public class RegisterUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		try {
			UserController user = new UserController();
			user.setUserAdmin(false);
			user.setUserDomaineActivite(request.getParameter("domaineActivite"));
			user.setUserMail(request.getParameter("email"));
			user.setUserMotDePasse(request.getParameter("pwd"));
			user.setUserNom(request.getParameter("nom"));
			user.setUserPrenom(request.getParameter("prenom"));
			
			int s = user.insertUser();
			if (s > 0) {
				RequestDispatcher rd = request.getRequestDispatcher("connect.jsp");
				rd.forward(request, response);
			} else {
				out.print("sorry!please fill correct detail and try again");
			}
		} catch (Exception e) {
			e.printStackTrace();
			out.print("sorry!please fill correct detail and try again");
		}

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

}
