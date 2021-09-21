
	<%@ page language="java" import="java.sql.*"%>
	<html>
	<form action="appoint.html" method="post" align="center">
	<body>

<div>
<center><br/><br/><font size=6 color="blue"><b><u>Doctor Details</u></b></font><br/><br/><br/>
<table border=1  cellspacing=0>
<tr  >

<th><b>Dcoctor ID</b></th>
<th><b>Name</b></th>
<th><b>speciality</b></th>
<th><b>Form</b></th>
<th><b>TO</b></th>
<th><b>phno</b></th>
<th><b>email</b></th>
<th><b>Address</b></th>

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

                rs=s.executeQuery("select * from doctor");
		while(rs.next())
	{

		
%>
		<tr>
		<td align="center"><font size=3 color=""><%=rs.getString(1)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(3)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(4)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(5)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(6)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(7)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(8)%></font></td>
		
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

</table><br><br>
<button type="submit" > Take Appointment </button>

</div>
</body>
</form>
</html>