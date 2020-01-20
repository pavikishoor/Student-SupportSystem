<%-- 
    Document   : UpdateDateRetrival
    Created on : 8 Oct, 2019, 5:00:23 PM
    Author     : PAVITHRAYANI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{  
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","");
                Statement stmt=conn.createStatement();
                Statement stmt1=conn.createStatement();
                ResultSet rs = stmt.executeQuery("select * from updatedonateddate");
                out.println("<br>");
                int Count=0;
                String UserName = request.getParameter("userid");
                String Email = request.getParameter("email");
                String newDate = request.getParameter("date");
                while(rs.next()){
                String us = rs.getString("UserId");
                String email = rs.getString("EmailId");
                if((UserName.equals(us)) && (Email.equals(email))){
                    out.print("Count");
                Count+=1;
                break;
                }
                else{
                Count+=0;
                out.print(Count);
                }
                if(Count>=1){
                out.print("UpdateSucessFull");
                stmt1.executeUpdate("UPDATE updatedonateddate set DonatedDate = '" + newDate +"' WHERE UserId = '" +UserName+ "' AND EmailId = '" + Email + "'");
                 }
                else{
                   out.print("Invalid Details"); 
                }
                }
            }catch(Exception e){
                out.println(e);
            }
            
        %>
    </body>
</html>

