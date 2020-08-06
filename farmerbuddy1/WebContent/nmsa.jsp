<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial;
}

* {
  box-sizing: border-box;
}

form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 80%;
  background: #f1f1f1;
}

form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
</style>
</head>
<body>
<br><br><br><br><br>
<font size="5" color="green"><center>National Mission for Sustainable Agriculture(NMSA)</center></font>
<form class="example" action="nmspsearch.jsp" style="margin:auto;max-width:300px">
  <input type="text" placeholder="nmsa" name="q">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>
<a href="farmer.jsp"><font size="6" color="red"><input type="button" name="submit" value="Back"></font></input></a>
</body>
</html>