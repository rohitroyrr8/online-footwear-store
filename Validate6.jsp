<%-- 
    Document   : Validate6
    Created on : Feb 28, 2017, 2:03:46 PM
    Author     : Rohit Roy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<link rel="stylesheet" href="css/w3.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>    
    <body>
        <p style=" background: #ff4d4d; color: wheat; width: 300px; " class=" alert w3-round-large w3-padding-12 w3-center"><% 
           String user=request.getParameter("user");
           String pwd=request.getParameter("password");
           
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ekart", "root", "0000");    
           //Connection con=DriverManager.getConnection("jdbc:mysql://mysql30506-stockhome.cloud.cms500.com/ekart", "root", "ENDynf15557");    
           Statement stmt=con.createStatement();
           ResultSet rs=stmt.executeQuery("select * from payment_internet_banking");
           while(rs.next()){
               if(user.equalsIgnoreCase(rs.getString("username"))&&pwd.equalsIgnoreCase(rs.getString("password"))){
                   response.sendRedirect("Payment_Confirmed.jsp");
               }
               else{
                    out.print("Error: Invalid Credential. ");
                  RequestDispatcher rd=request.getRequestDispatcher("Making_Payment.jsp");
                   rd.include(request, response);
               }
           }
          %>  
        </p>
        
    </body>

</html>