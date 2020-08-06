<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/lit";%>
<%!String user = "root";%>
<%!String psw = "sinu";%>
<%
String tid = request.getParameter("tid");
String status=request.getParameter("status");
String description=request.getParameter("description");
String schedule=request.getParameter("schedule");
if(tid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(tid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update trainer set tid=?,status=?,description=?,schedule=? where tid="+tid;
ps = con.prepareStatement(sql);
ps.setString(1,tid);
ps.setString(2, status);
ps.setString(3, description);
ps.setString(4, schedule);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
RequestDispatcher rd=request.getRequestDispatcher("/viewtrainer.jsp");  
rd.include(request, response);  
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>