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
	width:80%;
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
	width: 80%;
	background-color:;
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
  <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    function Validate() {
        var password = document.getElementById("txtPassword").value;
        var confirmPassword = document.getElementById("txtConfirmPassword").value;
        if (password != confirmPassword) {
            alert("Passwords do not match.");
            return false;
        }
        return true;
    }
    var myInput = document.getElementById("psw");
    var letter = document.getElementById("letter");
    var capital = document.getElementById("capital");
    var number = document.getElementById("number");
    var length = document.getElementById("length");

    // When the user clicks on the password field, show the message box
    myInput.onfocus = function() {
      document.getElementById("message").style.display = "block";
    }

    // When the user clicks outside of the password field, hide the message box
    myInput.onblur = function() {
      document.getElementById("message").style.display = "none";
    }

    // When the user starts to type something inside the password field
    myInput.onkeyup = function() {
      // Validate lowercase letters
      var lowerCaseLetters = /[a-z]/g;
      if(myInput.value.match(lowerCaseLetters)) {  
        letter.classList.remove("invalid");
        letter.classList.add("valid");
      } else {
        letter.classList.remove("valid");
        letter.classList.add("invalid");
      }
      
      // Validate capital letters
      var upperCaseLetters = /[A-Z]/g;
      if(myInput.value.match(upperCaseLetters)) {  
        capital.classList.remove("invalid");
        capital.classList.add("valid");
      } else {
        capital.classList.remove("valid");
        capital.classList.add("invalid");
      }

      // Validate numbers
      var numbers = /[0-9]/g;
      if(myInput.value.match(numbers)) {  
        number.classList.remove("invalid");
        number.classList.add("valid");
      } else {
        number.classList.remove("valid");
        number.classList.add("invalid");
      }
      
      // Validate length
      if(myInput.value.length >= 8) {
        length.classList.remove("invalid");
        length.classList.add("valid");
      } else {
        length.classList.remove("valid");
        length.classList.add("invalid");
      }
    }
    function myFunction() {
    	  var x = document.getElementById("myInput");
    	  if (x.type === "password") {
    	    x.type = "text";
    	  } else {
    	    x.type = "password";
    	  }
    	}
    function phonenumber(inputtxt)
    {
      var phoneno = /^\d{10}$/;
      if(inputtxt.value.match(phoneno))
      {
          return true;
      }
      else
      {
         alert("Not a valid Phone Number");
         return false;
      }
      }
    function checkEmail() {

        var email = document.getElementById('txtEmail');
        var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

        if (!filter.test(email.value)) {
        alert('Please provide a valid email address');
        email.focus;
        return false;
     }
    }
    function Validation()
    {
    var a = document.form.address.value;
    if(a=="")
    {
    alert("please Enter the details");
    document.form.address.focus();
    return false;
    }
    if((a.length < 20) || (a.length > 100))
    {
    alert(" Your textarea must be 20 to 100 characters");
    document.form.address.select();
    return false;
    }
    }

  </script> 
