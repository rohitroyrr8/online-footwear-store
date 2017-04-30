<%-- 
    Document   : Validate1
    Created on : Jan 26, 2017, 2:14:16 PM
    Author     : Rohit Roy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- for authenticatoin user and admin -->
        <% 
           String user=request.getParameter("username");
           String pwd=request.getParameter("password");
           String user_type=request.getParameter("user_type");
           
            if(user_type.equalsIgnoreCase("admin")){    
                  Class.forName("com.mysql.jdbc.Driver");
                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ekart", "root", "0000");    
                //Connection con=DriverManager.getConnection("jdbc:mysql://mysql30506-stockhome.cloud.cms500.com/ekart", "root", "ENDynf15557");    
                Statement stmt=con.createStatement();
                ResultSet rs1=stmt.executeQuery("select * from ekart.admin_registration where id='101';");
                
                while(rs1.next()){
                     if(user.equalsIgnoreCase(rs1.getString("name"))&&pwd.equalsIgnoreCase(rs1.getString("password"))){
                         session.removeAttribute("login_error");
                          response.sendRedirect("Admin_Homepage1.jsp");
                     }
                     else{
                         
                         response.sendRedirect("User_Authentication.jsp");
                     }
                     
                }
                rs1.close();
               
           }
            
          else{
              Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ekart", "root", "0000");    
         //Connection con=DriverManager.getConnection("jdbc:mysql://mysql30506-stockhome.cloud.cms500.com/ekart", "root", "ENDynf15557");    
           Statement stmt=con.createStatement();
           ResultSet rs2=stmt.executeQuery("SELECT * FROM ekart.user_registrtion;");
           while(rs2.next()){
               if(user.equalsIgnoreCase(rs2.getString("name"))&&pwd.equalsIgnoreCase(rs2.getString("password"))){
                   int user_id=rs2.getInt("user_id");
                   session.setAttribute("user_id", user_id);
                   
                  session.removeAttribute("login_error");
                   RequestDispatcher rd=request.getRequestDispatcher("User_Profile.jsp");
                   rd.forward(request, response);
               }
               
               
           }
          
                  session.setAttribute("login_error", "Invalid Credential");
                  RequestDispatcher rd=request.getRequestDispatcher("User_Authentication.jsp");
                   rd.include(request, response);
               
           rs2.close();
           }
           %>
    </body>
</html>
