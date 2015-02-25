/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author shubham
 */
public class login extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here
             out.println("<html>");
             out.println("<head>");
             out.println("<title>Servlet login</title>");  
             out.println("</head>");
             out.println("<body>");
             out.println("<h1>Servlet login at " + request.getContextPath () + "</h1>");
             out.println("</body>");
             out.println("</html>");
             */
            String u = (String) request.getAttribute("username");
            String p = (String) request.getAttribute("password");
            String cat = (String) request.getAttribute("ppl");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/user", "root", "root");
            String query = "select * from project where email=? and password=? and category=?";
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(query);
            ps.setString(1, u);
            ps.setString(2, p);
            ps.setString(3, cat);

            int flag = 0;
            String name = "";
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                flag = 1;
                name = rs.getString(1);
            }
            if (flag == 1) {
                Beans.Userdetails.setName(name);
                if (cat.equalsIgnoreCase("buy")) {
                    response.sendRedirect("Buyerhome2.jsp");
                } else if (cat.equalsIgnoreCase("sell")) {
                    response.sendRedirect("sellerhome.jsp");
                } else if (cat.equalsIgnoreCase("admin")) {
                    response.sendRedirect("Buyerhome.jsp");
                }
            } else {
                out.print("errorrr,f=" + flag+rs);
                out.print(u + " " + p + " " + cat);
            }
        } catch (Exception e) {
            out.print(e);
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
