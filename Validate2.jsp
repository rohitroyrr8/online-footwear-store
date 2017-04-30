<%-- 
    Document   : Validate11
    Created on : Mar 6, 2017, 11:32:01 PM
    Author     : Rohit Roy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% Object user=session.getAttribute("user_id");
            if(user!=null){
                session.removeAttribute("user_id");
                session.removeAttribute("user");
                session.removeValue("error");
                session.removeAttribute("login_error");
                session.removeAttribute("change_error");
                request.removeAttribute("claim_msg");
                response.sendRedirect("index.html");
            }
            else{Date date=new Date();
                         int h=date.getHours();
                            int mi=date.getMinutes();
                        int d=date.getDate();
                        int m=1+date.getMonth();
                        int y=1900+date.getYear();
                        Class.forName("com.mysql.jdbc.Driver");
                      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ekart", "root", "0000");    
                     //Connection con=DriverManager.getConnection("jdbc:mysql://mysql30506-stockhome.cloud.cms500.com/ekart", "root", "ENDynf15557");    
                        Statement stmt=con.createStatement();
                        int rs2=stmt.executeUpdate("UPDATE `ekart`.`admin_registration` SET `last_minute`='"+mi+"',`last_hour`='"+h+"',`last_day`= '"+d+"',`last_month` ='"+m+"',`last_year` ='"+y+"' WHERE `id`='101';");
                 session.removeAttribute("user_id");
                 session.removeAttribute("user");
                 session.removeAttribute("item_id");
                 session.removeAttribute("total_payment");
                 response.sendRedirect("index.html");
            }
        %>
    </body>
</html>
