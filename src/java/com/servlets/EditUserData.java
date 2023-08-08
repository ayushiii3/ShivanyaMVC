/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author deshp
 */
public class EditUserData extends HttpServlet {

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
        HttpSession session = request.getSession(false);
        if (session != null) {
            String ufirstname = request.getParameter("ufirstname");
            String ulastname = request.getParameter("ulastname");
            String uusername = request.getParameter("uusername");
            String uemail = request.getParameter("uemail");
            String ucontactno = request.getParameter("ucontactno");
            try {
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivanyamvc", "root", "ayushi");
                PreparedStatement st = con.prepareStatement("update usertable set username=?, firstname=?, lastname=?, email=?, contactno=? where username=?");
                st.setString(1, uusername);
                st.setString(2, ufirstname);
                st.setString(3, ulastname);
                st.setString(4, uemail);
                st.setString(5, ucontactno);
                st.setString(6, (String) session.getAttribute("username"));
                st.executeUpdate();
//                out.println(ufirstname);
//                out.println(ulastname);
                session.setAttribute("username",uusername);
//                session.setAttribute("firstname",ufirstname);
//                session.setAttribute("lastname",ulastname);
//                session.setAttribute("contactno", ucontactno);
//                session.setAttribute("email",uemail);
                response.sendRedirect("Dashboard");
            } catch (Exception e) {
                out.println("errorr..");
                e.printStackTrace();
            }  
        }
//        update usertable set username=?, firstname=?, lastname=?,  email=?,contactno=? where username=?
//        UPDATE Customers
//SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
//WHERE CustomerID = 1;
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
