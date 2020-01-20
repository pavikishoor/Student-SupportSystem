<%-- 
    Document   : dataStore
    Created on : 2 Oct, 2019, 3:35:58 PM
    Author     : PAVITHRAYANI
--%>
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
                out.println("<br>");
                String name = request.getParameter("name");
                String bloodgroup = request.getParameter("bloodgroup");
                String country = request.getParameter("country");
                String state = request.getParameter("state");
                String district = request.getParameter("district");
                String number = request.getParameter("number");
                String email = request.getParameter("email");
                String userid = request.getParameter("userid");
                String password = request.getParameter("password");
                String Null = "";
                stmt.executeUpdate("insert into DonarRegistration values('"+name+"','"+bloodgroup+"','"+country+"','"+state+"','"+district+"','"+number+"','"+email+"','"+userid+"','"+password+"')");
                stmt1.executeUpdate("insert into UpdateDonatedDate values('"+userid+"','"+Null+"','"+email+"')");
        %>
                <br><br>
                <center>
                    <%
                    response.setStatus(response.SC_MOVED_TEMPORARILY);
                    response.setHeader("Location", "index.html"); 
                    %>
                    
                    <br>
                </center>
                <%
            }catch(Exception e){
                out.println(e);
            }
        %>
    </body>
</html>
