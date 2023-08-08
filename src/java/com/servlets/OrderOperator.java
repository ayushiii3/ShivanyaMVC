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
public class OrderOperator extends HttpServlet {

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
            System.out.println(status);
            if(status==null || status.equals("null")){
            HttpSession session = request.getSession(false);
            ArrayList<String> orderId = new ArrayList<String>();
            ArrayList<String> date = new ArrayList<String>();
            ArrayList<String> userId = new ArrayList<String>();
            ArrayList<String> aacBlock = new ArrayList<String>();
            ArrayList<String> blockAdhesive = new ArrayList<String>();
            ArrayList<String> tileAdhesive = new ArrayList<String>();
            ArrayList<String> blockPlaster = new ArrayList<String>();
            ArrayList<String> total = new ArrayList<String>();
            ArrayList<String> deliveryDate = new ArrayList<String>();
            ArrayList<String> statusc = new ArrayList<String>();

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivanyamvc", "root", "root");
            PreparedStatement p = con.prepareStatement("Select * from orders order by date desc");
            ResultSet rs= p.executeQuery();
            while(rs.next()){
                orderId.add(rs.getString("orderId"));
                date.add(rs.getString("date"));
                aacBlock.add(rs.getString("aacBlock"));
                blockAdhesive.add(rs.getString("blockAdhesive"));
                tileAdhesive.add(rs.getString("tileAdhesive"));
                blockPlaster.add(rs.getString("blockPlaster"));
                total.add(rs.getString("total"));
                deliveryDate.add(rs.getString("deliveryDate"));
                userId.add(rs.getString("userId"));
                statusc.add(rs.getString("status"));
                
            }
            session.setAttribute("orderId", orderId);
            session.setAttribute("date", date);
            session.setAttribute("aacBlock", aacBlock);
            session.setAttribute("blockAdhesive", blockAdhesive);
            session.setAttribute("tileAdhesive", tileAdhesive);
            session.setAttribute("blockPlaster", blockPlaster);
            session.setAttribute("total", total);
            session.setAttribute("deliveryDate", deliveryDate);
            session.setAttribute("userId", userId);
            session.setAttribute("statusc", statusc);


            response.sendRedirect("OrderOperator.jsp");
        }
            
        else{
            HttpSession session = request.getSession(false);
            ArrayList<String> orderId = new ArrayList<String>();
            ArrayList<String> date = new ArrayList<String>();
            ArrayList<String> userId = new ArrayList<String>();
            ArrayList<String> aacBlock = new ArrayList<String>();
            ArrayList<String> blockAdhesive = new ArrayList<String>();
            ArrayList<String> tileAdhesive = new ArrayList<String>();
            ArrayList<String> blockPlaster = new ArrayList<String>();
            ArrayList<String> total = new ArrayList<String>();
            ArrayList<String> deliveryDate = new ArrayList<String>();
            ArrayList<String> statusc = new ArrayList<String>();

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivanyamvc", "root", "root");
            PreparedStatement p = con.prepareStatement("Select * from orders where status=? order by date desc");
            p.setString(1,status);
            ResultSet rs= p.executeQuery();
            while(rs.next()){
                orderId.add(rs.getString("orderId"));
                date.add(rs.getString("date"));
                aacBlock.add(rs.getString("aacBlock"));
                blockAdhesive.add(rs.getString("blockAdhesive"));
                tileAdhesive.add(rs.getString("tileAdhesive"));
                blockPlaster.add(rs.getString("blockPlaster"));
                total.add(rs.getString("total"));
                deliveryDate.add(rs.getString("deliveryDate"));
                userId.add(rs.getString("userId"));
                statusc.add(rs.getString("status"));
                
            }
            session.setAttribute("orderId", orderId);
            session.setAttribute("date", date);
            session.setAttribute("aacBlock", aacBlock);
            session.setAttribute("blockAdhesive", blockAdhesive);
            session.setAttribute("tileAdhesive", tileAdhesive);
            session.setAttribute("blockPlaster", blockPlaster);
            session.setAttribute("total", total);
            session.setAttribute("deliveryDate", deliveryDate);
            session.setAttribute("userId", userId);
            session.setAttribute("statusc", statusc);

            response.sendRedirect("OrderOperator.jsp");
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