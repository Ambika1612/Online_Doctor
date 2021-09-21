
	<%@ page language="java" import="java.sql.*"%>
	<html>
	<form>
	<body>

<div>
<center><br/><br/><font size=6 color="blue"><b><u>Appointments</u></b></font><br/><br/><br/>
<table border=1  cellspacing=0>
<tr  >

<th><b>Appointment ID</b></th>
<th><b>User ID</b></th>
<th><b>Patient Name</b></th>
<th><b>Speciality</b></th>
<th><b>Doctor</b></th>
<th><b>Date</b></th>
<th><b>Time</b></th>
<th><b>Phone number</b></th>
<th><b>Email</b></th>
<th><b>Message</b></th>

</tr>
<% 


Statement s=null;	
ResultSet rs=null;	
Connection con=null;
	try
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:doctor","root","root");
		s=con.createStatement();

                rs=s.executeQuery("select * from appointment");
		while(rs.next())
	{

		
%>
		<tr>
		<td align="center"><font size=3 color=""><%=rs.getString(1)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(2)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(3)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(4)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(5)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(6)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(7)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(8)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(9)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(10)%></font></td>
		</tr>
<%		
		
	}
		s.close();
	        con.close();
	
	}
	catch(Exception e)
	{
		out.println("Error is :"+e);	

	}
%>

</table>
</div>
</body>
</form>
</html>