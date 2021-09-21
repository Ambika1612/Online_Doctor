<%@ page language="java" import="java.sql.*"%>
<html>
<body>
<%
 String appointmentid=request.getParameter("appointmentid");
 Statement s=null;
 ResultSet rs=null;
 Connection con=null;
 try
 {
	  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	  con=DriverManager.getConnection("jdbc:odbc:doctor","root","root");
	  s=con.createStatement();
	  rs=s.executeQuery("select *from appointment where appointmentid='"+appointmentid+"'");
	  if(rs.next())
	  {
		s.executeUpdate("delete from appointment where appointmentid='"+appointmentid+"'");
		%>
		<CENTER><FONT SIZE=6 COLOR="BLUE"><u>Appointment DELETED successfully.</u></FONT></CENTER>
		<%
		
	  }
	  response.sendRedirect("docindex.html");
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