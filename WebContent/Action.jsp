<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="Project.DbConnection" %>
      <%@ page import="java.sql.*" %>
      
      <%
      String id=request.getParameter("id");
      String mobilenumber=request.getParameter("mobilenumber");
      String gender=request.getParameter("gender");
      String email=request.getParameter("email");
      String bloodgroup=request.getParameter("bloodgroup");
      String address=request.getParameter("address");
      
      try{
    	 Connection conn=DbConnection.getCon() ;
    	 PreparedStatement pst=conn.prepareStatement("insert into blooddonor values(?,?,?,?,?,?)");
    	 pst.setString(1,id);
    	 pst.setString(2,mobilenumber);
    	 pst.setString(3,gender);
    	 pst.setString(4,email);
    	 pst.setString(5,bloodgroup);
    	 pst.setString(5,bloodgroup);
    	 pst.executeUpdate();
    	 response.sendRedirect("addDonor.jsp");
      }
      catch(Exception e){}
      %>
    
    
    
    
