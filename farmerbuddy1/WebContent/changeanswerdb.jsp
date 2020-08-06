<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String sa=request.getParameter("sa");
String npass=request.getParameter("npass");
String cpass=request.getParameter("cpass");
String connurl = "jdbc:mysql://localhost:3306/lit";
Connection con=null;
String pass1="";
int fid=0;
try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(connurl, "root", "sinu");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from farmerreg2 where sa='"+sa+"'");
while(rs.next()){
fid=rs.getInt(1);
pass1=rs.getString(12);
} System.out.println(fid+ " "+pass1);
if(pass1.equals(sa)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update farmerreg2 set pass='"+npass+"' where fid='"+fid+"'");
out.println("answer changed successfully"); 
st1.close();
con.close();
}
else{
out.println("Invalid Current answer");
}
}
catch(Exception e){
out.println(e);
}
%>