<%@ page language="java" import="java.sql.*"%>
<html>
<body>
<% 
String deparment=request.getParameter("dep");
String doctor=request.getParameter("doc");
String adate=request.getParameter("date");
String atime=request.getParameter("time");
String name=request.getParameter("name");
String phno=request.getParameter("phno");
String email=request.getParameter("email");
String message=request.getParameter("message");
ResultSet rs=null;
Connection con=null;
Statement s=null;
try
{
	 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 con=DriverManager.getConnection("jdbc:odbc:doctor","root","root");
	 s=con.createStatement();
	 
	 s.executeUpdate("inser into appointment values('" + deparment + "','" + doctor + "','" + adate + "','" + atime + "','" + name + "','" + phno + "','" + email + "','" + message + "')");
	 out.println("Appointment Granted");
	 //response.SendRedirect("index.html");
	 s.close();
	 con.close();
}
catch (Exception e)
{
	out.println("Error is" +e);
}
%>
</body>
</htmml>


