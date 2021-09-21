<html>
<head>
	<%@ page language="java" import="java.sql.*"%>
</head>
<body>
	<h2 align="center" color="blue">Postpone Appointment</h2>

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
	 
	 rs=s.executeQuery("select * from appointment where doctor='"+ doctor +"' "); 
	 while(rs.next())
	 {
		 %>

		 <form action="updateapp.jsp" method="post" align="center">
		 

<table border="" align="center">	 

<tr><td>Appointment ID</td><td><input type="text" name="appointmentid" align="center" value=<%=rs.getString(1)%>><font size="" color=""></font></td></tr>
<tr><td>User ID</td><td><input type="text" name="uid" align="center" value=<%=rs.getString(2)%>><font size="" color=""></font></td></tr>
<tr><td>Name</td><td><input type="text" name="name"align="center" value=<%=rs.getString(3)%>><font size="" color=""></font></td></tr>
<tr><td>Speciality</td><td><input type="text" name="speciality" align="center" value=<%=rs.getString(4)%>><font size="" color=""></font></td></tr>
<tr><td>Doctor</td><td><input type="text" name="doctor" align="center" value=<%=rs.getString(5)%>><font size="" color=""></font></td></tr>
<tr><td>Date</td><td><input type="text" name="adate" align="center" value=<%=rs.getString(6)%>><font size="" color=""></font></td></tr>
<tr><td>Time</td><td><input type="text" name="atime" align="center" value=<%=rs.getString(7)%>><font size="" color=""></font></td></tr>
<tr><td>Phone Number</td><td><input type="text" name="phno" align="center" value=<%=rs.getString(8)%>><font size="" color=""></font></td></tr>
<tr><td>Email</td><td><input type="text" name="email" align="center" value=<%=rs.getString(9)%>><font size="" color=""></font></td></tr>
<tr><td>Message</td><td><input type="text" name="message" align="center" value=<%=rs.getString(10)%>><font size="" color=""></font></td></tr><br><br>





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

</table><br>
<input type="submit" value="Update" align="center" size="10" /> <br><br>

</form>
</body>
</html>