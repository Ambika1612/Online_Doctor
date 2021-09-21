<html>
<%@ page language="java" import="java.sql.*"%>
<body>
<%
     String uid = request.getParameter("uid");
    String name = request.getParameter("name");
    String pres = request.getParameter("pres");
	Connection con=null;
Statement s=null;
	try
	{
	 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 con=DriverManager.getConnection("jdbc:odbc:doctor","root","root");
	 s=con.createStatement();
	s.executeUpdate("insert into prescription (uid,name,pres) values('" + uid + "','" + name + "','"+pres+"')");
  
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