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
h1 .{bg
	
}
</style>
<meta name="description" content="free website template" />
<meta name="keywords" content="enter your keywords here" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<style>
header {
	height: 80px;
	background-image: url("a4.jpg");
	background-repeat: no-repeat;
	background-size: 1600px 80px;
}

header img {
	float: left;
	display: inline-block;
}

header h1 {
	font-size: 18px;
	color: #f4f4f4;
	display: inline-block;
	position: relative;
	padding: 15px 15px 0 0;
	display: inline-block;
}

.bun {
	text-align: left;
	position: relative
}

html {
	height: 100%;
}

body {
	height: 100%;
	background-color: white;
}

#mainpara {
	width: 56%;
	margin: 0 auto;
	padding: 0;
	border-radius: 0px;
	background-color: gray;
	text-align: center;
}

#header, #topleft {
	list-style: none;
	text-align: center;
}

#header li a, #topleft li a, #header ul li a {
	text-decoration: none;
	padding: 0 in;
}

#topleft {
	float: right;
}

#header, #header ul {
	margin: 0;
	padding: 0;
	list-style: none;
}

#topleft li {
	float: left;
	margin: 0 1em 0 0;
	background-color: lightgray;
}

#header {
	display: inline-block;
	font-size: 150%;
	margin: 5px 0 0;
}

#header>li {
	display: inline-block;
	margin: 0 5px 3px 0;
	background-color: lime;
}

#header  li {
	position: relative;
}

#header li a {
	display: block;
	padding: 5px 10px;
}

#header ul {
	position: absolute;
	top: 100%;
	left: 0;
	margin-left: -999em;
	width: 160px;
	background: orange;
}

#header li:hover {
	background-color:;
}

#header ul li {
	display: block;
	text-align: left;
	font-size: 15px;
	margin: 0;
}

#header ul li a {
	padding: 1px;
}

#header li:hover>ul {
	margin: 0;
}

#header li li:hover a {
	background: teal
}

#header li li:hover>ul {
	margin: 0;
	left: 100%;
	top: 0;
	background: teal;
}

#header li li li:hover a {
	background: green
}

* {
	padding: 0;
	margin: 0;
}

html {
	height: 100.1&#37;;
}

* {
	padding: 0;
	margin: 0;
}

html {
	height: 100.1&#37;;
}

#content1 {
	float: left;
	width: 18%;
	height: 63%;
	background-color: green;
}

#content2 {
	float:right;
	width: 75%;
	height: 90%;
	background-color:;
}
#help{
      float:right;
       background-color: lightblue;
       
}
</style>
<header> 
<div id="help">
<br>
<%
String s3=session.getAttribute("loginnames").toString();
%>
<img src="man.png" height="60px" width="100px"></img></a></div>


</div>
</div>
	<h1>
		<font size="6" color="red">
		<i>FarmerBuddy</i></font>
	</h1>
</a>
<h1>
	<img src="./a5.gif" alt="technocrat logo" height="50px" width="150px"></img>
	<h1>
		<img src="./dals.gif" alt="technocrat logo" height="50px"
			width="150px">
			<h1>
				<img src="./a6.gif" alt="technocrat logo" height="50px"
					width="150px">					

</header>
<a href="information.jsp"><button type="button" style="background-color: lightgreen;float:right;font-size:25px;color:red;font-style:italic; height: 30px; width: 100px"><%=s3 %></button>

</head>
<div id="mainpara">
	<ul id="header">
		<li><a href="#">Home</a></li>
		<li><a href="#">Training &raquo;</a>
			<ul>
				<li><a href="viewtraining2.jsp">ViewTraining
						&nbsp&nbsp&nbsp <img
						src="arrow-right.gif"></img>
				</a></li>
				<li><a href="addtraining2.jsp">TrainingRequest
						<img src="arrow-right.gif"></img>
				</a></li>
			</ul>
			<li><a href="#">Query &raquo;</a>
				<ul>
					<li><a href="viewquery1.jsp">viewQuery &nbsp&nbsp
							&nbsp&nbsp&nbsp&nbsp<img
							src="arrow-right.gif"></img>
					</a></li>
					<li><a href="postanswer.jsp">PostAnswer
							&nbsp&nbsp&nbsp&nbsp&nbsp<img
							src="arrow-right.gif"></img>
					</a></li></li>
	</ul>
	<li><a href="#">Report &raquo;</a>
						<ul>
								<li><a href="fareawise.jsp">Areawise Crops</a> </li>
								<li><a href="fsoilbasedfertilizer.jsp">Soil based Fertiliazer</a>
								</li>
								<li><a href="fcommeditywise.jsp">CommedityWise</a>
								</li>
								<li><a href="fmktdaily.jsp">Marketwise Daily</a>
								</li>
								<li><a href="fmktmonthly.jsp">Marketwise Monthly</a>
								</li>
									<li><a href="fagoregistration1.jsp">AGO Registration</a>
								</li>
								</ul>

	<li><a href="#">Mail &raquo;</a>
		<ul>
			<li><a href="uinbex.jsp">Inbox
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img
					src="arrow-right.gif"></img>
			</a></li>
			<li><a href="usendmail.jsp">Send Mail
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img
					src="arrow-right.gif"></img>
			</a></li>
			<li><a href="usearch.jsp">Search&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<img
					src="arrow-right.gif"></img></a></li>
		</ul>

		<li><a href="#">Security &raquo;</a>
			<ul>
				<li><a href="changepassword1.jsp">ChangePassword<img
						src="arrow-right.gif"></img></a></li>
				<li><a href="changeanswer1.jsp">ChangeAnswer<img
						src="arrow-right.gif"></img></a></li>
			</ul>

			<li><a href="logout.jsp">Logout</a></li>
			</ul>
			
</div>
</div>
<br><br><br><br>
<!--  <a href="information.jsp"><input type="button" value="ViewProfile"></input></a></center>-->

				<div id="content1">
					<div class="bun">
						<img src="a8.jpg" height="100" width="224"> <span
							style="padding-left: 0px"></span>
					</div>
					<div class="bun">
						<img src="ag1.jpg" height="100" width="110"> <span
							style="padding-left: 0px"></span> <img src="ag2.jpg" height="100"
							width="110">
					</div>
					<div class="bun">
						<img src="ag3.jpg" height="100" width="110"> <span
							style="padding-left: 0px"></span> <img src="ag4.jpg" height="100"
							width="110">
					</div>
					<div class="bun">
						<img src="ag5.jpg" height="100" width="110"> <span
							style="padding-left: 0px"></span> <img src="ag6.jpg" height="100"
							width="110">
					</div>
				</div>
				</div>
				</div>
				<div id="content2">
				<br><br><br>
				
				
				
				<% 
								String s2=session.getAttribute("loginnames").toString();
								out.println("<font size='5' color='green'>welcome to "+s2+"</a> farmer home page");
							
				%>
				

					</br>
					</br>
					</html>