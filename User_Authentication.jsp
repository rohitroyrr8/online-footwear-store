<%-- 
    Document   : User_Authentication
    Created on : Jan 25, 2017, 11:33:20 PM
    Author     : Rohit Roy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log-in PLease</title>
        <link  type="image/png" href="images/logo.png" rel="shortcut icon">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
          <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/w3.css">
        <%@page import="java.sql.*" %>
        <style>
            
        </style>
    </head>
    <body class="img-responsive" style="background-image: url(images/fl20130604lla.jpg);">
        <div class="" >
           
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="text-center">Stockhome Logistics</h1>
                    </div>
                    <% 
                        if(session.getAttribute("login_error")!=null){
                            %> 
                            <div class="alert alert-danger w3-round-medium w3-margin">invalid username and password</div>
                    <%
                        }
                    %>
                    
                        
                   
                   <div class="modal-body"> 
                       <form class="col-md-12 center-block" action="Validate1.jsp" method="post">
                            <div class="form-group">
                                <select type="text" name="user_type" class="form-control input-lg" required="">
                                    <option value="customer">Customer</option>
                                    <option value="admin">Administrator</option>
                                    
                                </select>
                            </div>
                            <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon glyphicon glyphicon-user"></span>
                                <input type="text" class="form-control input-lg" placeholder="Username" aria-describedby="basic-addon1" name="username" required="">
                             </div>
                               
                            </div>
                            <div class="form-group">
                               <div class="input-group">
                                    <span class="input-group-addon glyphicon glyphicon-asterisk" ></span>
                                    <input type="password" class="form-control input-lg" placeholder="Passowrd" aria-describedby="basic-addon1" name="password" required="">
                             </div>
                            </div>
                            <div class="form-group">
                                <input type="submit" class="btn btn-block btn-lg btn-success" value="Login">
                                <span class="pull-left"><a href="#" onclick="document.getElementById('id02').style.display='block'">Forgot Password</a>
                                </span> 
                               
                                <div id="id02" class="w3-modal col-lg-8" style="">
                                    <div class="w3-modal-content w3-round-large w3-animate-zoom w3-card-8 w3-white">
                                        
                                     <div class="w3-container">
                                         <p>Enter your email that you have submitted at the time of registration,<br> we will send back a recovery mail to you</p>
                                            <span class="w3-display-topright w3-closebtn w3-hover-red" onclick="document.getElementById('id02').style.display='none'">&times;</span>
                       
                                            <input class="w3-margin-bottom" type="email" placeholder="Enter your registered email">
                       
                                    
                                    </div>
                                  </div>
                                </div>
                            </div>
                           </form>
                      </div>
                   
                        
                       
                       <div class="modal-footer">
                           <div class="col-md-12">
                               <span class="pull-left"><a href="User_Registration.jsp">New User</a>
                                </span>
                           </div>
                       </div>
                    </div>
                </div>
            </div>
        
    </body>
</html>
