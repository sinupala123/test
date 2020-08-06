<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/lit";
try{
	Class.forName(driver);
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
  <title>Welcome page</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
  <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
  </script> 
</head>

<body>
  <style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float:right;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: right;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: right;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body>

<div class="navbar">
<a href="logout.jsp">logout</a>
  <div class="dropdown">
    <button class="dropbtn">Security
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="changepassword.jsp">ChangePassword</a>
      <a href="changeanswer.jsp">ChangeAnswer</a>
    </div>
  </div> 
  <a href="sendquary.jsp">SendQuery</a>
  <a href="usersoluationdb.jsp">Soluation</a>
  <div class="dropdown">
    <button class="dropbtn">Training
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="viewtrainer.jsp">viewTraining</a>
      <a href="trainingequest.jsp">TrainingRequest</a>
    </div>
  </div> 
  <a href="index.jsp">Home</a>
</div>
	<div id="site_content">		
	  <h1><a href="#">FARMERBUDDY</a></h1>
            <center>
    <center>
    <br>
    <br>
<table border="1">
<tr>
<th>Season</th>
<th>Season Duration</th>
<th>Soil</th>
<th>Crops</th>
<th>Query</th>
<th>Soluation</th>
</tr>
<%
try{
Connection con=DriverManager.getConnection(url,"root","sinu");
String sql="select * from soluation";
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
while(rs.next())
{
%>
	<tr>
	<td><%=rs.getString("session1") %></td>
	<td><%=rs.getString("sessiond") %></td>
	<td><%=rs.getString("sessions") %></td>
	<td><%=rs.getString("sessionc") %></td>
	<td><%=rs.getString("message") %></td>
	<td><%=rs.getString("message1") %></td>
	</tr>
<% 
}
con.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</table>
</center>
</body>
</html>