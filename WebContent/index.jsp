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
<%
String msg=request.getParameter("msg");
if("valid ". equals (msg)){
	
	out.println("Sucessful") ;

%>
<center><font color="red" size="5">Form Submitted Sucessfully.You will get notified</font></center>
<%
}
%>
<br />
<%
//String msg=request.getParameter("msg");
if("invalid ". equals (msg)){
	 

%>
<center><font color="red" size="5">Invalid Details Try Again</font></center>
<%
}
%>

<center>

<h1>Enter your details to request blood</h1>
     <br/><br/>
</center>
<form action="Formaction.jsp" method="post">
<center>
<input type="text" name="name" placeholder="Enter Name" required/>
<input type="text" name="mobilenumber" placeholder="Enter Mobile Number" required/>
<input type="mail" name="email" placeholder="Enter Email Address" required/>
<input type="text" name="bloodgroup" placeholder="Enter Blood Group" required/>
<button class="button1"><span>Submit</span></button>

</center>


</form>

</body>
</html>