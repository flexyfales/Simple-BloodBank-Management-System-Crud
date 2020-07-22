

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import Project.DbConnection;
/**
 * Servlet implementation class addDonor
 */
@WebServlet("/addDonor")
public class addDonor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String id=request.getParameter("id");
		 String name=request.getParameter("name");
	      String mobilenumber=request.getParameter("mobilenumber");
	      String gender=request.getParameter("gender");
	      String email=request.getParameter("email");
	      String bloodgroup=request.getParameter("bloodgroup");
	      String address=request.getParameter("address");
	      
	      try{
	    	 Connection conn=DbConnection.getCon() ;
	    	 PreparedStatement pst=conn.prepareStatement("insert into blooddonor (name,mobilenumber,gender,email,bloodgroup,address) values(?,?,?,?,?,?)");
	    	// pst.setString(1, id);
	    	 pst.setString(1, name);
	    	 pst.setString(2,mobilenumber);
	    	 pst.setString(3,gender);
	    	 pst.setString(4,email);
	    	 pst.setString(5,bloodgroup);
	    	 pst.setString(6,address);
	    	 pst.executeUpdate();
	    	 response.sendRedirect("addDonor.jsp");
	      }
	      catch(Exception e){
	    	  
	    	  System.out.println(e);
	      }
	}

}
