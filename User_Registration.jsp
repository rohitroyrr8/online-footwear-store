<%-- 
    Document   : User_Registration
    Created on : Jan 27, 2017, 1:44:45 PM
    Author     : Rohit Roy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link  type="image/png" href="images/logo.png" rel="shortcut icon">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
          <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="css/w3.css">
        <title>JSP Page</title>
    </head>
    <body style="background-color: threeddarkshadow">
        <div class="">
            <h1 class=" w3-text-white w3-padding-12 w3-margin-0"><img src="images/logo.png" style="height: 60px; width: 60px">stockhome.ml</h1>
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="text-center">register yourself</h1>
                    </div>
                   <div class="modal-body"> 
                       <form class="col-md-12 center-block" action="Validate3.jsp" method="post">
                            <div class="form-group">
                                <select type="text"name="sex" class="form-control input-lg" required="">
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                    <option value="other">Other</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <input type="text" name="user" class="form-control input-lg" placeholder="Your name" required="">
                            </div>
                            <div class="form-group">
                                <input type="number" name="phone" class="form-control input-lg" placeholder="Mobile No." required="">
                            </div>
                            <div class="form-group">
                                <input type="email" name="email" class="form-control input-lg" placeholder="Email Address" required="">
                            </div>
                            <div class="form-group">
                                <input type="text" name="address" class="form-control input-lg" placeholder="City" required="">
                            </div>
                            <div class="form-group">
                                <input type="password" name="password" class="form-control input-lg" placeholder="Password" required="">
                            </div>
                             
                            <div class="form-group">
                                <input type="submit" class="btn btn-block btn-lg btn-primary" value="Register Me">
                                
                            </div>
                        </form>
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
    </body>
</html>
