<%-- 
    Document   : Validate5
    Created on : Feb 27, 2017, 10:45:49 PM
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
        <% //for updating user profile
            String username=request.getParameter("username");
            String phone=request.getParameter("phone");
            String email=request.getParameter("email");
            String age=request.getParameter("age");
            int age1=Integer.parseInt(age);
            String city=request.getParameter("city");
            
                Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ekart", "root", "0000");    
          //Connection con=DriverManager.getConnection("jdbc:mysql://mysql30506-stockhome.cloud.cms500.com/ekart", "root", "ENDynf15557");    
           Statement stmt=con.createStatement();
           int rs1= stmt.executeUpdate("UPDATE `user_registrtion` SET `name`='"+username+"', `phone`='"+phone+"', `email`='"+email+"',`address`='"+city+"', `age`='"+age1+"'  WHERE `user_id`='"+session.getAttribute("user_id")+"';");
           if(rs1>0){
               RequestDispatcher rd=request.getRequestDispatcher("Payment_Confirmed.jsp");
               rd.forward(request, response);
           }

        %>
    </body>
</html>
