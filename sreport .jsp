<html>
<head>
	<%@ page language="java" import="java.sql.*"%>
</head>
<body>
<h2 align="center"><font color="blue"><u>Change Report</u></font></h2>

<%
String uid=request.getParameter("uid");
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
	 
	 rs=s.executeQuery("select * from prescription where uid='"+ uid +"' "); 
	 while(rs.next())
	 {
		 %>

		 <form action="updatereport.jsp" method="post" align="center">
		 
		

<table border="" align="center">	 

<tr><td>User ID</td><td><input type="text" name="uid" align="center" value=<%=rs.getString(1)%>><font size="" color=""></font></td></tr>
<tr><td>Name</td><td><input type="text" name="name" align="center" value=<%=rs.getString(2)%>><font size="" color=""></font></td></tr>
<tr><td>Prescription</td><td><input type="text" name="pres" align="center" value=<%=rs.getString(3)%>><font size="" color=""></font></td></tr><br><br>

<tr><td>Appointment ID</td><td><input type="text" name="appointmentid" align="center" value=<%=rs.getString(1)%>><font size="" color=""></font></td></tr><br><br>





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
<input type="submit" value="Update" align="center" size="10" /> <br><br>


</form>
</body>
</html>