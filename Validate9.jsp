<%-- 
    Document   : Validate9
    Created on : Mar 6, 2017, 3:40:57 PM
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
            try{
                String id=request.getParameter("id");
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ekart", "root", "0000");    
          //Connection con=DriverManager.getConnection("jdbc:mysql://mysql30506-stockhome.cloud.cms500.com/ekart", "root", "ENDynf15557");    
           Statement stmt=con.createStatement();
           ResultSet rs=stmt.executeQuery("select * from user_registrtion where user_id='"+id+"'");
           while(rs.next()){
               request.setAttribute("name", rs.getString("name"));
               request.setAttribute("phone", rs.getString("phone"));
               request.setAttribute("email", rs.getString("email"));
               String qty=rs.getString("address");
               request.setAttribute("address", qty);
                request.setAttribute("password", rs.getString("password"));
               RequestDispatcher rd=request.getRequestDispatcher("Admin_Homepage2.jsp");
               rd.forward(request, response);
           }
            }catch(Exception e){}
       %>
    </body>
</html>
