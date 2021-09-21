<%@ page language="java" import="java.sql.*"%>
<html>
<body>
<form>
<div>
<% 
String appointmentid=request.getParameter("appointmentid");
String pres=request.getParameter("pres");

appointmentid=appointmentid.trim();
speciality=speciality.trim();
doctor=doctor.trim();
adate=adate.trim();
atime=atime.trim();
name=name.trim();
phno=phno.trim();
email=email.trim();
message=message.trim();

Statement s=null;
ResultSet rs=null;
Connection con=null;

try
{
	 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 con=DriverManager.getConnection("jdbc:odbc:doctor","root","root");
	 s=con.createStatement();
	 
	 s.executeUpdate("update  appointment set pres='" + pres + "' where appointmentid='" + appointmentid + "'");
	 %>
	 
	 <BR/>
	 <CENTER><FONT COLOR="BLUE" SIZE=6>Report modified successfull.</FONT></CENTER>
	 
	 <%
	 response.sendRedirect("docindex.html");
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
