<%-- 
    Document   : Validate4
    Created on : Feb 26, 2017, 3:42:26 PM
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
        <%
            
               Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ekart", "root", "0000");   
           //Connection con=DriverManager.getConnection("jdbc:mysql://mysql30506-stockhome.cloud.cms500.com/ekart", "root", "ENDynf15557");    
           Statement stmt=con.createStatement();
           int result=stmt.executeUpdate("INSERT INTO `ekart`.`item_ordered` (`item_id`, `user`, `item_name`, `item_price`, `item_qty`, `item_image`) VALUES ('"+request.getParameter("item_id")+"', '"+session.getAttribute("user")+"', '"+request.getParameter("item_name")+"', '"+request.getParameter("item_price")+"', '1', '"+request.getParameter("item_image")+"');");
                 if(result>0){
                     RequestDispatcher rd= request.getRequestDispatcher("homepage.jsp");
                     rd.forward(request, response);
                 }
        %>
    </body>
</html>
