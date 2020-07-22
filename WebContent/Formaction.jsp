<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>
    <%@ page import="Project.DbConnection" %>
    <%
    String name = request.getParameter("name");
    String mobilenumber = request.getParameter("mobilenumber");
    String email = request.getParameter("email");
    String bloodgroup = request.getParameter("bloodgroup");
    String status="pending";
    
    try{
    	Connection conn=DbConnection.getCon();
    	PreparedStatement pst=conn.prepareStatement("insert into bloodrequest values (?,?,?,?,?)");
    	pst.setString(1,name);
    	pst.setString(2,mobilenumber);
    	pst.setString(3,email);
    	pst.setString(4,bloodgroup);
    	pst.setString(5,status);
    	pst.executeUpdate();
    	response.sendRedirect("index.jsp?msg=valid");
    }catch(Exception e){
    	response.sendRedirect("index.jsp?msg=invalid");
    }
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>

</body>
</html>