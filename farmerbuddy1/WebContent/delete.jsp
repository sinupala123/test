<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String aid=request.getParameter("aid");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/lit", "root", "sinu");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM addcommedity WHERE aid="+aid);
out.println("Data Deleted Successfully!");
RequestDispatcher rd=request.getRequestDispatcher("/viewcommedity.jsp");  
rd.include(request, response);  
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>