

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		  String username=request.getParameter("username");
		    String password= request.getParameter("password");
		    if(username.equalsIgnoreCase("admin") && password.equalsIgnoreCase("admin")){
				  response.sendRedirect("home.jsp");
			  }
			  else {
				  response.sendRedirect("adminLogin.jsp");
			  }
		}
		
}
