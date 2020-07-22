<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="Project.DbConnection" %>
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
<form action="manageStockAction" method="post">
<div class="form-group">
<center>Select Blood Group</center>
<center>
<select name="bloodgroup"/>
	
	<option value="A+">A+</option>
	<option value="A-">A-</option>
	<option value="B+">B+</option>
	<option value="B-">B-</option>
	<option value="O+">O+</option>
	<option value="O-">O-</option>
	<option value="AB+">AB+</option>
	<option value="AB">AB-</option>
	</select>
	</center>
	<center>Select Blood Group</center>
	
	<center>
	<select name="incdec"/>
	
	<option value="inc">Increase</option>
	<option value="dec">Decrease </option>
	
	</select>
	</center>
	
	<center><h2>Units</h2></center>
	<center><input type="text" placeholder="Enter Units" name="units"/></center>
	<br>
	<center><input type="button" value="Save" "/></center>
</div>


</form>
<br>
<center>
<table id="customers">
<tr>
<th>Blood Group</th>
<th>Units</th>
<%
try {
Connection conn=DbConnection.getCon();
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery("select from stock");
while(rs.next())
{
%>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
</tr>
<%
}
}catch(Exception e ){
	System.out.println(e);
}

%>
</table>
</center>

</body>
</html>