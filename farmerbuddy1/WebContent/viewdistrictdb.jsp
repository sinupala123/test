
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
	<%
String soilname=request.getParameter("soilname");
	out.println("<br><br><br><br><center><font color='green' size='5'>State ::"+soilname+"<h2></center>");
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
  
    <table width="700" border="1" align="center" bordercolor="#CD848F" bgcolor="FFFFFF">
<tr>
<td><font size="4" color="red">District</td>
<td><font size="4" color="red">Type</td>

</tr>
<%
try{
Connection con=DriverManager.getConnection(url,"root","sinu");
String sql="select * from adddistrict where soilname=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,soilname);
ResultSet rs=ps.executeQuery();
Map<String,List<String>> testMap = new HashMap<String,List<String>>();
int i=0;
	while(rs.next())
	{
	%>
		<tr>
		<td><font size="4" color="red"><%=rs.getString("district") %></td>
		<td><font size="4" color="red"><%=rs.getString("sports") %></td>		
		
		</tr>
	<% 
	}
con.close();
}
catch(Exception e)
{
e.printStackTrace();
}
RequestDispatcher rd=request.getRequestDispatcher("/viewdistrict.jsp");  
rd.include(request, response);  
%>
</table>
</center>
</body>
</html>