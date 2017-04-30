<%-- 
    Document   : Validate5
    Created on : Feb 26, 2017, 1:36:08 PM
    Author     : Rohit Roy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            String user=request.getParameter("user");
            String phone=request.getParameter("phone");
            String email=request.getParameter("email");
            String address=request.getParameter("address");
             String sex= request.getParameter("sex");
            String password=request.getParameter("password");
            Class.forName("com.mysql.jdbc.Driver");
           //Connection con=DriverManager.getConnection("jdbc:mysql://mysql30506-stockhome.cloud.cms500.com/ekart", "root", "ENDynf15557");    
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ekart", "root", "0000");    
           Statement stmt=con.createStatement();
           boolean r1= stmt.execute("INSERT INTO `ekart`.`user_registrtion` (`name`, `phone`, `email`, `address`, `sex`, `password` ) VALUES"
                   + " ('"+user+"', '"+phone+"', '"+email+"', '"+address+"', '"+sex+"', '"+password+"');");
            if(r1=true){
                
                 response.sendRedirect("User_Authentication.jsp");
             }
             else{
                response.sendRedirect("User_Ragistration.jsp");
             }
            %>
    </body>
</html>
