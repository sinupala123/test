<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/lit";%>
<%!String user = "root";%>
<%!String psw = "sinu";%>
<%
String fid = request.getParameter("fid");
String type=request.getParameter("type");
String cropname=request.getParameter("cropname");
String nitergon=request.getParameter("nitergon");
String phosporous=request.getParameter("phosporous");
String coffeecreamer=request.getParameter("coffeecreamer");
if(fid != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(fid);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update fertilizer set fid=?,type=?,cropname=?,nitergon=?,phosporous=?,coffeecreamer=? where fid="+fid;
ps = con.prepareStatement(sql);
ps.setString(1,fid);
ps.setString(2, type);
ps.setString(3, cropname);
ps.setString(4, nitergon);
ps.setString(5, phosporous);
ps.setString(6, coffeecreamer);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
}
RequestDispatcher rd=request.getRequestDispatcher("/viewfertilizer.jsp");  
rd.include(request, response);  
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>