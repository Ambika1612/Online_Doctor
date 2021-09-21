
<html>
<%@ page language="java" import="java.sql.*"%>
<body>
<%
    String uid=request.getParameter("uid");
String name=request.getParameter("name");
String speciality=request.getParameter("speciality");
String ftime=request.getParameter("ftime");
String ttime=request.getParameter("ttime");
String phno=request.getParameter("phno");
String email=request.getParameter("email");
String address=request.getParameter("address");

	Connection con=null;
Statement s=null;
	try
	{
	 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 con=DriverManager.getConnection("jdbc:odbc:doctor","root","root");
	 s=con.createStatement();
	s.executeUpdate("insert into doctor (uid,name,speciality,ftime,ttime,phno,email,address) values('" + uid + "','" + name + "','" + speciality + "','" + ftime + "','" + ttime + "','" + phno + "','" + email + "','" + address + "')");
	
		  response.sendRedirect("docindex.html");
	  
  
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


