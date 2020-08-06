<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <center>
<%
String state=request.getParameter("state");
out.println("<font color='green' size='5'>"+state+"</font>");
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/lit";
try{
	Class.forName(driver);
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
    <center>
<br> <table width="1200" border="1" align="center" bordercolor="#CD848F" bgcolor="FFFFFF">
<tr>
<th><font size="4" color="red">SoilName</th>
<th><font size="4" color="red">Type</th>
<th><font size="4" color="red">CropName</th>
<th><font size="4" color="red">Season</th>
<th><font size="4" color="red">From</th>
<th><font size="4" color="red">To</th>
<th><font size="4" color="red">Peroid</th>
</tr>
<%
try{
Connection con=DriverManager.getConnection(url,"root","sinu");
String sql="select * from crops where state=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,state);
ResultSet rs=ps.executeQuery();
while(rs.next())
{
%>
	<tr>
	<td><center><font size="4" color="red"><%=rs.getString("soilname") %></td>
	<td><center><font size="4" color="red"><%=rs.getString("type") %></td>
	<td><center><font size="4" color="red"><%=rs.getString("cropname") %></a></td>
	<td><center><font size="4" color="red"><%=rs.getString("season") %></td>
	<td><center><font size="4" color="red"><%=rs.getString("from1") %></td>
	<td><center><font size="4" color="red"><%=rs.getString("to1") %></a></td>
	<td><center><font size="4" color="red"><%=rs.getString("peroid") %></td>
	</tr>
<% 
}
RequestDispatcher rd=request.getRequestDispatcher("/areawise.jsp");  
rd.include(request, response); 
con.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>

</table>
</center>
</body>
</html>