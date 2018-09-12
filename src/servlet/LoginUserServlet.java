package servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controller.UserController;

@WebServlet("/LoginUserServlet")
public class LoginUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");

		String email= request.getParameter("email");
		String password = request.getParameter("pwd");
		UserController user = new UserController();
		
		//si on a trouve un utilisateur avec cet email
		if(user.retrieveUser(email) > 0)
		{
			//on verifie le mot de passe
			boolean status = user.validatePassword(password);

			//si il est bon
			if (status) 
			{
				//on cree une session
				HttpSession session1 = request.getSession();
				//et on set les informations de l'utilisateur en attribut
				session1.setAttribute("user", user);
				RequestDispatcher rd = request.getRequestDispatcher("/private/profil");
				rd.forward(request, response);
			} 
			//sinon on retourne un code d'erreur 2
			else 
			{
				request.setAttribute("error", 2);
				RequestDispatcher rd = request.getRequestDispatcher("/connect.jsp");
				rd.forward(request, response);
			}
		}
		//sinon on retourne un code d'erreur 1
		else
		{
			request.setAttribute("error", 1);
			RequestDispatcher rd = request.getRequestDispatcher("/connect.jsp");
			rd.forward(request, response);
		}

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

}
