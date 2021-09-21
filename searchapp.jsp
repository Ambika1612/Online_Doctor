<html>
<head>
	<%@ page language="java" import="java.sql.*"%>
</head>
<body>


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

<tr><td>Appointmentid</td><td align="center"><font size="" color=""><%=rs.getString(1)%></font></td></tr>
<tr><td>Speciality</td><td align="center"><font size="" color=""><%=rs.getString(2)%></font></td></tr>
<tr><td>Doctor</td><td align="center"><font size="" color=""><%=rs.getString(3)%></font></td></tr>
<tr><td>Date</td><td align="center"><font size="" color=""><%=rs.getString(4)%></font></td></tr>
<tr><td>Time</td><td align="center"><font size="" color=""><%=rs.getString(5)%></font></td></tr>
<tr><td>Name</td><td align="center"><font size="" color=""><%=rs.getString(6)%></font></td></tr>
<tr><td>Phone number</td><td align="center"><font size="" color=""><%=rs.getString(7)%></font></td></tr>
<tr><td>Email</td><td align="center"><font size="" color=""><%=rs.getString(8)%></font></td></tr>
<tr><td>Message</td><td align="center"><font size="" color=""><%=rs.getString(9)%></font></td></tr><br><br>





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
</table>

</form>
</body>
</html>