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
            String item1 = (String) request.getParameter("item1");
            String price1 = (String) request.getParameter("price1");
            String area1 = request.getParameter("area1");

            if (item1 != null && price1 != null && area1 != null) {
                request.setAttribute("item", item1);
                int pr = Integer.parseInt(price1);
                request.setAttribute("price", pr);
                request.setAttribute("area", area1);
                out.print(item1 + " " + pr + " " + area1 + " " + Beans.Userdetails.getEmail());
                RequestDispatcher rd = request.getRequestDispatcher("Sellerhome");
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

                <center> 
                    <form>
                        Item:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="item"></br>
                            Price:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="price"></br>
                                Area:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="area"></br>
                                    <input type="submit"  value="Submit">


                                        </form></center>
                                        </div>
                                        <!-- ####################################################################################################### -->
                                        <div class="wrapper col5">
                                            <div id="footer">

                                            </div>
                                        </div>
                                        </body>
                                        </html>
