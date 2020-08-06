<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
	<%
	
	String commedity=request.getParameter("commedity");
	out.println("<center><font size='5' color='green'>Commedity ::"+commedity+"</font>");
	String arrivald=request.getParameter("arrivald");
	out.println("<center><font size='5' color='green'>FOR THE MONTH OF::: "+arrivald+"</font><br>");
	
	
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
    <br>
     <table width="700" border="1" align="center" bordercolor="#CD848F" bgcolor="FFFFFF">
<tr>
<td><font size="4" color="red">Market</td>
<td><font size="4" color="red">Commedity</td>
<td><font size="4" color="red">Arrival</td>
<td><font size="4" color="red">Unit Of Price</td>
<td><font size="4" color="red">Variety</td>
<td><font size="4" color="red">Grade</td>
<td><font size="4" color="red">MaxiumPrice</td>
<td><font size="4" color="red">MinimumPrice</td>
<td><font size="4" color="red">ModelPrice</td>
<td><font size="4" color="red">Unit Of Price</td>
</tr>
<%
try{
Connection con=DriverManager.getConnection(url,"root","sinu");
String sql="SELECT * FROM marketreport group by date_format(arrivald,'%m') as month";
//String sql="SELECT * FROM marketreport WHERE commedity=?,and arrivald LIKE '%y/%m/'";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,commedity);
ps.setString(2,arrivald);
ResultSet rs=ps.executeQuery();
while(rs.next())
{
%>
	<tr>
	<td><font size="4" color="red"><%=rs.getString("market") %></td>
	<td><font size="4" color="red"><%=rs.getString("commedity") %></td>
	<td><font size="4" color="red"><%=rs.getString("arrival") %></td>
	<td><font size="4" color="red"><%=rs.getString("uoa") %></td>	
	<td><font size="4" color="red"><%=rs.getString("variety") %></td>
	<td><font size="4" color="red"><%=rs.getString("grade") %></td>
	<td><font size="4" color="red"><%=rs.getString("maximumprice") %></td>
	<td><font size="4" color="red"><%=rs.getString("minimumprice") %></td>
	<td><font size="4" color="red"><%=rs.getString("modelprice") %></td>
	<td><font size="4" color="red"><%=rs.getString("uop") %></td>
	</tr>
<% 
RequestDispatcher rd=request.getRequestDispatcher("/mktmonthly.jsp");  
rd.include(request, response);  
}
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