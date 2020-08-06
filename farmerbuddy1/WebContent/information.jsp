
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
input, select, textarea ,value{
color: red;
text-align: right;
}
</style>
</head>
<body>
<form action="informationdb.jsp" method="post">
<% 
String s3=session.getAttribute("loginnames").toString();
%>
<div class="input">
<input type="hidden" name="loginname"  value=<%=s3%>></input></br>
<input type="submit" value="Submit">
</div>
<% RequestDispatcher rd=request.getRequestDispatcher("/farmerhome.jsp");  
rd.include(request, response);  
%>
</form>
</body>
</html>