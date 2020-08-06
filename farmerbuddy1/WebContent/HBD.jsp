
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
String url="jdbc:mysql://localhost:3306/lit?useUnicode=true&characterEncoding=UTF-8";
Class.forName("com.mysql.jdbc.Driver");
		
Connection	con=DriverManager.getConnection(url,"root","sinu");
%>