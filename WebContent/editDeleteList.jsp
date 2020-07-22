<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="Project.DbConnection" %>
    <%@ page import="java.sql.*" %>
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
<center>
<table id ="customers"  class="table table-responsive table-bordered" cellpadding="0" width="100%">
 <tr>
 <th>ID</th>
 <th>Name</th>
 <th>Mobile Number</th>
 <th>Gender</th>
 <th>Email</th>
 <th>BloodGroup</th>
 <th>Address</th>
 <th>Edit</th>
 <th>Delete</th>
 </tr>
<tr>
<%
try{
	Connection conn=DbConnection.getCon();
	Statement st=conn.createStatement();
	ResultSet rst=st.executeQuery("select * from blooddonor");
	
	while(rst.next())
	{
	%>
	<tr>
	<td><%=rst.getString(1) %></td>
	<td><%=rst.getString(2) %></td>
	<td><%=rst.getString(3) %></td>
	<td><%=rst.getString(4) %></td>
	<td><%=rst.getString(5) %></td>
	<td><%=rst.getString(6) %></td>
	<td><%=rst.getString(7) %></td>
	<td><a href="updateDonor.jsp?id=<%= rst.getString(1)%>">Edit</a></td>
	<td><a href="deleteDonor.jsp?id=<%= rst.getString(1)%>">Delete</a></td>
	

	</tr>
	<% 
	}

}catch(Exception e){
	System.out.println(e);
}


%>


</tr>


</table>

</center>
</body>
</html>