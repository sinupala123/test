<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
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
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
  <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
  </script> 
</head>

<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;
  background-color:green;
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
  color: green;
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
frame {
  float: left;
}
</style>
</head>
<body>
<div class="navbar">

  <a href="logout.jsp">Logout</a>
  <div class="dropdown">
    <button class="dropbtn">Security
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="changepassword.jsp">ChangePassword</a>
      <a href="changeanswer.jsp">ChangeAnswer</a>
      <a href="#"></a>
    </div>
  </div>
  <a href="addsession.jsp">AddSession</a>
  <a href="userquray.jsp">userQuery</a>
  <div class="dropdown">
    <button class="dropbtn">Market
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
    <a href="addcommedity.jsp">AddCommedity</a>
      <a href="viewcommedity.jsp">ViewCommedity</a>
      <a href="addmarket.jsp">AddMarketName</a>
      <a href="#">ViewMarket</a>
      <a href="#">AddReport</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">fertilazer
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">AddFertilzer</a>
      <a href="#">Viewfertilzer</a>
     </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Soil
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="">Soilinfo</a>
      <a href="">Stateinfo</a>
       <a href="">Districtinfo</a>
      <a href="#"></a>
    </div>
  </div>
  <div class="dropdown">
    <button class="dropbtn">Crops
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="addcrops.jsp">AddCrops</a>
      <a href="updatecrop.jsp">UpdateCrops</a>
    </div>
  </div> 
  <div class="dropdown">
    <button class="dropbtn">Training
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="addtraining.jsp">AddTraining</a>
      <a href="viewtrainer.jsp">ViewTraining</a>
    </div>
  </div> 
  
  <a href="#">Home</a>
</div>
<%
String marketarea = request.getParameter("marketarea");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "lit";
String userid = "root";
String password = "sinu";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from addmarket where marketarea="+marketarea;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<form action="update1db.jsp" method="post">
<table border="1">
<tr><td>
<h1>Update data from database in jsp</h1>
<input type="hidden" name="marketarea" value="<%=resultSet.getString("marketarea") %>">
MarketArea
<input type="text" name="marketarea" value="<%=resultSet.getString("marketarea") %>">
</input></input></td></tr>
<br>
<tr><td>
Country:
<input type="text" name="state" value="<%=resultSet.getString("state") %>">
</input></td></tr>
<br>
<tr><td>
State:
<input type="text" name="countrya" value="<%=resultSet.getString("countrya") %>">
</input></td></tr>
<br>
<tr><td>
District:
<input type="text" name="district" value="<%=resultSet.getString("district") %>">
</input></td></tr>
<br>
<tr><td>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit" value="submit"></input></td></tr>
</td></tr>
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>