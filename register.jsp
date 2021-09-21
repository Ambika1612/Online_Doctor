
<html>
<%@ page language="java" import="java.sql.*"%>
<body>
<%
    String utype=request.getParameter("utype");
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String gen=request.getParameter("gen");
String phno=request.getParameter("phno");
String email=request.getParameter("email");
String address=request.getParameter("address");
String username=request.getParameter("username");
String pass=request.getParameter("pass");
String cpass=request.getParameter("cpass");
	Connection con=null;
Statement s=null;
	try
	{
	 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 con=DriverManager.getConnection("jdbc:odbc:doctor","root","root");
	 s=con.createStatement();
	s.executeUpdate("insert into register (utype,firstname,lastname,gen,phno,email,address,username,pass,cpass) values('" + utype + "','" + firstname + "','" + lastname + "','" + gen + "','" + phno + "','" + email + "','" + address + "','" + username + "','" + pass + "','" + cpass + "')");
	
		  response.sendRedirect("log.html");
	  
  
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


