<%-- 
    Document   : User_Profile
    Created on : Jan 30, 2017, 10:44:25 PM
    Author     : Rohit Roy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Profile | Stockhome</title>
        
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
          <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
         
         <link type="text/png" href="images/logo.png" rel="shortcut icon">
         
        
    </head>
    <body>
        <nav class="navvbar  w3-top">
            <ul>
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar navbar-brand w3-white" href="homepage.jsp"><h3>stockhome.ml</h3></a>
                    </div>
                    <ul class="nav navbar-nav navbar-right" id="logout_button">
                        <li><a href="Validate2.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
                    </ul>
                </div>
            </ul>
        </nav>
        <div class="container">
            <%
            Object user_id=session.getAttribute("user_id");
            Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ekart", "root", "0000");    
         //Connection con=DriverManager.getConnection("jdbc:mysql://mysql30506-stockhome.cloud.cms500.com/ekart", "root", "ENDynf15557");    
           Statement stmt=con.createStatement();
           ResultSet rs=stmt.executeQuery("select * from user_registrtion where user_id='"+user_id+"'");
           while(rs.next()){
             session.setAttribute("user", rs.getString("name"));
            %>
            <div class="row">   
                <div class="col-sm-10"><h2><span class="glyphicon glyphicon-user"></span> <%=rs.getString("name")%> </h2>
                    <h4><%=rs.getString("address")%></h4>
                </div>
            </div>
            <div class="row" style="">
            <div class="col-lg-4 col-md-10 col-sm-10">
                <h5 class="info w3-padding">
                    Email: <%=rs.getString("email")%><br>
                    Mobile No.: <%=rs.getString("phone")%><br>
                    Age: <%=rs.getString("age")%><br>
                    Gender: <%=rs.getString("sex")%></h5>
            
            </div>
                    <% }
                        rs.close();
                    %>
                <div class="col-lg-8 col-sm-10">
                    <ul class="nav nav-tabs" id="myTabs">
                        <li><a href="#home" class="active" data-toggle="tab"><span class="glyphicon glyphicon-dashboard"></span> Dashboard</a></li>
                        <li><a href="#profile" data-toggle="tab" ><span class="glyphicon glyphicon-edit"></span> Edit Profile</a></li>
                        <li><a href="#history" class="" data-toggle="tab"><span class="glyphicon glyphicon-list-alt"></span> History</a></li>
                        <li><a href="#report" data-toggle="tab" ><span class="glyphicon glyphicon-envelope"></span> Report</a></li>
                        <li><a href="#change_password" data-toggle="tab"><span class="glyphicon glyphicon-cog"></span> Change Passowrd</a></li>
                    </ul>
            <div class="tab-content">
             <div class="tab-pane active" id="home">
             <div class="container center-block w3-card col-lg-8">
         <% 
                        if(request.getAttribute("claim_msg")!=null){
                            %> 
                            <div class="alert alert-info w3-round-medium w3-margin-top"><%=request.getAttribute("claim_msg")%></div>
                    <%
                        }
                    %>    
          <h2>Pending items</h2>
                   <% float total_payment=0;
                       ResultSet rs1=stmt.executeQuery("select * from  item_ordered where user='"+session.getAttribute("user")+"'");
                       while(rs1.next()){
                       
                        
                            
                   %>
              <div class="list-group">
              <a  class="list-group-item active w3-margin" style=" margin: 10px">
                  <span onclick="this.parentElement.style.display='none'" class="badge ">x</span>
                  <img src="images/<%=rs1.getString("item_image")%>" class="w3-left w3-circle w3-margin-right" style="width:150px">
                  <span style="float: right"><h3></h3>
                      <h5>Rs: <%=rs1.getString("item_price")%></h5></span>
              </a>
              </div>
                  <%   
                      total_payment+=Integer.parseInt(rs1.getString("item_price"));          
                      }
                    session.setAttribute("total_payment", total_payment);
                  %>
                      
            
                
                  
                  <a class="btn btn-primary" href="Making_Payment.jsp"   style="float: right"><span class="glyphicon glyphicon-send"></span> Pay now (<%=session.getAttribute("total_payment")%> Rs.)</a>
         </div>


             </div>
	<div class="tab-pane" id="profile" >
            
            <h5>Update your Profile </h5>
            <form class="center-block col-lg-8 w3-padding-8" method="post" action="Validate5.jsp">
                <div class="form-group">
                    <input type="text" placeholder="username" class="form-control input-group-md" name="username" required="">
                </div>
                <div class="form-group">
                    <input type="tel" placeholder="Mobile No." class="form-control input-group-md" maxlength="10" name="phone" required="" >
                </div>
                
                <div class="form-group">
                    <input type="text" placeholder="email" class="form-control input-group-md" name="email" required="">
                </div>
                <div class="form-group">
                    <input type="number" placeholder="age" class="form-control input-group-md" name="age" required="">
                </div>
                <div class="form-group">
                    <input type="text" placeholder="city" class="form-control input-group-md" name="city" required="">
                </div>
                <div class="form-group">
                    <input type="submit" placeholder="" class="form-control btn btn-primary" value="submit">
                </div>
                
            </form>
            
        </div>
        
	<div class="tab-pane" id="history">No history found ...</div>
	<div class="tab-pane" id="report">
            <form class="col-md-8 center-block w3-padding-8" action="Validate8.jsp" method="post">
             <br>
             
                <div class="form-group">
                    <select   class="form-control input-md" required="" name="subject">
                        
                                    <option value="enquiry">enquiry</option>
                                    <option value="exchange">exchange</option>
                                    <option value="feedback">feedback</option>
                                    <option value="complaint">complaint</option>
                                </select>
                            </div>
                
                <div class="form-group">
                    <textarea class="form-control input-group-md" placeholder="text here" rows="3" name="discription"></textarea>
                </div>
                <div class="form-group">
                    <input class="form-control input-group-md btn btn-primary" type="submit" >
                </div>
            </form>
        
        </div>
        <div class="tab-pane" id="change_password">
            <form class="col-md-8 center-block w3-padding-8" action="Validate7.jsp" method="post">
                <h5>change password</h5>
                <% 
                        if(session.getAttribute("change_error")!=null){
                            %> 
                            <div class="alert alert-info w3-round-medium w3-margin"><%=session.getAttribute("change_error")%></div>
                            <%  request.removeAttribute("claim_msg");
                        }
                    %>
                <div class="form-group">
                    <input class="form-control input-group-md" placeholder="old password" type="password">
                </div>
                <div class="form-group">
                    <input class="form-control input-group-md" placeholder="new password" type="password" name="password1">
                </div>
                <div class="form-group">
                    <input class="form-control input-group-md" placeholder="re-type new password" type="password" name="password2">
                </div>
                <div class="form-group">
                    <input class="form-control input-group-md btn btn-primary" type="submit">
                    
                </div>
            </form>
        </div>
        
        </div>

                </div>
            
            </div>
        </div>
    </body>
    
</html>
