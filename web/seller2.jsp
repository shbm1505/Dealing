<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
    <head profile="http://gmpg.org/xfn/11">
        <title>Gallerised</title>
        <%@page import="java.sql.*"%>
        <%@page import="java.sql.PreparedStatement"%>
        <%@page import="java.sql.DriverManager"%>

        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <meta http-equiv="imagetoolbar" content="no" />
        <link rel="stylesheet" href="styles/layout.css" type="text/css" />
        <link rel="stylesheet" href="projectCSS.css" type="text/css" />

        <script type="text/javascript" src="scripts/jquery-1.4.3.min.js"></script>
        <script type="text/javascript" src="scripts/jquery.s3slider.js"></script>
        <script type="text/javascript" src="scripts/jquery.s3slider.setup.js"></script>
        <%String cno = "", area = "", name = "", person = "", item = "", email = "", city = "";
            int contact = 0, price = 0;%>

        <%


        %>        
    </head>
    <body id="top">
        <div class="wrapper col1">
            <div id="header">
                <div id="topnav">
                    <ul>
                        <li><a href="#details">My Property</a><span>Test Text Here</span>
                            <ul>
                                <li><a href="#">Link 1</a></li>
                                <li><a href="#">Link 2</a></li>
                                <li><a href="#">Link 3</a></li>

                            </ul>
                        </li>

                        <li><a href="index.html">Log out</a><span>Test Text Here</span></li>
                        <li class="active"><a href="index.html">Home</a><span>Test Text Here</span></li>
                    </ul>
                </div>
                <div class="fl_left">

                </div>
                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col2">
            <div id="featured_slide_">
                <%                    String msg = "";
                    String m = request.getParameter("msg");
                    if (m != null) {
                        msg = m;
                    }

                %>
                <center> <font color="red"><%=msg%></font></center>
                <center> 
                    <form action="FileUploadHandler" method="post" enctype="multipart/form-data">
                        Upload pic: <input type="file" name="file"></input>
                        <input type="submit"  value="Upload">


                    </form></center>
                <a name="#details">
                    <center> 

                        <table><tr><th>Item</th><th>Price(Rs)</th><th>Area</th><th>City</th></tr>
                                    <%
                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/user", "root", "root");
                                            //String str=Beans.Userdetails.getEmail();
                                            String query = "select item,price,area,city from project,items where project.email=items.email and email=?";
                                            PreparedStatement ps = (PreparedStatement) con.prepareStatement(query);
                                            ps.setString(1, Beans.Userdetails.getEmail());
                                            ResultSet r1 = ps.executeQuery();
                                            while (r1.next()) {
                                                price = r1.getInt(2);
                                                item = r1.getString(1);
                                                area = r1.getString(3);
                                                city = r1.getString(4);

                                    %>
                            <tr><td><a href="c:/onlineImages/<%=email%>.jpg"><%=item%></a></td><td><%=price%></td><td><%=area%></td>><td><%=city%></td></tr>
                            }
                            <%
                                    }
                                } catch (Exception e) {
                                    out.print(e);
                                }
                            %>
                        </table>
                    </center>
                </a>

            </div>
            <!-- ####################################################################################################### -->
            <div class="wrapper col5">
                <div id="footer">

                </div>
            </div>
    </body>
</html>
