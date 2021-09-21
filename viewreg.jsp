
	<%@ page language="java" import="java.sql.*"%>
	<html>
	<form action="indexx.html" method="post" align="center">
	<body>

<div>
<center><br/><br/><font size=6 color="blue"><b><u>User Details</u></b></font><br/><br/><br/>
<table border=1  cellspacing=0>
<tr  >

<th><b>User ID</b></th>
<th><b>First Name</b></th>
<th><b>Last Name</b></th>
<th><b>Gender</b></th>
<th><b>Phone Number</b></th>
<th><b>Email</b></th>



</tr>
<% 

String utype=request.getParameter("utype");
Statement s=null;	
ResultSet rs=null;	
Connection con=null;
	try
	{
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		con=DriverManager.getConnection("jdbc:odbc:doctor","root","root");
		s=con.createStatement();
		

                rs=s.executeQuery("select * from register where utype='"+utype+"'");
		while(rs.next())
	{

		
%>
		<tr>
		<td align="center"><font size=3 color=""><%=rs.getString(2)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(3)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(4)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(5)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(6)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(7)%></font></td>
		
		
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


</div>
</body>
</form>
</html>