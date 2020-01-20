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

<script>
   var stateObject = {
"India": { "Delhi": ["new Delhi", "North Delhi"],
"Kerala": ["Thiruvananthapuram", "Palakkad"],
"Goa": ["North Goa", "South Goa"],
"Karnataka":["Bangalore","coorg"],
}
}
window.onload = function () {
var countySel = document.getElementById("countySel"),
stateSel = document.getElementById("stateSel"),
districtSel = document.getElementById("districtSel");
for (var country in stateObject) {
countySel.options[countySel.options.length] = new Option(country, country);
}
countySel.onchange = function () {
stateSel.length = 1; // remove all options bar first
districtSel.length = 1; // remove all options bar first
if (this.selectedIndex < 1) return; // done
for (var state in stateObject[this.value]) {
stateSel.options[stateSel.options.length] = new Option(state, state);
}
}
countySel.onchange(); // reset in case page is reloaded
stateSel.onchange = function () {
districtSel.length = 1; // remove all options bar first
if (this.selectedIndex < 1) return; // done
var district = stateObject[countySel.value][this.value];
for (var i = 0; i < district.length; i++) {
districtSel.options[districtSel.options.length] = new Option(district[i], district[i]);
}
}
}
</script>

</head>


<body style="background-color:F9FFFF;" class="content">
<div class="w3-container " style="width:70%;">
   <div class="w3-panel w3-card">
      <div class="w3-container" id="contact" style="margin-top:75px">
         <form  method="post" action="RegisterDataStore.jsp" name="Form1" onsubmit="return ValidateForm();">
            <center><h1 class="w3-xxlarge w3-text-red"><b>Student Registration</b></h1></center>
<center><h1 class="w3-xxlarge w3-text-red"><b>Form</b></h1></center>
            <hr style="width:50px;border:5px solid red" class="w3-round">
            <div class="w3-section" name="nd">
               <label>Student Name*</label>
               <input class="w3-input w3-border" type="text" name="name" >
            </div>
           
            <div class="w3-section">                
            <label>College Name*</label> <input class="w3-input w3-border" type="text" name="clgname" >
               
<div class="w3-section">
            <label>Year</label>
            <select class="w3-input w3-border" name="bloodgroup">
                <option value="I">I</option>
                <option value="II">II</option>
                <option value="III">III</option>
                <option value="IV">IV</option>
            </select>
            </div>
            <label>Department</label> <input class="w3-input w3-border" type="text" name="Department" required>
            <div class="w3-section">
               <label>PhoneNumber*</label>
               <input class="w3-input w3-border" type="text" name="number" required>
            </div>
            
</select>
                <br>
               
            <label>Aadhaar No*</label><input type="text" name="adhar"  size="1" class="w3-input w3-border">
            <div class="w3-section">
               <label>Email*</label>
               <input class="w3-input w3-border" type="text" name="email" required>
            </div>   
           
            <button type="submit" name="submit" class="w3-button w3-block w3-padding-large w3-red w3-margin-bottom">Submit</button>
         </form>
      </div>
   </div>
</div>
</body>

</html>
