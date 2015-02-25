<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="EN" lang="EN" dir="ltr">
    <head profile="http://gmpg.org/xfn/11">
        <title>Gallerised</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <meta http-equiv="imagetoolbar" content="no" />
        <link rel="stylesheet" href="styles/layout.css" type="text/css" />
        <link rel="stylesheet" href="projectCSS.css" type="text/css" />

        <script type="text/javascript" src="scripts/jquery-1.4.3.min.js"></script>
        <script type="text/javascript" src="scripts/jquery.s3slider.js"></script>
        <script type="text/javascript" src="scripts/jquery.s3slider.setup.js"></script>
        <%
            String n = (String) request.getParameter("name");
            String cat = (String) request.getParameter("activity");
            String p = (String) request.getParameter("password");
            String con = request.getParameter("contact");
            String e = (String) request.getParameter("email");
            String city = (String) request.getParameter("place");
            if (n != null && cat != null && con != null && e != null && city != null&& p!=null) {

                request.setAttribute("name", n);
                request.setAttribute("activity", cat);
                int i = Integer.parseInt(con);
                request.setAttribute("contact", i);
                request.setAttribute("email", e);
                request.setAttribute("place", city);
                request.setAttribute("password", p);

                RequestDispatcher rd = request.getRequestDispatcher("Registration");
                rd.forward(request, response);
            }
        %>        
    </head>
    <body id="top">
        <div class="wrapper col1">
            <div id="header">
                <div id="topnav">
                    <ul>
                        <li><a href="#">View Property</a>
                            <ul>
                                <li><a href="#">Link 1</a></li>
                                <li><a href="#">Link 2</a></li>
                                <li><a href="#">Link 3</a></li>


                            </ul>
                        </li>

                        <li><a href="registration.jsp">Log out</a></li>
                        <li class="active"><a href="index.html">Home</a></li>
                    </ul>
                </div>
                <div class="fl_left">
                    <h1><a href="#">Dealing</a></h1>

                </div>
                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col2">
            <div id="featured_slide_">


                <center>   <form>

                        Category:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="activity" >
                            <option value="buy">Buy</option>
                            <option value="sell">Sell</option>
                        </select></br>
                        Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name"></br>
                            Contact:&nbsp;&nbsp;<input type="number" name="contact"></br>
                                Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="email"></br>
                                    Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password"></br>
                                        City:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="place">
                                            <option value="Lucknow">Lucknow</option>
                                            <option value="Delhi">Delhi</option>
                                            <option value="Varanasi">Varanasi</option>
                                            <option value="Mumbai">Mumbai</option>
                                            <option value="Bangalore">Bangalore</option>
                                            <option value="Hyderabad">Hyderabad</option>
                                            <option value="Chennai">Delhi</option>
                                            <option value="Chandigarh">Chandigarh</option>
                                            <option value="Noida">Noida</option>
                                            <option value="Delhi">Delhi</option>
                                        </select></br>
                                        <input type="SUBMIT" value="Submit">
                                            </form>


                                            </center>

                                            </ul>
                                            </div>
                                            </div>
                                            <!-- ####################################################################################################### -->
                                            <div class="wrapper col5">
                                                <div id="footer">

                                                    <br class="clear" />
                                                </div>
                                            </div>
                                            </body>
                                            </html>
