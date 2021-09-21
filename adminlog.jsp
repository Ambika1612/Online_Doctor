<%@ page language="java" import="java.sql.*"%>
<html>
<head>
<title> Login Page </title>
</head>
<body>
<% 
String username=request.getParameter("username");
String pass=request.getParameter("pass");
out.println("checking login<br>");
if(username == null || pass == null)
{
	out.println("invalid");
}
if(username.toLowerCase().trim().equals("ambika") && pass.toLowerCase().trim().equals("aaa"))
{
	out.println("welcome");
	response.sendRedirect("adminindex.html");
}
else
{
	out.println("invalid user_name and pasword");
}
%>
</body>
</html>