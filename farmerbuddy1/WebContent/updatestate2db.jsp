<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/lit";%>
<%!String user = "root";%>
<%!String psw = "sinu";%>
<%
String id = request.getParameter("id");
String state=request.getParameter("state");
String weather=request.getParameter("weather");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update addstate1 set id=?,state=?,weather=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2, state);
ps.setString(3, weather);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
RequestDispatcher rd=request.getRequestDispatcher("/updatestatedb.jsp");  
rd.include(request, response);  
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>