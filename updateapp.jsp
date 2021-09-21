<%@ page language="java" import="java.sql.*"%>
<html>
<body>
<form>
<div>
<% 
String appointmentid=request.getParameter("appointmentid");
String adate=request.getParameter("adate");
String atime=request.getParameter("atime");


appointmentid=appointmentid.trim();
adate=adate.trim();
atime=atime.trim();

Statement s=null;
ResultSet rs=null;
Connection con=null;

try
{
	 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 con=DriverManager.getConnection("jdbc:odbc:doctor","root","root");
	 s=con.createStatement();
	 
	 s.executeUpdate("update  appointment set adate='" + adate + "',atime='" + atime + "' where appointmentid='" + appointmentid + "'");
	 %>
	 
	 <BR/>
	 <CENTER><FONT COLOR="BLUE" SIZE=6>Appointment modified successfull.</FONT></CENTER>
	 
	 <%
	 response.sendRedirect("indexx.html");
	 s.close();
	 con.close();
}
catch (Exception e)
{
	out.println("Error is :" +e);
}
%>
</div>
</form>
</body>
</html>
