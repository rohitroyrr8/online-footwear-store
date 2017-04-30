<%-- 
    Document   : Validate7
    Created on : Mar 4, 2017, 11:56:08 AM
    Author     : Rohit Roy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link type="stylesheet" href="css/w3.css">
    

    </head>
    <body>
        
        <div><% //for updating user profile
            String old_password=request.getParameter("password");
            String password1=request.getParameter("password1");
            String password2=request.getParameter("password2");
            
            
                Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ekart", "root", "0000");    
          //Connection con=DriverManager.getConnection("jdbc:mysql://mysql30506-stockhome.cloud.cms500.com/ekart", "root", "ENDynf15557");    
           Statement stmt=con.createStatement();
               int rs1= stmt.executeUpdate("UPDATE `user_registrtion` SET `password`='"+password1+"'  WHERE `user_id`='"+session.getAttribute("user_id")+"';");
                if(rs1>0){
                  String r1="password Change successfully";
                  session.setAttribute("change_error", r1);
               RequestDispatcher rd=request.getRequestDispatcher("User_Profile.jsp");
               rd.forward(request, response);
                }
          
          else{
             String r1="incorrect password, try again";
             session.setAttribute("change_error", r1);
              RequestDispatcher rd=request.getRequestDispatcher("User_Profile.jsp");
               rd.forward(request, response);
          }
          
          
           

        %></div>
        
    </body>
</html>
