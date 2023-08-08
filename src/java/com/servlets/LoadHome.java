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
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author deshp
 */
public class LoadHome extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivanyamvc", "root", "ayushi");
            PreparedStatement p = con.prepareStatement("select * from homedetails");
            ResultSet rs = p.executeQuery();
            if(rs.next()){
                String aboutp1 = rs.getString(2);
                String aboutp2 = rs.getString(3);
                String services = rs.getString(4);
                String service1 = rs.getString(5);
                String service2 = rs.getString(6);
                String service3 = rs.getString(7);
                String service4 = rs.getString(8);
                String service5 = rs.getString(9);
                String address = rs.getString(10);
                String contactno = rs.getString(11);
                String email = rs.getString(12);
                
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("ShivanyaHome.jsp");
                request.setAttribute("aboutp1", aboutp1);
                request.setAttribute("aboutp2", aboutp2);
                request.setAttribute("services", services);
                request.setAttribute("service1", service1);
                request.setAttribute("service2", service2);
                request.setAttribute("service3", service3);
                request.setAttribute("service4", service4);
                request.setAttribute("service5", service5);
                request.setAttribute("address", address);
                request.setAttribute("contactno", contactno);
                request.setAttribute("email", email);
                
                requestDispatcher.forward(request, response);
                response.sendRedirect("ShivanyaHome.jsp");
                
                
                
            }
        }catch(Exception e){
            e.printStackTrace();
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
