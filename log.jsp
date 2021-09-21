<%@ page language="java" import="java.sql.*"%>
<html>
<head>
<title> Login Page </title>
</head>
<body>
<% 
String utype=request.getParameter("utype");
String uid=request.getParameter("uid");
String username=request.getParameter("username");
String pass=request.getParameter("pass");
String str=null;
Connection con=null;
Statement s=null;
ResultSet rs=null;
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
con=DriverManager.getConnection("jdbc:odbc:doctor","root","root");
s=con.createStatement();
if( utype.trim().equals("Admin") && username.toLowerCase().trim().equals("ambika") && pass.toLowerCase().trim().equals("aaa"))
{
	response.sendRedirect("adminindex.html");
}
%>
<%
rs=s.executeQuery("select * from register where utype='"+ utype +"' and username='"+ username +"' and pass='"+ pass +"'");
if (rs.next())
{

if(utype == null )
{
	out.println("invalid");
}

 else if(utype.trim().equals("Patient"))
	  {
        response.sendRedirect("indexx.html");
	  }
	  else
	  {
		  response.sendRedirect("docindex.html");
	  }
  	
out.println("Login success");
s.close();
con.close();
}
else
{
out.println("Not Found");
}
}
catch(Exception e)
{
out.println("Error is" +e);
}
%>
</body>
</html>