<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String tid=request.getParameter("tid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lit", "root", "sinu");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM trainer WHERE tid="+tid);
out.println("Data Deleted Successfully!");
RequestDispatcher rd=request.getRequestDispatcher("/viewtrainer.jsp");  
rd.include(request, response);  
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>