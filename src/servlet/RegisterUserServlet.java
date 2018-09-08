package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
			
			if(!user.userExist(user.getUserMail()))
			{
				int s = user.insertUser();
				if (s > 0) {
					user.retrieveUser(user.getUserMail());
					HttpSession session1 = request.getSession();
					session1.setAttribute("user", user);
					RequestDispatcher rd = request.getRequestDispatcher("/Groupe5_Eventech/private/profil.jsp");
					rd.forward(request, response);
				} else {
					RequestDispatcher rd = request.getRequestDispatcher("/Groupe5_Eventech/connect.jsp?error=1");
					rd.forward(request, response);
				}
			}
			else
			{
				user = null;
				RequestDispatcher rd = request.getRequestDispatcher("/Groupe5_Eventech/connect.jsp?error=1");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher rd = request.getRequestDispatcher("/Groupe5_Eventech/connect.jsp?error=1");
			rd.forward(request, response);
		}

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

}
