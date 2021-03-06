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
             
         </style>
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
</style>
<body class="w3-light-grey">

<!-- Top container -->
<div class="w3-container w3-top w3-black w3-large w3-padding-12" style="z-index:4">
  <button class="w3-btn w3-hide-large w3-padding-0 w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i>  stockhome</button>
  <%
      
      
      %>
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
  <a href="Admin_Homepage1.jsp" class="w3-padding "><i class="fa fa-users fa-fw"></i>  Overview</a>
  <a href="#" class="w3-padding w3-blue"><i class="fa fa-eye fa-users"></i>  Customer Details</a>
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
    <h4><b><i class="fa fa-search-plus"></i> Search for customers</b></h4>
  </header>

  <div class="container w3-card-4 w3-blue w3-margin">
      <h4></h4>
      <div class="form-group row">
          <form action="Validate9.jsp" method="post">
            <div class="input-group col-xs-4 w3-margin-left">
                
                 <span class="input-group-addon glyphicon glyphicon-search" ></span>
                 <input type="search" class="form-control input-lg " placeholder="Search" aria-describedby="basic-addon1" name="id" >
               
            </div>
          </form>
          <% 
                String name=(String)request.getAttribute("name");
                String phone=(String)request.getAttribute("phone");
                    String email=(String)request.getAttribute("email");
                    String address=(String)request.getAttribute("address");
                     String password=(String)request.getAttribute("password");
                    if(name!=null){
                        %> 
                        <table style="width: 70%; margin: 60px; color: black " class="w3-table-all" >
                            <tr class="w3-blue">
                                <td>Name</td>
                                <td><%=name%></td>
                            </tr>
                            <tr>
                                <td>Mobile No.</td>
                                <td><%=phone%></td>
                            </tr>
                            
                            
                             <tr>
                                <td>E-mail</td>
                                <td><%=email%></td>
                            </tr>
                             <tr>
                                <td>Address</td>
                                <td><%=address%></td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td><%=password%></td>
                            </tr>
                             
                        </table>
            <%
                
                    }
            %>
        </div>
  </div>
        <%                
                     Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ekart", "root", "0000");    
          //Connection con=DriverManager.getConnection("jdbc:mysql://mysql30506-stockhome.cloud.cms500.com/ekart", "root", "ENDynf15557");    
          Statement stmt=con.createStatement();
                   ResultSet rs2=stmt.executeQuery("SELECT * FROM ekart.user_registrtion;");
                  while(rs2.next()){
                  %>
    
        <div class="w3-card-8 w3-margin w3-white" style="width: 400px">
            <div class="w3-margin">
            User Id: <%= rs2.getString("user_id")%> <br>
            NAme: <%=rs2.getString("name")%>
            </div>
        </div>
                  <% } %>

  <!-- End page content -->
</div>

<script>
// Get the Sidenav
var mySidenav = document.getElementById("mySidenav");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidenav, and add overlay effect
function w3_open() {
    var logo=document.getElementById("logo");
    logo.style.display= 'none';
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

