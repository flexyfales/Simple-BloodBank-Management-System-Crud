

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import Project.DbConnection;
/**
 * Servlet implementation class updateDonor
 */
@WebServlet("/updateDonor")
public class updateDonor extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	String name=request.getParameter("name");
	try {
		Connection conn=DbConnection.getCon();
		Statement st=conn.createStatement();
		ResultSet rs=st.executeQuery("select from blooddonor where name=");
		
	}catch(Exception e) {
		
	}
	
	}

}
