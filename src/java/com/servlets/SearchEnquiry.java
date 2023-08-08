/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author CIT
 */
public class SearchEnquiry extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SearchEnquiry</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchEnquiry at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        try {
           HttpSession session = request.getSession(false);
           int id=Integer.parseInt(request.getParameter("enqid"));
           int RESULT=0;
           ArrayList<String> record=new ArrayList<String>();
           String searchbtn = request.getParameter("search");
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivanyamvc", "root", "root");
           if(searchbtn!=null && searchbtn.equals("SEARCH"))
            {
           PreparedStatement p = con.prepareStatement("Select * from solarenquiry where enqID=?");
            p.setInt(1, id);
            p.executeUpdate();
            ResultSet rs= p.executeQuery();
            if(rs.next()){
                RESULT=1;
                record.add(rs.getString("enqID"));
                record.add(rs.getString("username"));
                record.add(rs.getString("servicetype"));
                record.add(rs.getString("typeofcustomer"));
                record.add(rs.getString("roofmaterial"));
                record.add(rs.getString("rooforientation"));
                record.add(rs.getString("installation"));
                record.add(rs.getString("description"));
                record.add(rs.getString("date"));
                record.add(rs.getString("reply"));
                record.add(rs.getString("status"));
            }else{
                RESULT=0;
            }
            }
            session.setAttribute("RESULT", RESULT);
            session.setAttribute("searchbtn", searchbtn);
            session.setAttribute("record", record);
            response.sendRedirect("QueryOperator");
            }
            
        catch (Exception e){
            e.printStackTrace();
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
