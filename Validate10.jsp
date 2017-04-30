<%-- 
    Document   : Validate10
    Created on : Aug 6, 2016, 6:35:17 PM
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
        <% String id=request.getParameter("id");
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ekart", "root", "0000");    
         //Connection con=DriverManager.getConnection("jdbc:mysql://mysql30506-stockhome.cloud.cms500.com/ekart", "root", "ENDynf15557");    
           Statement stmt=con.createStatement();
           ResultSet rs=stmt.executeQuery("select * from all_product where id='"+id+"'");
           while(rs.next()){
               session.setAttribute("product_id", rs.getInt("id"));
               request.setAttribute("product_name", rs.getString("name"));
               request.setAttribute("price", rs.getString("price"));
               request.setAttribute("detail", rs.getString("detail"));
               String qty=rs.getString("qty");
               request.setAttribute("qty", qty);
               RequestDispatcher rd=request.getRequestDispatcher("Admin_Homepage3.jsp");
               rd.forward(request, response);
           }
       %>
    </body>
</html>