</head>
<body>	
<br>
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
   <br><br>
   <a href="farmer.jsp"><input type="button" value="Login Page"></input></a>
   </div>
          		</div>
          		</div>
          		
            <div id="content2">
	<form action="signdb.jsp" method="post" enctype = "multipart/form-data" onsubmit="return Validation()">
	<center>
		 <table width="500" border="0" align="center" bordercolor="#CD848F" bgcolor="FFFFFF">
		<tr>  <td width="7" height="44" valign="top" align="center">&nbsp;</td>
                          <td width="100"><strong><font size="4" color="red">R e g i s t r a t i o n P a g e</strong></span></div></td>
                                                 <td width="10">&nbsp;</td>
                        </tr>
                       
					<tr><td>
				<font size="3" color="red">Firstname:</td><td><input type="text" name="fn"placeholder="enter your firstname"
							title="Please enter your first name" class="required firstname"
							aria-required="true" required></input></td></tr>	
							<tr><td>
				<font size="3" color="red">Lastname :</td><td><input type="text" name="ln"placeholder="enter your last name"
							title="Please enter your lastname" class="required lastname"
							aria-required="true" required></input></td></tr>	
							<tr><td>
				<font size="3" color="red">Email 	:</td><td><input type="text" name="email"placeholder="enter your email " required  onclick='Javascript:checkEmail()'
							title="Please enter your email address" class="required email"
							aria-required="true" required ></input>							
							<tr><td>
				<font size="3" color="red">Phone 	:</td><td><input type="text" name="phno1" pattern="[1-9]{1}[0-9]{9}" title="Enter 10 digit mobile number" placeholder="Mobile number" required
							aria-required="true" required ></input></td></tr>	
							<tr><td>
				<font size="3" color="red">D.O.B 	:</td><td><input type="date" name="dob"placeholder="enter your  d.o.b here"
							title="Please enter your dob" class="required dob"
							aria-required="true" required></input></td></tr>
							<tr><td>
				<font size="3" color="red">City:</td><td><select name="city" title="Please enter your city" class="required city"
							aria-required="true" required>
                     		<option value="select">select</option>
  							<option value="bhubanswar">Bhubanswar</option>
  								<option value="brahampur">Brahampur</option>
  								<option value="hyderbad">Hyderbad</option>
  								<option value="Bengaluru">Bengaluru</option>
  								<option value="Mumbai">Mumbai</option>
  								<option value="Delhi ">Delhi </option>
  								<option value="Rourkela">Rourkela</option>
  								<option value="	Cuttack">Cuttack</option>
  								</select></td></tr>
  								<tr><td>
			<font size="3" color="red">State:</td><td><select name="state" title="Please enter your state" class="required state"
							aria-required="true" required>
                     		<option value="select">select</option>						
  								<option value="Andhra Pradesh">Andhra Pradesh</option>
  								<option value="Arunachal Pradesh">Arunachal Pradesh</option>
  								<option value="Bihar">Bihar</option>
  								<option value="Chhattisgarh">Chhattisgarh</option>
  								<option value="Karnataka">Karnataka</option>
  								<option value="	Odisha">Odisha</option>
  								<option value="Tamil Nadu">Tamil Nadu</option>
  								<option value="Telangana">Telangana</option>
  								<option value="	Tripura">Tripura</option>
  								<option value="	West Bengal">	West Bengal</option>
  								</select></td></tr>
  								<tr><td>
  			<font size="3" color="red">Country:</td><td><select name="country" title="Please enter your country" class="required  country"	>                  		              
  								<option value="india">India</option>
  								</select></td></tr>
  			<tr><td>
			 <font size="3" color="red">Address:</td><td> 
			 <textarea   name="address" placeholder="enter a address" title="Please enter your address" rows="4" cols="30" class="required address"
							aria-required="true" required></textarea></td></tr>
							<tr><td>
			
			<font size="3" color="red">LoginName:</td><td><input type="text" name="loginname"placeholder="enter your login name"
							title="Please enter your login name" class="required loginname"
							aria-required="true" required></input></td></tr>	
							<tr><td>
  			
  		<!--Password:</td><td> <input type="password" id="psw" name="pass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
					</input></td></tr>	 <br>	-->
			<tr><td>
  			 <font size="3" color="red">Password:</td><td><input type="password" name="pass" required onclick="return Validate()"pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required  id="myInput"></input></td></tr>
  			<tr><td><input type="checkbox" onclick="myFunction()"><font size="3" color="red">Show Password</input></td></tr>
			<tr><td><font size="3" color="red">Education:</td><td><select name="education" title="Please enter your education" class="required education"
							aria-required="true" required>
                     		<option value="select">select</option>
  							<option value="MCA">MCA</option>
  								<option value="MBA">MBA</option>
  								<option value="BCA">BCA</option>
  								<option value="BBA">BBA</option>
  								<option value="B.TECH">B.TECH</option>
  								<option value="B.COM ">B.COM </option>
  								<option value="BA">BA</option>
  								<option value="	BSC">BSC</option>
  									<option value="+2">+2</option>
  								<option value="	DIPOLMA">DIPOLMA</option>
  									<option value="10th">10th</option>
  								<option value="OTHER">OTHER</option>
  								</select></td></tr>
  								<tr><td>
			<tr><td>
			<font size="3" color="red">secret Question:</td><td><select name="sq" title="Please enter your secret question" class="required secret question"
							aria-required="true" required>
                     		<option value="select">select</option>
  							<option value="1">your favourite crickter?</option>
  								<option value="2">your favourite hero?</option>
  								<option value="3">your favourite scientics?</option>
  								<option value="4">your nick name?</option>
  								 <option value="5">What was the name of your first school?</option>
                               <option value="6">Where did you meet your spouse?</option>
                               <option value="7">What is your favorite sports team?</option>
                               <option value="8">What is your father's middle name?</option>
                               <option value="9">What was your high school mascot?</option>
                               <option value="10">What make was your first car or bike?</option>
                               <option value="11">What is your pet's name?</option>
  								</select></td></tr>	
  				<tr><td>					
				<font size="3" color="red">secret answer :</td><td><input type="text" name="sa"placeholder="enter your secret answer"
							title="Please enter secret answer" class="required secret answer"
							aria-required="true" required></input></td></tr>	 
							<tr><td>
				<font size="3" color="red">Primary Crops	:</td><td><select name="crops" title="Please enter your crops" class="required crops"
							aria-required="true" required>
                     		<option value="select">select</option>
  							<option value="Agathi">Agathi</option>
  								<option value="Rice">Rice </option>
  								<option value="Wheat">Wheat</option>
  								<option value=" Maize">Maize </option>
  								 <option value="Ladies Fingers">Ladies Fingers</option>
                               <option value="Bengaigram">Bengaigram</option>
                               <option value="Lentil">Lentil</option>
                               <option value="Sunflower">Sunflower</option>
                               <option value="Coconut">Coconut</option>
                               <option value="Chilies">Chilies</option>
                               <option value="Turmeric">Turmeric</option>
  								</select></td></tr>
  								<tr><td>
  								<form>
 					<font size="3" color="red">Feed System:</td><td> <input type="radio" name="gender" value="traditional">	<font size="3" color="black">Traditional<input type="radio" name="gender" value="machinary"><font size="3" color="black">Machinary
 				 	</form></td></tr>
 				 	<tr><td>
				<font size="3" color="red">Identity Proof:</td><td><select name="proof" title="Please enter your identity proof" class="required identity proof"
							aria-required="true" required>
                     		<option value="select">select</option>
  								<option value="Adhaar card">Adhaar card </option>
  								<option value="DrivingLicences">DrivingLicences</option>
  								<option value=" IndianPassport ">IndianPassport </option>
  								 <option value="VoterId">VoterId</option>
                               <option value="PAN Card">PAN Card</option>
  								</select></td></tr>
  								<tr><td>
  				  <font size="3" color="red">Choose The pdf:</td><td><font size="3" color="black" ><input type="file"  name="identity" title="Please upload pdf file format below(50kb)" class="required "aria-required="true" required>	 
							<tr><td>
					<tr><td>  <font size="3" color="red" >Photo:</td><td><font size="3" color="black" ><input type="file"  name="image" size="50"  title="Please upload photo any(jpg,png,jpeg) formatbelow(50kb)"class="required "aria-required="true" required/></td></td></tr>		
							<tr> <td colspan="2"><div align="center">	
					 <INPUT type="image" name="submit" src="RegisterNow.gif" border="0" style="border-width: 1px; height:30px; width:150px;" type="image" onclick="return formCheck(this)" ;></td></tr>
							</center>
		</table>
		
	</center>
	</form>
</body>
</html>















