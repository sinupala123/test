<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<title>Welcome page</title>
  <style>
  h1.{
  bg
  }
  </style>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <script type="text/javascript">
function myFunction() {
	  var x = document.getElementById("myInput");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
</script>
<style>
header {
 height:80px;
 background-image:url("a4.jpg");
 background-repeat:no-repeat;
 background-size:1600px 80px;
}

header img{
    float: left;
    display: inline-block;
}

header h1{
    font-size: 18px; 
    color: #f4f4f4;
    display: inline-block;
    position: relative;
    padding: 15px 15px 0 0;
    display: inline-block;
}
.bun{
         text-align:left;
         position:relative
      }
html {
	height:100%;
}
body {
	height:100%;
	background-color:white;
}
#mainpara {
	width:41%;
	margin:0 auto;
	padding:0;
	border-radius:1px;
	background-color:gray;
	text-align:center;
}
#header, #topleft {
	list-style:none;
	text-align:center;
}
#header li a, #topleft li a, #header ul li a {
	text-decoration:none;
	padding:0 in;
}
#topleft {
	float:right;
}
#header, #header ul {
	margin:0;
	padding:0;
	list-style:none;
}
#topleft li {
	float:left;
	margin:0 1em 0 0;
	background-color:lightgray;
}
#header {
	display:inline-block;
	font-size: 150%;
	margin:5px 0 0;
}
#header > li {
	display: inline-block;
	margin: 0 5px 5px 0;
	background-color: lime;
}
#header  li{	position:relative;}
#header li a {
	display:block;
	padding:5px 5px;
}
#header ul {
	position:absolute;
	top:100%;
	left:0;
	margin-left:-999em;
	width:200px;
	background:orange;
}
#header li:hover {
	background-color:;
}
#header ul li {
	display:block;
	text-align:left;
	font-size:16px;
	margin:0;
}
#header ul li a{padding:1px;}
#header li:hover > ul {
	margin:0;
}
#header li li:hover a{background:teal}
#header li li:hover > ul {
	margin:0;
	left:100%;
	top:0;
	background:teal;
}
#header li li li:hover a{background:green}
* {
	padding: 0; margin: 0;	
}
html {
	height: 100.1&#37;;	
}
* {
	padding: 0; margin: 0;	
}
html {
	height: 100.1&#37;;	
}
#content1 {
	float: left;
	width: 18%;
	height:63%;
	background-color:green;
}
#content2 {
	float:center;
	width: 90%;
	background-color:;
}
.slider{
text-align:center;
}
</style>

<header>
<a href="#">
    <h1> <font size="6" color="red"><i>FarmerBuddy</i></font></h1></a>
    <h1><img src="./a5.gif" alt="technocrat logo" height="50px" width="150px"></img>
    <h1><img src="./dals.gif" alt="technocrat logo" height="50px" width="150px">
    <h1><img src="./a6.gif" alt="technocrat logo" height="50px" width="150px">
</div>
</header>
</head>
</head>
<body>

<div id="mainpara">
		<ul id="header">
				<li><a href="#">Home</a></li>
				<li><a href="#">Training &raquo;</a>
						<ul>
								<li><a href="viewtraining2.jsp">ViewTraining</a> </li>
								<li><a href="addtraining2.jsp">TrainingRequest</a>
								</li>
								</ul>
								<li><a href="#">Query  &raquo;</a>
						<ul>
								<li><a href="viewquery1.jsp">viewQuery</a></li>
       								<li><a href="postanswer.jsp">PostAnswer</a> </li>
								
								</li>
								</ul>
						
									<li><a href="#">Mail &raquo;</a>
						<ul>
								<li><a href="inbex.jsp">Inbox</a> </li>
								<li><a href="usendmail.jsp">Send Mail</a>
								</li>
								<li><a href="usearchmail.jsp">Search</a></li>
								</ul>
				
								<li><a href="#">Security &raquo;</a>
						<ul>
								<li><a href="changepassword1.jsp">ChangePassword</a> </li>
								<li><a href="changeanswer1.jsp">ChangeAnswer</a>
								</li>
								</ul>
								
								<li><a href="logout.jsp">Logout</a></li>
								
		</ul>
</div>
<%
String driver="com.mysql.jdbc.Driver";
String name=request.getParameter("name");
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
<body>
  <br><br><br>
 <div id="content1">
	 <div class="bun">
        <img src="a6.jpg" height ="100" width ="224"> 
        <span style="padding-left:0px"></span>
   </div>
 <div class="bun">
        <img src="ag1.jpg" height ="100" width ="110"> 
        <span style="padding-left:0px"></span>
        <img src="ag2.jpg" height ="100" width ="110">
        </div>
    <div class="bun">
        <img src="ag3.jpg" height ="100" width ="110"> 
        <span style="padding-left:0px"></span>
        <img src="ag4.jpg" height ="100" width ="110">
        </div>
      <div class="bun">
        <img src="ag5.jpg" height ="100" width ="110"> 
        <span style="padding-left:0px"></span>
        <img src="ag6.jpg" height ="100" width ="110">
   </div>
   </div>
          		</div>
          		</div>
            <div id="content2">
	<center>
		 <table width="700" border="1" align="center" bordercolor="#CD848F" bgcolor="FFFFFF">
<tr>
<th><font size="4" color="red">Qid</th>
<th><font size="4" color="red">ProblemStatement</th>
<th><font size="4" color="red">Answer</th>
</tr>
<%
try{
Connection con=DriverManager.getConnection(url,"root","sinu");
String sql="select * from answer where name=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1, name);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
%>
	<tr>
	<td><font size="4" color="red"><%=rs.getString("aid") %></td>
	<td><font size="4" color="red"><%=rs.getString("problem") %></td>
	<td><font size="4" color="red"><%=rs.getString("answer") %></td>
	</tr>
<% 
}
else
{
%>
<script>
alert("Plz enter valid name");
window.location="viewanswer1.jsp";    
</script>
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