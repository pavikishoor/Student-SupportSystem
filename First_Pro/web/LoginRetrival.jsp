<%-- 
    Document   : dataStore
    Created on : 2 Oct, 2019, 4:55:07 PM
    Author     : PAVITHRAYANI
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
            <style>
                * {
  box-sizing: border-box;
}

body {
  margin: 0;
}

/* Style the header */
.header {
  background-color: white;
  padding: 20px;
  color: black;
  text-align: center;
}

/* Style the top navigation bar */
.topnav {
  overflow: hidden;
  background-color:whitesmoke;
}

/* Style the topnav links */
.topnav a {
  float: right;
  display: block;
  color: Black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}
            /*@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);*/
            body{
                 background:F9FFFF;
                }
            .w3-bar .w3-button{white-space:normal}
            .w3-bar-block .w3-bar-item{width:100%;display:block;padding:8px 16px;text-align:left;border:none;white-space:normal;float:none;outline:0}
            </style>
    </head>

    <body>
        <%
            try{  
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","");
                Statement stmt=conn.createStatement();
                ResultSet rs = stmt.executeQuery("select * from DonarRegistration");
                out.println("<br>");
                String UserName = request.getParameter("userid");
                String Password = request.getParameter("password");
                int count =0;
                while(rs.next()){
                String us = rs.getString("UserId");
                String pwd = rs.getString("Password");
                if((UserName.equals(us)) && (Password.equals(pwd))){
                   count=count+1;
                   break;
                } 
                else{
                    count=count+0;  
                }
                }
                if(count >= 1){
                    %>
                    
                    <div class="w3-top">
         <div class="w3-bar w3-white w3-padding w3-card" style="letter-spacing:4px;">
            <!-- Right-sided navbar links. Hide them on small screens -->
            <div class="w3-right w3-hide-small">
               <a href="#Eligibility" class="w3-bar-item w3-button">Eligibility</a>
               <a href="#Compatibility" class="w3-bar-item w3-button">Compatibility</a>
               <a href="UpdateDate.jsp" class="w3-bar-item w3-button">UpdateDonatedDate</a>
               <a href="#designers" class="w3-bar-item w3-button">About</a>
               <a href="#contact" class="w3-bar-item w3-button">Contact</a>
               <a href="ResetPassword.jsp" class="w3-bar-item w3-button">ResetPassword</a>
               <a href="#" class="w3-bar-item w3-button">Edit</a>
            </div>
         </div>
      </div>
      <!-- Sidebar/menu -->
      <nav class="w3-sidebar w3-red w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar">
         <br>
         <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
         <div class="w3-container">
            <h1 class="w3-padding-64"><b>Life Stream</b></h1>
         </div>
         <div class="w3-bar-block">
            <a href="#" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a> 
            <a href="#showcase" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Images</a> 
            <a href="#services" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Services</a> 
            <a href="#designers" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">About</a> 
            <a href="#packages" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Facilities</a> 
            <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Contact</a>
            <a href="FindDonor.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">FindDonor</a>
            <a href="BloodRequest.jsp" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">BloodRequest</a>
         </div>
      </nav>
      <!-- Top menu on small screens -->
      <header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
         <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
         <span>Donating For Life</span>
      </header>
      <!-- Overlay effect when opening sidebar on small screens -->
      <div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
      <!-- !PAGE CONTENT! -->
      <div class="w3-main" style="margin-left:340px;margin-right:40px">
         <!-- Header -->
         <div class="w3-container" style="margin-top:0px" id="showcase">
            

            <h1 class="w3-jumbo"><b>Donate Blood Save Life</b></h1>
            <h1 class="w3-jumbo">Life Stream Welcomes You <% out.print(UserName); %></h1>
            <h1 class="w3-xxxlarge w3-text-red"><b>Image</b></h1>
            <hr style="width:50px;border:5px solid red" class="w3-round">
         </div>
         <!-- Photo grid (modal) -->
         <div class="w3-row-padding">
            <div class="w3-half">
               <img src="w3images/Blood1.jpg" style="width:100%; height: 483px;" onclick="onClick(this)" alt="Concrete meets bricks"><br><br><br>
               <img src="w3images/Blood8.jpg" style="width:100%; height: 445px;" onclick="onClick(this)" alt="Light, white and tight scandinavian design"><br><br><br>
               <img src="w3images/Blood4.jpg" style="width:100%" onclick="onClick(this)" alt="White walls with designer chairs"><br><br><br>
            </div>
            <div class="w3-half">
               <img src="w3images/Blood3.jpg" style="width:100%; height: 483px;" onclick="onClick(this)" alt="Windows for the atrium"><br><br><br>
               <img src="w3images/Blood5.jpg" style="width:100%; height: 445px;" onclick="onClick(this)" alt="Bedroom and office in one space"><br><br><br>
               <img src="w3images/Blood6.jpg" style="width:100%" onclick="onClick(this)" alt="Scandinavian design"><br><br><br>
            </div>
         </div>
         <!-- Modal for full size images on click-->
         <div id="modal01" class="w3-modal w3-black" style="padding-top:0" onclick="this.style.display='none'">
            <span class="w3-button w3-black w3-xxlarge w3-display-topright">×</span>
            <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
               <img id="img01" class="w3-image">
               <p id="caption"></p>
            </div>
         </div>
         <!-- Services -->
         <div class="w3-container" id="services" style="margin-top:75px">
            <h1 class="w3-xxxlarge w3-text-red"><b>Services.</b></h1>
            <hr style="width:50px;border:5px solid red" class="w3-round">
            <p>Dont waste your blood in the road!</p>
            <p>LifeStream is a helpline which functions with the sole aim to promote and spread awareness about blood donation
               and connects needy patients with blood donors.LifeStream is an area which can save your life. Throughtout India 
               from the most broadly perceived blood social event to the rarest, the site has a monstrous database of blood supporters.
               So if you need blood, it's a good spot to go to. 
               The services provided by us will be satisfied by you.  Patients can be from any place inside TamilNadu
               We collect blood’s from the donors who are interested to help the patients who need blood. 
               It's essential. It's reasonable. It's Free. It can arrange you with a donor near you in minutes. 
               Likewise, you can save the life of a companion or relative.<br><br>
               To contact us please register if you have not registered before (or) login for our services.
               For any inconvenience please contact using the above number, Thank you.
               You can in like manner Join as a promoter at the site and extra the life of someone else's venerated one.
               Pass the message and we should fabricate a system that cares !
            </p>
         </div>
         <!-- Designers -->
         <div class="w3-container" id="designers" style="margin-top:75px">
            <h1 class="w3-xxxlarge w3-text-red"><b>About</b></h1>
            <hr style="width:50px;border:5px solid red" class="w3-round">
            <p>The best team in the world.</p>
            <p>
               Have you at whenever seen a relative of yours or a dear companion scanning wildly for a blood contributor, when blood donation centers state out of stock, the benefactors as a main priority are distant and the time continues ticking? Have you seen death toll for the main explanation that a giver was not accessible at the most required hour? Is it something that we as a general public can do nothing to forestall? This idea established our framework. 
               <br><br>LifeStream is an association that brings willful blood contributors and those needing blood on to a typical stage. Through this site, we look for benefactors who are eager to give blood, just as give the timeliest help to those in frenzied need of it. 
               Begun in the year 2017, on fourteenth Nov, in a little live with only 100 willful givers however with the energy to serve our general public, to move and get the message out, we dream to satisfy 100% blood need in India. 
               <br><br>Our central goal is to satisfy each blood demand in the nation with a promising web-based interface and spurred people who are happy to give blood. 
               Our vision is to be "The desire for each Indian looking for a willful blood giver" 
               Our witticism - "Give blood to spare the most valuable human life"
            </p>
            <p><b>Founder</b>:</p>
         </div>
         <!-- The Team -->
         <div class="w3-row-padding w3-grayscale">
            <div class="w3-col m4 w3-margin-bottom">
               <div class="w3-light-grey">
                  <img src="w3images/Pavi.jpg" alt="John" style="width:100%; height:406px">
                  <div class="w3-container">
                     <h3>Pavithrayani </h3>
                     <p class="w3-opacity">CEO</p>
                     <p> We've created a platform uniting Blood Donors, Recipients, and Young People to help needy to live life better every day.</p>
                  </div>
               </div>
            </div>
            <div class="w3-col m4 w3-margin-bottom">
               <div class="w3-light-grey">
                  <img src="w3images/Siva.png" alt="Jane" style="width:100%; height:406px">
                  <div class="w3-container">
                     <h3>Siva Rama Krishnan</h3>
                     <p class="w3-opacity">Founder</p>
                     <p>“Bring a life back to power. Make blood donation your responsibility”</p>
                  </div>
               </div>
            </div>
            <div class="w3-col m4 w3-margin-bottom">
               <div class="w3-light-grey">
                  <img src="w3images/Gopi.jpg" alt="Mike" style="width:100%; height:406px" >
                  <div class="w3-container">
                     <h3>Gopika</h3>
                     <p class="w3-opacity">Team Lead</p>
                     <p>“Donate your blood for a reason, let the reason to be life”</p>
                  </div>
               </div>
            </div>
         </div>
         <!-- Packages / Pricing Tables -->
         <div class="w3-container" id="packages" style="margin-top:75px">
            <h1 class="w3-xxxlarge w3-text-red"><b>Facilities</b></h1>
            <hr style="width:50px;border:5px solid red" class="w3-round">
            <p>Blood donation drives/camps are a way of facilitating blood collection from society. Donors voluntarily come to donate in camps.</p>
         </div>
         <div class="w3-row-padding">
            <div class="w3-half w3-margin-bottom">
               <ul class="w3-ul w3-light-grey w3-center">
                  <li class="w3-dark-grey w3-xlarge w3-padding-32">Rare Blood Groups</li>
                  <li class="w3-padding-16">O-</li>
                  <li class="w3-padding-16">A-</li>
                  <li class="w3-padding-16">B-</li>
                  <li class="w3-padding-16">AB-</li>
                  <li class="w3-padding-16">AB+</li>
                  <li class="w3-padding-16">
                     <span class="w3-opacity">Need Blood Register Here...</span>
                  </li>
                  <li class="w3-light-grey w3-padding-24">
                     <button class="w3-button w3-white w3-padding-large w3-hover-black">Register</button>
                  </li>
               </ul>
            </div>
            <div class="w3-half">
               <ul class="w3-ul w3-light-grey w3-center">
                  <li class="w3-red w3-xlarge w3-padding-32">Donor Registration</li>
                  <li class="w3-padding-16">O-</li>
                  <li class="w3-padding-16">A-</li>
                  <li class="w3-padding-16">B-</li>
                  <li class="w3-padding-16">AB-</li>
                  <li class="w3-padding-16">AB</li>
                  <li class="w3-padding-16">
                     <span class="w3-opacity">Donors Register Here....</span>
                  </li>
                  <li class="w3-light-grey w3-padding-24">
                     <button class="w3-button w3-red w3-padding-large w3-hover-black">Register</button>
                  </li>
               </ul>
            </div>
         </div>
         <!-- Contact -->
         <div class="w3-container" id="contact" style="margin-top:75px">
            <h1 class="w3-xxxlarge w3-text-red"><b>Emergency ? Contact.</b></h1>
            <hr style="width:50px;border:5px solid red" class="w3-round">
            <p>Emergency ? Fill out the form and fill me in with the details :) We love Helping  people!</p>
            <form action="/action_page.php" target="_blank">
               <div class="w3-section">
                  <label>Name</label>
                  <input class="w3-input w3-border" type="text" name="Name" required>
               </div>
               <div class="w3-section">
                  <label>Email</label>
                  <input class="w3-input w3-border" type="text" name="Email" required>
               </div>
               <div class="w3-section">
                  <label>Message</label>
                  <input class="w3-input w3-border" type="text" name="Message" required>
               </div>
               <button type="submit" class="w3-button w3-block w3-padding-large w3-red w3-margin-bottom">Send Message</button>
            </form>
         </div>
         <!-- End page content -->
      </div>
      <!-- W3.CSS Container -->
      <div class="w3-light-grey w3-container w3-padding-32" style="margin-top:75px;padding-right:58px">
         <p class="w3-right">Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a></p>
      </div>
                    <%
                            
                        
                }
                else{
                    out.print("LoginFailed");
                }
                %>
                <br><br>
                <center>
                    
                    <br>
                    <br>
                
                </center>
                <%
            }catch(Exception e){
                out.println(e);
            }
        %>
    </body>
</html>
