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
           
            Object product_id=session.getAttribute("product_id");
           
           
            String name=request.getParameter("name");
            String price=request.getParameter("price");
            int price1=Integer.parseInt(price);
            String qty=request.getParameter("qty");
            int qty1=Integer.parseInt(qty);
            String detail=request.getParameter("detail");
            try{
                
                     Class.forName("com.mysql.jdbc.Driver");
                    // Connection con=DriverManager.getConnection("jdbc:mysql://mysql30506-stockhome.cloud.cms500.com/ekart", "root", "ENDynf15557");    
                     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ekart", "root", "0000");    
           Statement stmt=con.createStatement();
           int rs1= stmt.executeUpdate("UPDATE `all_product` SET `name`='"+name+"', `price`='"+price1+"', `qty`='"+qty1+"' ,`detail`='"+detail+"'  WHERE `id`='"+product_id+"';");
           if(rs1>0){
               response.sendRedirect("Admin_Homepage3.jsp");
           }
           else{
               response.sendRedirect("Admin_Homepage3.jsp");
           }

            }catch(Exception e){}
        %>
    </body>
</html>
