<%-- 
    Document   : ResetPassword
    Created on : 8 Oct, 2019, 4:02:09 PM
    Author     : PAVITHRAYANI
--%>
<html>
    
<head>
<title>Form Validation Example</title>

<link rel="stylesheet" href="w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
    .dropbtn {
  background-color: #f44336;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #f44336}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
  display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
  background-color: #f44336;
}
    .content {
  max-width: 800px;
  margin-left:500px;
  background: white;
  padding: 20px;
}
</style>
</head>


<body style="background-color:F9FFFF;" class="content">
<div class="w3-container " style="width:70%;">
   <div class="w3-panel w3-card">
      <div class="w3-container" id="contact" style="margin-top:75px">
         <form  method="post" action="ResetPasswordRetrival.jsp" name="Form1" onsubmit="return ValidateForm();">
            <h1 class="w3-xxxlarge w3-text-red"><b>Login</b></h1>
            <hr style="width:50px;border:5px solid red" class="w3-round">
            <p>Update Donated Date :)</p>
 
            <div class="w3-section">
               <label>UserId</label>
               <input class="w3-input w3-border" type="text" name="userid" required>
            </div>
            <div class="w3-section">
               <label>Password</label>
               <input class="w3-input w3-border" type="password" name="password" required>
            </div>
            <div class="w3-section">
               <label>NewPassword</label>
               <input class="w3-input w3-border" type="password" name="newpassword" required>
            </div>
            
            <button type="submit" name="submit" class="w3-button w3-block w3-padding-large w3-red w3-margin-bottom">Submit</button>
         </form>
      </div>
   </div>
</div>
</body>

</html>


