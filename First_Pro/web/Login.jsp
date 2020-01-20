<%-- 
    Document   : dataStore
    Created on : 2 Oct, 2019, 4:35:08 PM
    Author     : PAVITHRAYANI
--%>
<html>
    
<head>
<title>Form Validation Example</title>

<link rel="stylesheet" href="w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
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
         <form  method="post" action="LoginRetrival.jsp" name="Form1" onsubmit="return ValidateForm();">
            <h1 class="w3-xxxlarge w3-text-red"><b>Login</b></h1>
            <hr style="width:50px;border:5px solid red" class="w3-round">
            <p>Donors Login :)</p>
 
            <div class="w3-section">
               <label>UserId</label>
               <input class="w3-input w3-border" type="text" name="userid" required>
            </div>
            <div class="w3-section">
               <label>Password</label>
               <input class="w3-input w3-border" type="password" name="password" required>
            </div>
            <button type="submit" name="submit" class="w3-button w3-block w3-padding-large w3-red w3-margin-bottom">Submit</button>
         </form>
      </div>
   </div>
</div>
</body>

</html>


