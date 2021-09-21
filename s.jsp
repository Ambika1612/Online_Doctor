<html>
	<%@ page language="java" import="java.sql.*"%>
<body>
<h2 align="center"><font color="blue" ><u>Appointments</u></font></h2>

    <%
							
String appointmentid=request.getParameter("appointmentid");
String speciality=request.getParameter("speciality");
String doctor=request.getParameter("doctor");

Statement s=null;
ResultSet rs=null;
Connection con=null;

try
{
	 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 con=DriverManager.getConnection("jdbc:odbc:doctor","root","root");
	 s=con.createStatement();
	 
	 rs=s.executeQuery("select * from appointment where doctor='"+ doctor +"' "); 
	 while(rs.next())
	 {
		 %>

		 <form>

<table border="1" align="center">	 

<tr><td>Appointment ID</td><td align="center"><font size="" color=""><%=rs.getString(1)%></font></td></tr>
<tr><td>Patient ID</td><td align="center"><font size="" color=""><%=rs.getString(2)%></font></td></tr>
<tr><td>Patient Name</td><td align="center"><font size="" color=""><%=rs.getString(3)%></font></td></tr>
<tr><td>Speciality</td><td align="center"><font size="" color=""><%=rs.getString(4)%></font></td></tr>
<tr><td>Doctor</td><td align="center"><font size="" color=""><%=rs.getString(5)%></font></td></tr>
<tr><td>Date</td><td align="center"><font size="" color=""><%=rs.getString(6)%></font></td></tr>
<tr><td>Time</td><td align="center"><font size="" color=""><%=rs.getString(7)%></font></td></tr>
<tr><td>phno</td><td align="center"><font size="" color=""><%=rs.getString(8)%></font></td></tr>
<tr><td>email</td><td align="center"><font size="" color=""><%=rs.getString(9)%></font></td></tr>
<tr><td>message</td><td align="center"><font size="" color=""><%=rs.getString(10)%></font></td></tr><br><br>


</table>

<%
	 }
	 s.close();
	 con.close();
}
catch (Exception e)
{
	out.println("Error is :" +e);
}
%>

</form>
</body>
</html>