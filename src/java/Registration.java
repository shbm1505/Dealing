/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author shubham
 */
@WebServlet(name = "Registration", urlPatterns = {"/Registration"})
public class Registration extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Connection connection;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String n = (String) request.getAttribute("name");
            String a = (String) request.getAttribute("activity");
            String e = (String) request.getAttribute("email");
            String pass = (String) request.getAttribute("password");
            String p = (String) request.getAttribute("place");
            Integer c = (Integer) request.getAttribute("contact");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/user", "root", "root");
            String query = "insert into project values(?,?,?,?,?,?)";
            PreparedStatement ps = (PreparedStatement) con.prepareStatement(query);
            ps.setString(1, n);
            ps.setString(2, a);
            ps.setString(3, e);
            ps.setString(4, p);
            ps.setInt(5, c);
            ps.setString(6, pass);

            int br = ps.executeUpdate();

            if (br == 1) {
                out.println(n);
                out.println(a);
                out.println(e);
                out.println(pass);
                out.println(p);
                out.println(c);
                Beans.Userdetails.setActivity(a);
                Beans.Userdetails.setName(n);
                Beans.Userdetails.setEmail(e);
                if (a.equalsIgnoreCase("buy")) {
                    //  request.setAttribute("name", n);
                    //  RequestDispatcher rd = request.getRequestDispatcher("Buyerhome.jsp");
                    //rd.forward(request, response);
                    response.sendRedirect("Buyerhome2.jsp");
                } else {
                    // request.setAttribute("name", n);
                    //RequestDispatcher rd = request.getRequestDispatcher("sellerhome4.jsp");
                    //rd.forward(request, response);
                    response.sendRedirect("sellerhome4.jsp");
                }

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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Registration.class.getName()).log(Level.SEVERE, null, ex);
        }
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
