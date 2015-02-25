<%-- 
    Document   : Buyerhome3
    Created on : Jul 26, 2014, 10:41:57 AM
    Author     : Administrator
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <% Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/user", "root", "root");
            String query = "select * from project where category='sell'";
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(query);
            ResultSet r1 = ps.executeQuery();
             String n=r1.getString(1);
            String c=r1.getString(4);
            int contact=r1.getInt(5);
            String e=r1.getString(3);
            
            String query2 = "select * from product where email=?";
            
            PreparedStatement br = (PreparedStatement) con.prepareStatement(query2);
            br.setString(1, e);
            
            
            ResultSet r2 = br.executeQuery();
           
            String i=r2.getString(1);
            int p=r2.getInt(2);
            String a=r2.getString(3);
            
            %>
    </head>
    <body>
        <h1>Hello World!</h1>
         <center>  <table><tr><th>City</th><th>Item</th><th>Price(Rs)</th><th>Area</th><th>Contact no</th><th>Contact person</th></tr>
            <tr><td><%=c%></td><td><%=i%></td><td><%=p%></td><td><%=a%></td><td><%=contact%></td><td><%=n%></td><td><%=%></td></tr>
        </table></center>
    </body>
</html>
