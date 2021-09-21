<%@ page language="java" import="java.sql.*"%>
<html>
<body>
<%
 String uid=request.getParameter("uid");
 Statement s=null;
 ResultSet rs=null;
 Connection con=null;
 try
 {
	  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	  con=DriverManager.getConnection("jdbc:odbc:doctor","root","root");
	  s=con.createStatement();
	  rs=s.executeQuery("select *from appointment where uid='"+uid+"'");
	  if(rs.next())
	  {
		s.executeUpdate("delete from appointment where uid='"+uid+"'");
		%>
		<CENTER><FONT SIZE=6 COLOR="BLUE"><u>Appointment DELETED successfully.</u></FONT></CENTER>
		<%
		
	  }
	  response.sendRedirect("indexx.html");
		 s.close();
		 con.close();
		 
 }
 catch(Exception e)
 {
	 out.println("Error is:" +e);
	 
 }
 %>
 </div>
 </form>
 </body>
 </html>