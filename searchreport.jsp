<html>
<head>
	<%@ page language="java" import="java.sql.*"%>
</head>
<body>
<h2 align="center" color="blue">Report</h2>

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

		 <form>
		 
		

<table border="" align="center">	 

<tr><td>User ID</td><td align="center"><font size="" color=""><%=rs.getString(1)%></font></td></tr>
<tr><td>Name</td><td align="center"><font size="" color=""><%=rs.getString(2)%></font></td></tr>
<tr><td>Prescription</td><td align="center"><font size="" color=""><%=rs.getString(3)%></font></td></tr><br><br>





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