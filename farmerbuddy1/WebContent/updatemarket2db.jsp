<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/lit";%>
<%!String user = "root";%>
<%!String psw = "sinu";%>
<%
String mid = request.getParameter("mid");
String countrya=request.getParameter("state");
String state=request.getParameter("countrya");
String district=request.getParameter("district");
String marketarea=request.getParameter("marketarea");
if(mid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(mid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update addmarket set mid=?,state=?,countrya=?,district=?,marketarea=? where mid="+mid;
ps = con.prepareStatement(sql);
ps.setString(1,mid);
ps.setString(2, state);
ps.setString(3, countrya);
ps.setString(4, district);
ps.setString(5, marketarea);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
RequestDispatcher rd=request.getRequestDispatcher("/viewmarket.jsp");  
rd.include(request, response);  
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>