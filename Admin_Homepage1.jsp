<%@page import="java.sql.Time"%>
<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@page import="java.sql.*" %>
        <link rel="stylesheet" href="css/w3.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
          <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
         <link type="text/png" href="images/logo.png" rel="shortcut icon">
         <link rel="stylesheet" href="css/font-awesome.css">
        
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
</style>
<body class="w3-light-grey">

<!-- Top container -->
<div class="w3-container w3-top w3-black w3-large w3-padding-12" style="z-index:4">
  <button class="w3-btn w3-hide-large w3-padding-0 w3-hover-text-grey" onclick="w3_open();"><i class="fa fa-bars"></i>  stockhome</button>

  <div class="w3-right "  ></div>
</div>

<!-- Sidenav/menu -->
<nav class="w3-sidenav w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidenav"><br>
  <div class="w3-container w3-row">
    <div class="w3-col s4">
      <img src="images/img_avatar.png" class="w3-circle w3-margin-right" style="width:46px">
    </div>
    <div class="w3-col s8">
      <span>Welcome, <strong>Admin</strong></span><br>
      <a href="#" class="w3-hover-none w3-hover-text-red w3-show-inline-block"><i class="fa fa-envelope"></i></a>
      <a href="#" class="w3-hover-none w3-hover-text-green w3-show-inline-block"><i class="fa fa-cogs"></i></a> 
      <a href="Validate2.jsp" class="w3-hover-none w3-hover-text-blue w3-show-inline-block"><i class="glyphicon glyphicon-log-out"></i></a>
    </div>
  </div>
  <hr>
  <div class="w3-container">
    <h5>Dashboard</h5>
  </div>
  <a href="#" class="w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
  <a href="#" class="w3-padding w3-blue"><i class="fa fa-users fa-fw"></i>  Overview</a>
  <a href="Admin_Homepage2.jsp" class="w3-padding"><i class="fa fa-users fa-fw"></i>  Customers Details</a>
  <a href="Admin_Homepage3.jsp" class="w3-padding"><i class="fa fa-eye fa-fw"></i>  Product Details</a>
  <a href="#" class="w3-padding"><i class="glyphicon glyphicon-record fa-fw"></i>  Customer's Report</a>
  <a href="#" class="w3-padding"><i class="fa fa-history fa-fw"></i>  History</a>
</nav>


<!-- Overlay effect when opening sidenav on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:43px;">

  <!-- Header -->
  <header class="w3-container" style="padding-top:22px">
    <h5><b><i class="fa fa-dashboard"></i> My Dashboard</b></h5>
  </header>

  <div class="w3-row-padding w3-margin-bottom">
    <div class="w3-quarter">
      <div class="w3-container w3-red w3-padding-16">
        <div class="w3-left"><i class="fa fa-comment w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>52</h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Messages</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-blue w3-padding-16">
        <div class="w3-left"><i class="fa fa-eye w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>99</h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Views</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-teal w3-padding-16">
        <div class="w3-left"><i class="fa fa-share-alt w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>23</h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Shares</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-orange w3-text-white w3-padding-16">
        <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
        <div class="w3-right">
          <h3>50</h3>
        </div>
        <div class="w3-clear"></div>
        <h4>Users</h4>
      </div>
    </div>
  </div>
<hr>
<div class="container">
    <%                
                     Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ekart", "root", "0000");    
          //Connection con=DriverManager.getConnection("jdbc:mysql://mysql30506-stockhome.cloud.cms500.com/ekart", "root", "ENDynf15557");    
          Statement stmt=con.createStatement();
                   ResultSet rs2=stmt.executeQuery("SELECT * FROM ekart.admin_registration;");
                  while(rs2.next()){
                  %>
    <div class="w3-card-8 w3-padding-8 alert alert-info">Last logged in at <%=rs2.getString("last_hour")%>:<%=rs2.getString("last_minute")%> 
                      on <%=rs2.getString("last_day")%>/<%=rs2.getString("last_month")%>/<%=rs2.getString("last_year")%></div>
    <% }%>
</div>

  <div class="w3-container">
    <h5>Inventory </h5>
    <table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
      <tr>
        <td>Casual Shoes</td>
        <td>65%</td>
      </tr>
      <tr>
        <td>Sports Shoes</td>
        <td>15.7%</td>
      </tr>
      <tr>
        <td>Formal Shoes</td>
        <td>5.6%</td>
      </tr>
      <tr>
        <td>Slipers</td>
        <td>2.1%</td>
      </tr>
      
    </table><br>
    <button class="w3-btn">More  <i class="fa fa-arrow-right"></i></button>
  </div>
  <hr>
  <div class="w3-container w3-margin-bottom">
    <h5>Recent Users</h5>
    <ul class="w3-ul w3-card-4 w3-white">
      <% 
            Class.forName("com.mysql.jdbc.Driver");
           Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/ekart", "root", "0000");    
           // Connection con1=DriverManager.getConnection("jdbc:mysql://mysql30506-stockhome.cloud.cms500.com/ekart", "root", "ENDynf15557");    
          
           Statement stmt1=con1.createStatement();
           ResultSet rs1= stmt1.executeQuery("SELECT *  from   ekart.user_registrtion  order by user_id desc limit 3;");
           while(rs1.next()){
          %>
          <li class="w3-padding-16">
              <span onclick="this.parentElement.style.display='none'" class="w3-margin-right w3-closebtn w3-medium w3-padding">x</span>
              <img src="images/img_avatar2.png" class="w3-left w3-circle w3-margin-right" style="width:35px">
              <span class="w3-large"><%=rs1.getString("name")%></span><br>
          </li>
          <% }%>
    </ul>
  </div>
  
    


  <!-- End page content -->
</div>

<script>
// Get the Sidenav
var mySidenav = document.getElementById("mySidenav");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidenav, and add overlay effect
function w3_open() {
    
    if (mySidenav.style.display === 'block') {
        mySidenav.style.display = 'none';
        overlayBg.style.display = "none";
    } else {
        mySidenav.style.display = 'block';
        overlayBg.style.display = "block";
        
    }
}

// Close the sidenav with the close button
function w3_close() {
    mySidenav.style.display = "none";
    overlayBg.style.display = "none";
}
</script>


</body>

<!-- Mirrored from www.w3schools.com/w3css/tryit.asp?filename=tryw3css_templates_analytics&stacked=h by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 10 Jul 2016 14:50:35 GMT -->
</html>

