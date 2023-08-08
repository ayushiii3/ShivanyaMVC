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
public class QueryOperator extends HttpServlet {

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
        
        try {
            String status =request.getParameter("status");
            if(status==null){
                HttpSession session = request.getSession(false);
            ArrayList<String> username = new ArrayList<String>();
            ArrayList<String> service = new ArrayList<String>();
            ArrayList<String> customer = new ArrayList<String>();
            ArrayList<String> roofMaterial = new ArrayList<String>();
            ArrayList<String> roofOrientation = new ArrayList<String>();
            ArrayList<String> installation = new ArrayList<String>();
            ArrayList<String> description = new ArrayList<String>();
            ArrayList<String> date = new ArrayList<String>();
            ArrayList<String> reply = new ArrayList<String>();
            ArrayList<String> statusc = new ArrayList<String>();

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivanyamvc", "root", "ayushi");
            PreparedStatement p = con.prepareStatement("Select * from solarenquiry order by date desc");
            ResultSet rs= p.executeQuery();
            while(rs.next()){
                username.add(rs.getString("username"));
                service.add(rs.getString("servicetype"));
                customer.add(rs.getString("typeofcustomer"));
                roofMaterial.add(rs.getString("roofmaterial"));
                roofOrientation.add(rs.getString("rooforientation"));
                installation.add(rs.getString("installation"));
                description.add(rs.getString("description"));
                date.add(rs.getString("date"));
                reply.add(rs.getString("reply"));
                statusc.add(rs.getString("status"));
                
            }
            session.setAttribute("username", username);
            session.setAttribute("service", service);
            session.setAttribute("customer", customer);
            session.setAttribute("roofMaterial", roofMaterial);
            session.setAttribute("roofOrientation", roofOrientation);
            session.setAttribute("installation", installation);
            session.setAttribute("description", description);
            session.setAttribute("date", date);
            session.setAttribute("reply", reply);
            session.setAttribute("statusc", statusc);

            response.sendRedirect("Enquiry.jsp");
        }
            
        else{
                HttpSession session = request.getSession(false);
            ArrayList<String> username = new ArrayList<String>();
            ArrayList<String> service = new ArrayList<String>();
            ArrayList<String> customer = new ArrayList<String>();
            ArrayList<String> roofMaterial = new ArrayList<String>();
            ArrayList<String> roofOrientation = new ArrayList<String>();
            ArrayList<String> installation = new ArrayList<String>();
            ArrayList<String> description = new ArrayList<String>();
            ArrayList<String> date = new ArrayList<String>();
            ArrayList<String> reply = new ArrayList<String>();
            ArrayList<String> statusc = new ArrayList<String>();

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivanyamvc", "root", "ayushi");
            PreparedStatement p = con.prepareStatement("Select * from solarenquiry where status=? order by date desc");
            p.setString(1,"status");
            ResultSet rs= p.executeQuery();
            while(rs.next()){
                username.add(rs.getString("username"));
                service.add(rs.getString("servicetype"));
                customer.add(rs.getString("typeofcustomer"));
                roofMaterial.add(rs.getString("roofmaterial"));
                roofOrientation.add(rs.getString("rooforientation"));
                installation.add(rs.getString("installation"));
                description.add(rs.getString("description"));
                date.add(rs.getString("date"));
                reply.add(rs.getString("reply"));
                statusc.add(rs.getString("status"));
                
            }
            session.setAttribute("username", username);
            session.setAttribute("service", service);
            session.setAttribute("customer", customer);
            session.setAttribute("roofMaterial", roofMaterial);
            session.setAttribute("roofOrientation", roofOrientation);
            session.setAttribute("installation", installation);
            session.setAttribute("description", description);
            session.setAttribute("date", date);
            session.setAttribute("reply", reply);
            session.setAttribute("statusc", statusc);

            response.sendRedirect("Enquiry.jsp");
            }
        }
        catch (Exception e){
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
