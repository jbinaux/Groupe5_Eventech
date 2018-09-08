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
		
		if(user.retrieveUser(email) > 0)
		{
			boolean status = user.validatePassword(password);

			if (status) 
			{
				HttpSession session1 = request.getSession();
				session1.setAttribute("user", user);
				RequestDispatcher rd = request.getRequestDispatcher("/Groupe5_Eventech/private/profil.jsp");
				rd.forward(request, response);
			} 
			else 
			{
				RequestDispatcher rd = request.getRequestDispatcher("/Groupe5_Eventech/connect.jsp?error=2");
				rd.forward(request, response);
			}
		}
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("/Groupe5_Eventech/connect.jsp?error=1");
			rd.forward(request, response);
		}

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

}
