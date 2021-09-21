<%@ page language="java" import="java.sql.*"%>
<html>
<body>
<% 
String fb=request.getParameter("fb");
String feedback=request.getParameter("feedback");
ResultSet rs=null;
Connection con=null;
Statement s=null;
try
{
	 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 con=DriverManager.getConnection("jdbc:odbc:doctor","root","root");
	 s=con.createStatement();
	 
	 s.executeUpdate("insert into feedback values('" + fb + "','" + feedback + "')");
	 out.println("Thank you ");
	 response.sendRedirect("indexx.html");
	 s.close();
	 con.close();
}
catch (Exception e)
{
	out.println("Error is" +e);
}
%>
</body>
</html>


