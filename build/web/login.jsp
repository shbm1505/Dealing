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
            String u = (String) request.getParameter("username");
            String p = (String) request.getParameter("password");
            String ppl = (String) request.getParameter("ppl");

            if (u != null && p != null && ppl !=null) {

                request.setAttribute("username", u);
                request.setAttribute("password", p);
                request.setAttribute("ppl", ppl);
                RequestDispatcher rd = request.getRequestDispatcher("checkLogin");
                rd.forward(request, response);
            }




        %>        
    </head>
    <body id="top">
        <div class="wrapper col1">
            <div id="header">
                <div id="topnav">
                    <ul>
                        <li><a href="#">View Property</a><span>Test Text Here</span>
                            <ul>
                                <li><a href="#">Link 1</a></li>
                                <li><a href="#">Link 2</a></li>
                                <li><a href="#">Link 3</a></li>


                            </ul>
                        </li>

                        <li><a href="registration.jsp">Log out</a><span>Test Text Here</span></li>
                        <li class="active"><a href="index.html">Home</a><span>Test Text Here</span></li>
                    </ul>
                </div>
                <div class="fl_left">
                    <h1><a href="#">Dealing</a></h1>
                    <p>Free CSS Website Template</p>
                </div>
                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col2">
            <div id="featured_slide_">


                <center>   <form >

                        Username:<input type="text" name="username"></br>


                            Password:<input type="password" name="password"></br>

                                <input type="radio" name="ppl" value="admin">admin</input>
                                <input type="radio" name="ppl" value="sell">seller</input>
                                <input type="radio" name="ppl" value="buy">buyer</input>
                                <input type="SUBMIT" value="Submit">


                                    </form>

                                    </center>

                                    </ul>
                                    </div>
                                    </div>
                                    <!-- ####################################################################################################### -->
                                    <div class="wrapper col5">
                                        <div id="footer">
                                            <p class="fl_left">Copyright &copy; 2014 - All Rights Reserved - <a href="#">Domain Name</a></p>
                                            <p class="fl_right">Template by <a href="http://www.xxx.com/" title="Free Website Templates">OS Templates</a></p>
                                            <br class="clear" />
                                        </div>
                                    </div>
                                    </body>
                                    </html>
