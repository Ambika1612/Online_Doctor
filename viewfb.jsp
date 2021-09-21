
	<%@ page language="java" import="java.sql.*"%>
	<html>
	<form>
	<body>

<div>
<center><br/><br/><font size=6 color="blue"><b><u>Feed Back</u></b></font><br/><br/><br/>
<table border=1  cellspacing=0>
<tr  >

<th><b>Opinion</b></th>
<th><b>Suggestion</b></th>


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

                rs=s.executeQuery("select * from feedback");
		while(rs.next())
	{

		
%>
		<tr>
		<td align="center"><font size=3 color=""><%=rs.getString(1)%></font></td>
		<td align="center"><font size=3 color=""><%=rs.getString(2)%></font></td>
		
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