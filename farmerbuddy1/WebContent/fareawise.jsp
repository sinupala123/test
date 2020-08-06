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
 height:100px;
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
	width:56%;
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
.slider{
width:170;
height:90;
background:url("header1.jpg");
margin:100Px,auto;
animation:slide 20s infinite;
}
@keyframes slide
{25%{
background:url("slide-2.png");
}
50%{
background("slide-3.png");
}
75%{
background:url("slide-4.png");
}
100%{
background:url("b1.png");
}
}
#content1 {
	float: left;
	width: 18%;
	height:63%;
	background-color:;
}
#content2 {
	float:right;
	width: 70%;
	height:90%;
	background-color:;
}
</style>
<header>
<a href="#">
<div class="slider">
    <h1> <font size="5" color="red"><i>FarmerBuddy</i></font></h1></a>
    <h1><img src="" alt="" height="113px" width="150px"></img>
    
</div>
</header>
</head>
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
<br><br><br><br>
 <center>	
          		<%
          		session.setAttribute("states", "state");
          		session.setAttribute("cropname", "copname");
          		%>  
          		  <div id="content1">
          			<form action="fareawisedb.jsp" method="post">      
              
  		<table width="100" border="0" align="center" bordercolor="#CD848F" bgcolor="FFFFFF">
  		<tr><td><font size="3" color="red">State:</td><td><select name="state" title="Please enter your state" class="required state"
							aria-required="true" required>
                     		<option value="select">---SelectState---</option>						
  								<option value="Andhra Pradesh">Andhra Pradesh</option>
  								<option value="Arunachal Pradesh">Arunachal Pradesh</option>
  								<option value="Assam">Assam</option>
  								<option value="Bihar">Bihar</option>
  								<option value="Chhattisgarh">Chhattisgarh</option>
  								<option value="Karnataka">Karnataka</option>
  								<option value="	Odisha">Odisha</option>
  								<option value="Tamil Nadu">Tamil Nadu</option>
  								<option value="Telangana">Telangana</option>
  								<option value="	Tripura">Tripura</option>
  								<option value="	West Bengal">West Bengal</option>
  								<option value="Jharkhand">Jharkhand</option>
  								<option value="	Goa">Goa</option>
  								<option value="	Gujarat">Gujarat</option>
  								<option value="haryan">Haryana</option>
  								<option value="kerala">Kerala</option>
  								<option value="	manipur">Manipur</option>
  								<option value="jammu and kashmir">Jammu and kashmir</option>  								
  								</select></td></tr><tr></tr>
  								<tr>
                      <td colspan="2"><div align="center">
                                    <INPUT type="image" name="submit" src="submit.gif" border="0" style="border-width: 1px; height:20px; width:90px;" type="image" onclick="return formCheck(this)">
              </tr>
            </table>
            </form>
            </div>
            <div id="content2">
           	 <form action="areawise2db.jsp" method="post">  
            	<table width="100" border="0" align="center" bordercolor="#CD848F" bgcolor="FFFFFF">
            	<tr><td><font size="3" color="red">Crop:</td><td><select name="cropname" title="Please enter your crop" class="required state"
							aria-required="true" required>
                     		<option value="select">-------selectCrop--------</option>						
  								<option value="Rice/Paddy">Rice/Paddy</option>
  								<option value="Wheat">Wheat</option>
  								<option value="Redgram/Arhar">Redgram/Arhar</option>
  								<option value="Greengram">Greengram</option>
  								<option value="Horsegram">Horsegram</option>
  								<option value="Maize">Maize</option>
  								<option value="	Peas">Peas</option>
  								<option value="Chick Pea">Chick Pea</option>
  								<option value="Blackgram/Urd">Blackgram/Urd</option>
  								<option value="	Gram">Gram</option>
  								<option value="	Pulses">Pulses</option>
  								<option value="Masur/Lentil">Masur/Lentil</option>								
  								</select></td></tr><tr></tr>
  								  <td colspan="2"><div align="center">
                                    <INPUT type="image" name="submit" src="submit.gif" border="0" style="border-width: 1px; height:20px; width:90px;" type="image" onclick="return formCheck(this)">
              </tr>
              </INPUT>
              </table>
              </form>
              </div>
            
            
</center>
</html>
</body>
</html>
