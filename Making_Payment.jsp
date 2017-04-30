<%-- 
    Document   : Making_Payment
    Created on : Feb 3, 2017, 4:54:48 PM
    Author     : Rohit Roy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stockhome</title>
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
          <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
          <link rel="stylesheet" href="www.w3schools.com_lib_w3.css">
        <link type="text/png" rel="shortcut icon" href="images/logo.png">
        
    </head>
    <body>
        <nav class="navvbar  w3-top">
            <ul>
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar navbar-brand w3-white"><h3>stockhome.ml</h3></a>
                    </div>
                    
                </div>
            </ul>
        </nav>
                <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h2 class=""> <%=session.getAttribute("user")%></h2>
                                <h3>Total Amount(Rs.): <%=session.getAttribute("total_payment")%></h3>
                            </div>
                           <div class="modal-body"> 
                                <div class="panel-group" id="accordion">
                                    <h3>Select a payment Method: </h3>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
                using Debit / Credit Card</a>
              </h4>
            </div>
            <div id="collapse1" class="panel-collapse collapse">
                <div class="panel-body">
                    <form class="center-block col-lg-8 w3-padding-8" method="post" action="#">
                     <div class="form-group">
                         <select class="form-control input-group-md" name="card_type">
                         <option>select a card-type</option>
                         <option value="vissa">visa card</option>
                         <option value="master">master / maestro card</option>
                         <option value="rupay">Rupay card</option>
                     </select>
                     </div>
                <div class="form-group">
                    <input type="tel" placeholder="Enter 16-digit card no.." class="form-control input-group-md" maxlength="16" >
                </div>
                 <div class="form-group ">
                     <input type="password" placeholder="enter your PIN" class="form-control input-group-md">
                </div>
                <div class="form-group">
                    <input type="submit" placeholder="" class="form-control btn btn-info" value="submit">
                </div>
            </form>
                </div>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">using net-banking</a>
              </h4>
            </div>
            <div id="collapse2" class="panel-collapse collapse">
                <div class="panel-body">
                    <form class="center-block col-lg-8 w3-padding-8" method="post" action="Validate6.jsp">
                     <div class="form-group">
                         <select class="form-control input-group-md" name="bank">
                         <option>select your bank</option>
                         <option value="sbi">State Bank of India</option>
                         <option value="icici">ICICI Bank</option>
                         <option value="hdfc">HDFC</option>
                         <option value="other">other</option>
                     </select>
                     </div>
                <div class="form-group">
                    <input type="tel" placeholder="Username" class="form-control input-group-md" name="user" >
                </div>
                 <div class="form-group ">
                     <input type="password" placeholder="Password" class="form-control input-group-md" name="password">
                </div>
                <div class="form-group">
                    <input type="submit" placeholder="" class="form-control btn btn-info" value="submit">
                </div>
            </form>
                </div>
            </div>
          </div>
          <div class="panel panel-default">
            <div class="panel-heading">
              <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">cash-on-delivery</a>
              </h4>
            </div>
            <div id="collapse3" class="panel-collapse collapse">
                <div class="panel-body">
                    <form action="#" method="post">
                        <div class="form-group">
                                <input class="form-control input-group-md" type="text" name="name" placeholder="enter your name">
                        </div>
                        <div class="form-group">
                                <input class="form-control input-group-md" type="tel" name="phone" placeholder="mobile no.">
                        </div>
                        <div class="form-group">
                            <textarea class="form-control input-group-md" placeholder="your current address" name="address" rows="3"></textarea>
                        </div>
                        <div class="form-group">
                            <input class="form-control btn btn-info input-group-md" type="submit" >
                        </div>
                       
                    </form>
                </div>
            </div>
          </div>
        </div>


        <div class="modal-footer">
            <div class="btn btn-danger">
                <span class="pull-right "> <a href="User_Profile.jsp" style="text-decoration: none; color: white">Cancel</a></span>
            </div>
        </div>
     </div>
    </div>
    </div>
    </body>
</html>
