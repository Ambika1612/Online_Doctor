<% page laguage="java" import="java.sql.*" %>
<html>
<body>
<% 
String utype=request.getParameter("usertype");
String uid=request.getParameter("userid");
String first=request.getParameter("firstname");
String last=request.getParameter("lastname");
String gen=request.getParameter("gender");
String user=request.getParameter("username");
String pass=request.getParameter("password");
String conf=request.getParameter("Conf");
String email=request.getParameter("email");
String phone=request.getParameter("Phone");
String add=request.getParameter("Address");
ResultSet rs=null;
Connection con=null;
statement s=null;
try
{
	 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 con=DriverManager.getConnection("jdbc:odbc:doctor","root","root");
	 s=con.CreatesStatement();
	 
	 s.executeUpdate("inser into register values( '" + utype + "', '" + uid + "' , '" + first + "','" + last + "','" + gen + "','" + user + "','" + pass + "','" + conf + "','" + email + "','" + phone + "','" + add + "',)");
	 out.println("Record Inserted");
	 response.SendRedirect("log.html");
	 s.close();
	 con.close();
}
catch (Exception e)
{
	out.println("Error is" +e);
}
%>
</body>
</htmml>


