<%-- 
    Document   : User_Profile
    Created on : Jan 30, 2017, 4:54:31 PM
    Author     : Rohit Roy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Confirmed</title>
        <%@page  import="java.sql.*" %>
        <link type="stylesheets" href="css/w3.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
          <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link type="text/png" href="images/logo.png" rel="shortcut icon">
        <style>
            @media screen and (max-width: 600px){
                h1{
                    
                   font-size: 25px;
                }
               
                
            }
        </style>
    </head>
    
        <body style="background-color: white ">
        <div class="">
            <h1 class="w3-blue w3-text-white w3-padding-12 w3-margin-0" style=""><img class="" src="images/logo.png" style="height: 60px; width: 60px">stockhome.ml</h1>
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="text-center btn btn-success btn-lg center-block   ">Payment Confirmed</h1>
                    </div>
                   <div class="modal-body"> 
                       <p>You have successfully ordered for the selected products and we will try to deliver it to you in a 2-3 working days.Visit to your
                      <a class="btn btn-link " href="User_Profile.jsp">profile</a>to track the order</p>
                       
                       <a class="btn btn-link" href="homepage.jsp">Go back to Homepage</a>
                       
                       <div class="modal-footer">
                           <!--<div class="col-md-12">
                               <span class="pull-left"><a href="#">New User</a>
                                </span>
                           </div> -->
                       </div>
                    </div>
                </div>
            </div>
        </div>
            <% 
                //for deleting item from cart
            Object user=session.getAttribute("user");
            if(user!=null){
                 Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ekart", "root", "0000");    
           //Connection con=DriverManager.getConnection("jdbc:mysql://mysql30506-stockhome.cloud.cms500.com/ekart", "root", "ENDynf15557");    
           Statement stmt=con.createStatement();
           int r=stmt.executeUpdate("DELETE FROM `ekart`.`item_ordered` WHERE `user`='"+user+"';");
           stmt.close();
           
           
           
            }
        %>
   
           

    </body>
</html>
