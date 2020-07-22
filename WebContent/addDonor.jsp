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

	
	<div class="container">
	<form  method="post" action="addDonor">
	
	<h2>Name</h2>
	<input type="text" placeholder="Enter Name" name="name"/>
	
	<h2>Mobile Number</h2>
	<input type="number" placeholder="Mobile Number" name="mobilenumber"/>
	<hr>
	<h2>Gender</h2>
	<select name="gender">
	<option value="Male">Male</option>
	<option value="Female">Female</option>
	</select>
	<hr>
	<h2>Email</h2>
	<input type="email" placeholder="Enter email address" name="email"/>
	<hr>
	<h2>Blood Group</h2>
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
	<hr>
	
	<h2>Address</h2>
	<input type="text" placeholder="Enter Address" name="address"/>
	
	<button type="submit" class="button">Save</button-type>
	</form>
	
	</div>


</body>
</html>