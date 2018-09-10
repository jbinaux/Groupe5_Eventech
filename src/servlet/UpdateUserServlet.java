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

@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateUserServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		try {
			UserController user = (UserController)request.getSession().getAttribute("user");
			user.setUserDomaineActivite(request.getParameter("domaineActivite"));
			user.setUserMail(request.getParameter("email"));
			user.setUserNom(request.getParameter("nom"));
			user.setUserPrenom(request.getParameter("prenom"));
			
			if(user.updateUser() == 0)
			{
				request.setAttribute("error", 1);
				RequestDispatcher rd = request.getRequestDispatcher("/updateUser.jsp");
				rd.forward(request, response);
			}
			else
			{
				RequestDispatcher rd = request.getRequestDispatcher("/updateUser.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", 1);
			RequestDispatcher rd = request.getRequestDispatcher("/updateUser.jsp");
			rd.forward(request, response);
		}
	}

}
