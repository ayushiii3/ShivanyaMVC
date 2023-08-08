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

/**
 *
 * @author deshp
 */
public class EditHomeData extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
             String aboutp1=request.getParameter("aboutp1");
             out.println(aboutp1);
             String aboutp2=request.getParameter("aboutp2");
             String services=request.getParameter("services");
             String service1=request.getParameter("service1");
             String service2=request.getParameter("service2");
             String service3=request.getParameter("service3");
             String service4=request.getParameter("service4");
             String service5=request.getParameter("service5");
             String address=request.getParameter("address");
             String contactno=request.getParameter("contactno");
             String email=request.getParameter("email");
             try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivanyamvc", "root", "ayushi");
                    PreparedStatement st = con.prepareStatement("update homedetails set aboutp1=?, aboutp2=?, services=?, service1=?,service2=?,service3=?,service4=?,service5=?,address=?,contactno=?, email=? where id=?");
                    st.setString(1,aboutp1);
                    st.setString(2,aboutp2);
                    st.setString(3,services);
                    st.setString(4,service1);
                    st.setString(5,service2);
                    st.setString(6,service3);
                    st.setString(7,service4);
                    st.setString(8,service5);
                    st.setString(9,address);
                    st.setString(10,contactno);
                    st.setString(11,email);
                    st.setInt(12,1);
                    st.executeUpdate();
                    response.sendRedirect("AdminHome.jsp");
             }
             catch(Exception e){
                e.printStackTrace();
                out.println("hello");
             }   
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
