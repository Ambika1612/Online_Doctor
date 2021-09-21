<html>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<body>
<form>
<table border="1">
<%
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/doctor", "root", "root");
String query = "select * from appointment where doctor='Dr Laxmi'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
if(rs.next()){
%>
<tr>
<tr><td>appointmentid</td><td align="center"><font size="" color=""><%=rs.getString(1)%></font></td></tr>
<tr><td>speciality</td><td align="center"><font size="" color=""><%=rs.getString(2)%></font></td></tr>
<tr><td>doctor</td><td align="center"><font size="" color=""><%=rs.getString(3)%></font></td></tr>
<tr><td>adate</td><td align="center"><font size="" color=""><%=rs.getString(4)%></font></td></tr>
<tr><td>atime</td><td align="center"><font size="" color=""><%=rs.getString(5)%></font></td></tr>
<tr><td>name</td><td align="center"><font size="" color=""><%=rs.getString(6)%></font></td></tr>
<tr><td>phno</td><td align="center"><font size="" color=""><%=rs.getString(7)%></font></td></tr>
<tr><td>email</td><td align="center"><font size="" color=""><%=rs.getString(8)%></font></td></tr>
<tr><td>message</td><td align="center"><font size="" color=""><%=rs.getString(9)%></font></td></tr></tr><br><br>

<%
}
}
catch(Exception e){}
%>
</table>
</form>
</body>
<html>