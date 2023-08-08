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
import java.time.LocalDate;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author CIT
 */
public class PlaceOrder extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivanyamvc", "root", "root");
            PreparedStatement p = con.prepareStatement("select * from order");
            ResultSet rs = p.executeQuery();
            if(rs.next()){
                int aacPrice = rs.getInt(1);
                int tilePrice = rs.getInt(2);
                int blockAdPrice = rs.getInt(3);
                int blockPlPrice = rs.getInt(4);
            
        HttpSession session = request.getSession(false);
        String name=request.getParameter("fname");
        String emailId=request.getParameter("emailId");
        String phoneNo=request.getParameter("phoneNo");
        String address=request.getParameter("address");
        String pincode=request.getParameter("pincode");
        String city=request.getParameter("city");
        String state=request.getParameter("state");
        String date = LocalDate.now().toString();
       
        int q1=Integer.parseInt(request.getParameter("q1"));
        int q2=Integer.parseInt(request.getParameter("q2"));
        int q3=Integer.parseInt(request.getParameter("q3"));
        int q4=Integer.parseInt(request.getParameter("q4"));
        
         
        int t1=aacPrice*q1;
        int t2=tilePrice*q2;
        int t3=blockAdPrice*q3;
        int t4=blockPlPrice*q4;
        
        int total=t1+t2+t3+t4;
        session.setAttribute("name",name);
        session.setAttribute("emailId",emailId);
        session.setAttribute("phoneNo",phoneNo);
        session.setAttribute("address",address);
        session.setAttribute("pincode",pincode);
        session.setAttribute("city",city);
        session.setAttribute("state",state);
        session.setAttribute("date",date);
        session.setAttribute("t1",t1);
        session.setAttribute("t1",t1);
        session.setAttribute("t2",t2);
        session.setAttribute("t3",t3);
        session.setAttribute("t4",t4);
        session.setAttribute("total",total);
        
        response.sendRedirect("PlaceOrder.jsp");
        }
    }catch(Exception e){
            e.printStackTrace();
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    
}
}
