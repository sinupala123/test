<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/lit";%>
<%!String user = "root";%>
<%!String psw = "sinu";%>
<%
String countrya = request.getParameter("countrya");
String state=request.getParameter("state");
String district=request.getParameter("district");
String marketarea=request.getParameter("marketarea");
if(district != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(district);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update trainer set countrya=?,state=?,district=?,markerarea=? where district="+district;
ps = con.prepareStatement(sql);
ps.setString(1,countrya);
ps.setString(2, state);
ps.setString(3, district);
ps.setString(4, marketarea);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
RequestDispatcher rd=request.getRequestDispatcher("/update1.jsp");  
rd.include(request, response);  
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>