<%-- 
    Document   : Validate8
    Created on : Mar 5, 2017, 10:50:49 PM
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
           String subject=request.getParameter("subject");
           String discription=request.getParameter("discription");
          Object user_id=session.getAttribute("user_id");
          
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ekart", "root", "0000");    
         // Connection con=DriverManager.getConnection("jdbc:mysql://mysql30506-stockhome.cloud.cms500.com/ekart", "root", "ENDynf15557");    
           Statement stmt=con.createStatement();
          
          int rs=stmt.executeUpdate("INSERT INTO `ekart`.`user_claim` (`user_id`, `name`, `subject`, `discription`) VALUES ('"+session.getAttribute("user_id")+"', '"+session.getAttribute("user")+"', '"+subject+"', '"+discription+"');");
           if(rs>0){
               
               request.setAttribute("claim_msg", "Your "+subject+" has been submitted successfully.");
                RequestDispatcher rd= request.getRequestDispatcher("User_Profile.jsp");
            rd.forward(request, response);
           }
           else{
                RequestDispatcher rd= request.getRequestDispatcher("User_Profile.jsp");
                rd.forward(request, response);
           }
           }catch(Exception e){out.println(e);}
           %>
    </body>
</html>
