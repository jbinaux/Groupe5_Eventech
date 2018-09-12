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
			//cree un nouvel utilisateur
			UserController user = new UserController();
			//initialise ses donnees
			user.setUserAdmin(false);
			user.setUserDomaineActivite(request.getParameter("domaineActivite"));
			user.setUserMail(request.getParameter("email"));
			user.setUserMotDePasse(request.getParameter("pwd"));
			user.setUserNom(request.getParameter("nom"));
			user.setUserPrenom(request.getParameter("prenom"));
			
			//si il n'y a pas deja un utilisateur avec cet email, sinon code d'erreur 4
			if(!user.userExist(user.getUserMail()))
			{
				//on l'insert dans la base de donnee
				int s = user.insertUser();
				//si ca a reussit
				if (s > 0) {
					//on recupere l'utilisateur
					user.retrieveUser(user.getUserMail());
					//on cree une session
					HttpSession session1 = request.getSession();
					//on set l'attribut user de la session
					session1.setAttribute("user", user);
					RequestDispatcher rd = request.getRequestDispatcher("/private/profil");
					rd.forward(request, response);
				} else {
					request.setAttribute("error", 3);
					RequestDispatcher rd = request.getRequestDispatcher("/connect.jsp");
					rd.forward(request, response);
				}
			}
			else
			{
				user = null;
				request.setAttribute("error", 4);
				RequestDispatcher rd = request.getRequestDispatcher("/connect.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", 3);
			RequestDispatcher rd = request.getRequestDispatcher("/connect.jsp");
			rd.forward(request, response);
		}

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

}
