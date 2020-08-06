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
	width:76%;
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
	padding:5px 10px;
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
	float: right;
	width: 70%;
	height:90%;
	background-color:;
}
    table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 80%;
 
}

th, td {
  text-align: center;
  padding: 4px;
}

tr:nth-child(even){background-color:white; }
tr:nth-child(odd){background-color:white; }
</style>
<header>
<a href="#">
    <h1> <font size="5" color="red"><i>FarmerBuddy</i></font></h1></a>
    <h1><img src="./a5.gif" alt="technocrat logo" height="50px" width="150px"></img>
    <h1><img src="./dals.gif" alt="technocrat logo" height="50px" width="150px">
    <h1><img src="./a6.gif" alt="technocrat logo" height="50px" width="150px">
</div>
</header>
</head>
</head>
<div id="mainpara">
		<ul id="header">
				<li><a href="#">Home</a></li>
				<li><a href="#">Training &raquo;</a>
						<ul>
								<li><a href="addtraining.jsp">AddTraining</a> </li>
								<li><a href="viewtrainer.jsp">UpdateTraining</a>
								</li>
								</ul>
								<li><a href="#">Crops  &raquo;</a>
						<ul>
								<li><a href="addcrops.jsp">AddCrops</a> </li>
								<li><a href="updatecrop.jsp">UpdateCrops</a>
								</li>
								</ul>
				<li><a href="#">Soil &raquo;</a>
						<ul>
								<li><a href="#">SoilInfo &raquo; </a> 
								<ul>
												<li><a href="addsoilinfo.jsp">Add Soil</a></li>
											<li><a href="viewsoil.jsp">View Soil</a></li>
										</ul>
								</li>
								<li><a href="#">StateInfo &raquo;</a>
										<ul>
												<li><a href="addstateinfo.jsp">Add State</a></li>
												<li><a href="updatestate.jsp">Update State</a></li>
												
										</ul>
								</li>
								<li><a href="#">DistrictInfo &raquo;</a>
								<ul>
												<li><a href="adddistrict.jsp">Add District</a></li>
												<li><a href="viewdistrict.jsp">View District</a></li>
												
										</ul>
								</li>
						</ul>
				</li>
				<li><a href="#">Fertilizer &raquo;</a>
						<ul>
								<li><a href="addfertilazer.jsp">AddFertilizer</a> </li>
								<li><a href="viewfertilizer.jsp">UpdateFertilizer</a>
								</li>
								</ul>
								<li><a href="#">Market</a>
						<ul>
								<li><a href="addcommedity.jsp">AddCommedity</a> </li>
								<li><a href="viewcommedity.jsp">ViewCommedity</a>
								</li>
								<li><a href="addmarket.jsp">AddMarketName</a> </li>
								<li><a href="viewmarket.jsp">ViewMarket</a>
								</li>
								<li><a href="addmarketreport.jsp">ViewReport</a>
								</li>
								</ul>
			
				<li><a href="#">Report &raquo;</a>
						<ul>
								<li><a href="areawise.jsp">Areawise Crops</a> </li>
								<li><a href="soilbasedfertilizer.jsp">Soil based Fertiliazer</a>
								</li>
								<li><a href="commeditywise.jsp">CommedityWise</a>
								</li>
								<li><a href="mktdaily.jsp">Marketwise Daily</a>
								</li>
								<li><a href="mktmonthly.jsp">Marketwise Monthly</a>
								</li>
									<li><a href="agoregistration1.jsp">AGO Registration</a>
								</li>
								</ul>
								<li><a href="#">Security &raquo;</a>
						<ul>
								<li><a href="changepassword.jsp">ChangePassword</a> </li>
								<li><a href="changeanswer.jsp">ChangeAnswer</a>
								</li>
								</ul>
									<li><a href="#">Mail &raquo;</a>
						<ul>
								<li><a href="inbox.jsp">Inbox</a> </li>
								<li><a href="sendmail.jsp">Send Mail</a>
								</li>
								<li><a href="mailserach.jsp">Search</a>
								</li>
								</ul>
								<li><a href="logout.jsp">Logout</a></li>
								
		</ul>
</div>
</div><br><br><br><br><br><br>
	 
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
<table border="">
<tr>
<th><font size="4" color="red">Tittle</th>
<th><font size="4" color="red">Status</th>
<th><font size="4" color="red">Description</th>
<th><font size="4" color="red">Schedule</th>
<th><font size="4" color="red">Action</th>
<th><font size="4" color="red">Action</th>
</tr>
<%
try{
Connection con=DriverManager.getConnection(url,"root","sinu");
String sql="select * from trainer";
PreparedStatement ps=con.prepareStatement(sql);
ResultSet rs=ps.executeQuery();
int i=0;
while(rs.next())
{
%>
	<tr>
	<td><font size="4" color="red"><%=rs.getString("soilname") %></td>
	<td><font size="4" color="red"><%=rs.getString("status") %></td>
	<td><font size="4" color="red"><%=rs.getString("description") %></td>
	<td><font size="4" color="blue"><%=rs.getString("schedule") %></td></td></td>
	<td><font size="4" color="red"><a href="delete1.jsp?tid=<%=rs.getString("tid") %>"><button type="button" class="delete"><font size="4" color="red">Delete</button></a></td>
	<td><a href="update.jsp?tid=<%=rs.getString("tid") %>"><button type="button" class="update"><font size="4" color="red">Update</button></a></td>
	</tr>
<% 
i++;
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