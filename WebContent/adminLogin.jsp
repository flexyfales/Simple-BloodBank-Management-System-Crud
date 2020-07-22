<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<form action="login" method="post">
<div class="form-group">

<center><h2>Username</h2></center>
<center><input type="text" placeholder="Enter UserName" name="username" required/></center>
<center><h2>Password</h2></center>
<center><input type="password" placeholder="Enter Password" name="password" required/></center>
<br/>
<center><h2><button type="submit" class="button">Submit</button></h2></center>
</div>


</form>

</body>
</html>