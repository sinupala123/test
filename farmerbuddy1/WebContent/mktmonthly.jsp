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
	background-color:green;
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
</div><br><br><br><br>
	 
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
            <form action="mktmonthlydb.jsp" method="post">
            <div id="content2">	
            <font color="green" size="5">CommedityWise Monthly Repot card</font>
            <br><br>
	<table width="400" border="0" align="center" bordercolor="#CD848F" bgcolor="FFFFFF">
							<tr><td>
							<font size="3" color="red">Commedity:</td><td><select name="commedity" title="Please enter your commedity" class="required city"
							aria-required="true" required>
                     		<option value="select">select</option>
  							<option value="Ajwan">Ajwan</option>
  								<option value="Alasande Gram">Alasande Gram</option>
  								<option value="Apple">Apple</option>
  								<option value="Banana">Banana</option>
  								<option value="Barley">Barley</option>
  								<option value="Beaten Rice ">Beaten Rice </option>
  								<option value=" Castor Oil"> Castor Oil</option>
  								<option value="	Chilli Red">Chilli Red</option>
  								<option value="Coconut Oil">Coconut Oil</option>
  								<option value="Coffee">Coffee</option>
  								<option value="Dry Grapes">Dry Grapes </option>
  								<option value=" Fried Gram"> Fried Gram</option>
  								<option value="	Honey">Honey</option>
  								<option value="Jau">Jau </option>
  								<option value="Javi"> Javi</option>
  								<option value="	lime">Lime</option>
  								<option value="Jute">Jute </option>
  								<option value=" mace">Mace</option>
  								<option value="mango">mango</option>
  								<option value="Onion">Onion </option>
  								<option value=" Orange">Orange</option>
  								<option value="Sunflower">Sunflower</option>
  								</select></td></tr>
  								<tr><td>
				<font size="3" color="red">Date 	:</td><td><input type="month" name="arrivald"placeholder="enter your  date here"
							title="Please enter your date" class="required date"
							aria-required="true" required></input></td></tr>
  								<tr></tr>
  								<tr> <td align="center">	
					 <INPUT type="image" name="submit" src="submit.gif" border="0" style="border-width: 1px; height:20px; width:100px;" type="image" onclick="return formCheck(this)" ;></td></tr>
							</center>
						
		</table>
		
	</center>
	</form>
</body>
</html>