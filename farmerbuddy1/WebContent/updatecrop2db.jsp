<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/lit";%>
<%!String user = "root";%>
<%!String psw = "sinu";%>
<%
String cid = request.getParameter("cid");
String type=request.getParameter("type");
String cropname=request.getParameter("cropname");
String season=request.getParameter("season");
if(cid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(cid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update crops set cid=?,type=?,cropname=?,season=? where cid="+cid;
ps = con.prepareStatement(sql);
ps.setString(1,cid);
ps.setString(2, type);
ps.setString(3, cropname);
ps.setString(4, season);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
RequestDispatcher rd=request.getRequestDispatcher("/updatecropdb.jsp");  
rd.include(request, response);  
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>