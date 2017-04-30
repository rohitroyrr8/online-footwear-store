<%--    
    Document   : homepage
    Created on : Jan 24, 2017, 5:45:23 PM
    Author     : Rohit Roy
--%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Stockhome Logistics</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="css/w3.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <%@page import="java.sql.*" %>
  <link type="text/png" href="images/logo.png" rel="shortcut icon">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }
 

  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>
</head>
<body>
    
    
<nav class="navbar navbar-inverse w3-top">
    <ul>
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
        <a class="navbar-brand" href="#">Stockhome</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav " style="">
        
            
                <% 
                Object user1=session.getAttribute("user");
                if(user1!=null){
                 %> 
                    <li class=""><a href="User_Profile.jsp">Profile</a></li>  <!-- complaint, logout , cart, history, address, edit profile -->
                <% }
                else{ %>
                    <li class=""><a href="User_Authentication.jsp">Profile</a></li>  <!-- complaint, logout , cart, history, address, edit profile -->
                <%   }   %>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">Search  <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="homepage.jsp">Casual Shoes</a></li>
                    <li><a href="homepage2.jsp">Sports Shoes</a></li>
                    
                    <li><a href="#">Formal Shoes</a></li>
                    <li class="divider"></li>
                    <li><a href="homepage4.jsp">Slippers</a></li>
                </ul>
            </li>
            <li><a href="About_Us.jsp">About us</a></li>
            <li><a href="Contact_us.jsp">Contact us</a></li>
      </ul>
        <% 
             Object user=session.getAttribute("user");
             if(user!=null){
                 %> 
          <ul class="nav navbar-nav navbar-right">
          
          <li><a href="User_Profile.jsp"><span class="glyphicon glyphicon-user"></span> Hi.<%=user%></a></li>
      </ul>       
        <% }
            else{ %>
        <ul class="nav navbar-nav navbar-right">
          
          <li><a href="User_Authentication.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
             <%   }  %>

          
      
    </div>
     </div>
    </ul>
</nav>
        
 <!-- carousal -->   
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
          <img src="images/upshoes.jpg" alt="Images">
        <div class="carousel-caption">
          <h3>Super-Sale offer</h3>
          <p>upto 40% off on preminum shoes</p>
        </div>      
      </div>

      <div class="item">
          <img src="images/myths2.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>Super-Sale offer</h3>
          <p>upto 40% off on preminum shoes</p>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
  
<div class="container text-center">    
    <h3>Today's best deals</h3><br>
  <% 
               Class.forName("com.mysql.jdbc.Driver");
           Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/ekart", "root", "0000");    
          //Connection con1=DriverManager.getConnection("jdbc:mysql://mysql30506-stockhome.cloud.cms500.com/ekart", "root", "ENDynf15557");    
           Statement stmt1=con1.createStatement();
           ResultSet rs1 =stmt1.executeQuery("select * from all_product WHERE `category`='formal'");

           
           
           while(rs1.next()){
           %>
           <div class="col-lg-4 col-sm-6 hero-feature w3-hover-shadow w3-margin-bottom" style="margin-bottom: 5px    ">
               
                <div class="thumbnail" style="height: auto">
                    <img  onclick="onClick(this)" src="images/<%=rs1.getString("item")%>" alt="" style="height: ">
                    <div class="caption">
                        <h3 class=""><%=rs1.getString("name")%></h3>
                        <p class="pull-left">Price: <%=rs1.getString("price")%></p>
                        <p><%
                            int j=rs1.getInt("rating");
                            for(int i=0;i<j;i++){    %> <span class="fa fa-star pull-right " style="color: red"></span><%  }   %>
                            </p><br>
                            
                            <!--<a href="#" class="btn btn-primary">Buy Now!</a> -->
                            <form action="Validate4.jsp" method="post">
                            <input type="hidden" name="item_id" value="<%=rs1.getInt("id")%>">
                            <input type="hidden" name="user" value="<%=session.getAttribute("user")%>">
                            <input type="hidden" name="item_name" value="<%=rs1.getString("name")%>">
                             <input type="hidden" name="item_price" value="<%=rs1.getInt("price")%>">
                             <input type="hidden" name="item_image" value="<%=rs1.getString("item")%>">
                             <% if(session.getAttribute("user")!=null){  %>
                                 <input  type="submit" class="btn btn-primary " value="+" style="float: right">
                             <%  }
                            else{   %>
                            <input  type="submit" class="btn btn-primary disabled" value="+" style="float: right" onclick="msg()">
                            <% }  %>
                             
                            </form>
                        
                    </div>
                </div>
            </div>
                     <!-    - Modal-->
                <div id="modal01" class="w3-modal ">
               
             <div class="w3-modal-content w3-white w3-card-12 w3-animate-zoom" style="max-width:700px;">
                 
                 <div  style="float: left" class="w3-center">
                     
                     <img id="img01" style="width: 100%">
                     
                     
                 </div>
 <button onclick="document.getElementById('modal01').style.display='none'" class="w3-btn-block w3-black w3-container w3-hover-red">Close</button>
                
  
             </div>
               
             </div>

  <% }%>
</div>

<footer class="container-fluid text-center w3-black w3-opacity">
 © Copyright 1999-2017 by Rohit Roy. All Rights Reserved.<br>
    <p>powered by W3.CSS, BOOTSTRAP, Javascript, JSP</p>
    Contact us : info@stockhome.ml
</footer>
<script>
    function onClick(element) {
 document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
    item_id=element.id;
        
     
}
function msg()
{alert("You have to log-in first")}
</script>
    

</body>
</html>
