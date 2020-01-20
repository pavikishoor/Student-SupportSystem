<%-- 
    Document   : ResetPassword
    Created on : 8 Oct, 2019, 3:47:26 PM
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
                ResultSet rs = stmt.executeQuery("select * from DonarRegistration");
                out.println("<br>");
                String UserName = request.getParameter("userid");
                String Password = request.getParameter("password");
                String newPassword = request.getParameter("newpassword");
                while(rs.next()){
                String us = rs.getString("UserId");
                String pwd = rs.getString("Password");
                if((UserName.equals(us)) && (Password.equals(pwd))){
                stmt1.executeUpdate("UPDATE DonarRegistration set Password = '" + newPassword +"' WHERE UserId = '" +UserName+ "' AND Password = '" + Password + "'");
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
