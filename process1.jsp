<%@ page language="java" import="java.sql.*"%>
<html>
<body>
<% 
String fname=request.getParameter("fname"); 
String lname=request.getParameter("lname"); 
String email=request.getParameter("email"); 
String myloc=request.getParameter("myimg"); 
ResultSet rs=null;
Connection con=null;
Statement s=null;
try
{
	 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 con=DriverManager.getConnection("jdbc:odbc:doctor","root","root");
	 s=con.createStatement();
	 
	 s.executeUpdate("insert into image values('" + fname + "','" + lname + "','" + email + "','" + myloc + "')");
	 response.sendRedirect("indexx.html");
	 s.close();
	 con.close();
}
catch (Exception e)
{
	out.println("Error is:" +e);
}
%>
</body>
</html>


