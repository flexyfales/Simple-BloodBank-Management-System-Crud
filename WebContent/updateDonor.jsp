<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="java.sql.*"%>
   <%@ page import="Project.DbConnection"%>
    <% 
    
    if(request.getParameter("submit")!=null){
    	String id=request.getParameter("id");
    	String name=request.getParameter("name");
    	String mobilenumber=request.getParameter("mobilenumber");
    	String gender=request.getParameter("gender");
    	String email=request.getParameter("email");
    	String bloodgroup=request.getParameter("bloodgroup");
    	String address=request.getParameter("address");
    	Connection conn;
    	PreparedStatement pst;
    	ResultSet rs;
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	conn=DriverManager.getConnection("jdbc:mysql://localhost/bloodbank","root","");
    	pst=conn.prepareStatement("update blooddonor set name=?,mobilenumber=?,gender=?,email=?,bloodgroup=?,address=?where id=? ");
    	pst.setString(1,name);
    	pst.setString(2,mobilenumber);
    	pst.setString(3,gender);
    	pst.setString(4,email);
    	pst.setString(5,bloodgroup);
    	pst.setString(6,address);
    	pst.setString(7,id);
    	pst.executeUpdate();
    	response.sendRedirect("addDonor.jsp");
    	%>
	
    <%
    }
    
    %>
    
    
   
   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
<link href="bootstrap-4.5.0/dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap-4.5.0/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <a href="../bootstrap-4.5.0/scss/bootstrap.scss"></a>
</head>
<body>

		<div class="container">
		  <div>
                <%
                
            	PreparedStatement pst;
            	ResultSet rs;
            	
            	Connection conn=DbConnection.getCon();
            	String id= request.getParameter("id");
            	pst=conn.prepareStatement("select * from blooddonor where id=?");
            	pst.setString(1,id);
                rs=pst.executeQuery();
                
                while(rs.next()){
                	
                
                %>
		<form action="#" method="post">
		<input type="hidden" name="id" value="<% out.println(id); %>"/>
		<h2>Name</h2>
		 <input type="text" value="<%= rs.getString("name") %>" name="name"/>
		 <h2>Mobile Number</h2>
		 <input type="text" value="<%= rs.getString("mobilenumber") %>" name="mobilenumber"/>
		 <hr>
		 <h2>Gender</h2>
		  <input type="text" value="<%= rs.getString("gender") %>" name="gender"/>
		  <hr>
		  <h2>Email</h2>
		   <input type="text" value="<%= rs.getString("email") %>" name="email"/>
		   <hr>
		   <h2>BloodGroup</h2>
		    <input type="text" value="<%= rs.getString("bloodgroup") %>" name="bloodgroup"/>
		    <hr></hr>
		    <h2>Address</h2>
		       <input type="text" value="<%= rs.getString("address") %>" name="address"/>
		  
		     <br>
		     </div>
		      <% 
		      }
		      
		      
		      %>
		     <input type="submit" name="submit" value="Update" />
		</form>
		</div>
	
</body>
</html>