<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
String q=request.getParameter("q");  
response.sendRedirect("https://www.google.co.in/#q="+q); 
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>