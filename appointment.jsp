<%@ page language="java" import="java.sql.*"%>
<html>
<body>
<% 
String uid=request.getParameter("uid");
String name=request.getParameter("name");
String speciality=request.getParameter("specility");
String doctor=request.getParameter("doctor");
String adate=request.getParameter("adate");
String atime=request.getParameter("atime");
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
	 
	 s.executeUpdate("insert into appointment (uid,name,speciality,doctor,adate,atime,phno,email,message) values('" + uid + "','" + name + "','" + speciality + "','" + doctor + "','" + adate + "','" + atime + "','" + phno + "','" + email + "','" + message + "')");
	 out.println("Appointment Granted");
	 response.sendRedirect("indexx.html");
	 s.close();
	 con.close();
}
catch (Exception e)
{
	out.println("Error is" +e);
}
%>
</body>
</html>


