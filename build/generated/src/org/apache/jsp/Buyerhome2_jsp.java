package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.DriverManager;

public final class Buyerhome2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"EN\" lang=\"EN\" dir=\"ltr\">\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <head profile=\"http://gmpg.org/xfn/11\">\n");
      out.write("        <title>Gallerised</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=iso-8859-1\" />\n");
      out.write("        <meta http-equiv=\"imagetoolbar\" content=\"no\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"styles/layout.css\" type=\"text/css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"projectCSS.css\" type=\"text/css\" />\n");
      out.write("\n");
      out.write("        <script type=\"text/javascript\" src=\"scripts/jquery-1.4.3.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"scripts/jquery.s3slider.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"scripts/jquery.s3slider.setup.js\"></script>\n");
      out.write("        ");
String cno = "", area = "", name = "", person = "", item = "", email = "", city = "";
            int contact = 0, price = 0;
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body id=\"top\">\n");
      out.write("        <div class=\"wrapper col1\">\n");
      out.write("            <div id=\"header\">\n");
      out.write("                <div id=\"topnav\">\n");
      out.write("                    <ul>\n");
      out.write("                        <li><a href=\"#\">View Property</a><span>Test Text Here</span>\n");
      out.write("                            <ul>\n");
      out.write("                                <li><a href=\"#\">Link 1</a></li>\n");
      out.write("                                <li><a href=\"#\">Link 2</a></li>\n");
      out.write("                                <li><a href=\"#\">Link 3</a></li>\n");
      out.write("\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                        <li><a href=\"index.html\">Log out</a><span>Test Text Here</span></li>\n");
      out.write("                        <li class=\"active\"><a href=\"index.html\">Home</a><span>Test Text Here</span></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"fl_left\">\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <br class=\"clear\" />\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- ####################################################################################################### -->\n");
      out.write("        <div class=\"wrapper col2\">\n");
      out.write("            <div id=\"featured_slide_\">\n");
      out.write("\n");
      out.write("                <center> \n");
      out.write("\n");
      out.write("                    <table><tr><th>Item</th><th>Price(Rs)</th><th>Area</th><th>Contact no.</th><th>Contact person</th><th>City</th></tr>\n");
      out.write("                                ");

                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/user", "root", "root");
                                        //String str=Beans.Userdetails.getEmail();
                                        String query = "select name,contact,item,price,area,items.email,city from project,items where project.email=items.email";
                                        PreparedStatement ps = (PreparedStatement) con.prepareStatement(query);
                                        //  ps.setString(1, str);
                                        ResultSet r1 = ps.executeQuery();
                                        while (r1.next()) {
                                            cno = r1.getString(1);
                                            price = r1.getInt(4);
                                            email = r1.getString(6);
                                            item = r1.getString(3);
                                            contact = r1.getInt(2);
                                            area = r1.getString(5);
                                            city = r1.getString(7);

                                
      out.write("\n");
      out.write("                        <tr><td><a href=\"c:/onlineImages/");
      out.print(email);
      out.write(".jpg\">");
      out.print(item);
      out.write("</a></td><td>");
      out.print(price);
      out.write("</td><td>");
      out.print(area);
      out.write("</td><td>");
      out.print(contact);
      out.write("</td><td>");
      out.print(cno);
      out.write("</td><td>");
      out.print(city);
      out.write("</td></tr>\n");
      out.write("                        }\n");
      out.write("                        ");

                                }
                            } catch (Exception e) {
                                out.print(e);
                            }
                        
      out.write("\n");
      out.write("                    </table>\n");
      out.write("                </center>\n");
      out.write("            </div>\n");
      out.write("            <!-- ####################################################################################################### -->\n");
      out.write("            <div class=\"wrapper col5\">\n");
      out.write("                <div id=\"footer\">\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
