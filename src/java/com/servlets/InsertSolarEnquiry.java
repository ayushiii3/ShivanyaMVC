package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.time.LocalDate;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author CIT
 */
public class InsertSolarEnquiry extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String username=request.getParameter("username");
        if(username==null){
            out.println("You are not logged in. Please login from home page...");
        }
        else{
            String email = request.getParameter("email");
            String contactno = request.getParameter("contactno");
            String address = request.getParameter("address");
            String servicetype = request.getParameter("servicetype");
            String customertype = request.getParameter("customertype");
            String roofmaterial = request.getParameter("roofmaterial");
            String orientation = request.getParameter("orientation");
            String installation = request.getParameter("installation");
            String description = request.getParameter("description");
//            Date datenow = new Date();
            String date = LocalDate.now().toString();
            
            
            String reply="";
            String status="Not Answered";
            
            try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivanyamvc", "root", "ayushi");
            PreparedStatement p = con.prepareStatement("INSERT INTO solarenquiry VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)");
            p.setString(1, username);
            p.setString(2, email);
            p.setString(3, contactno);
            p.setString(4, address);
            p.setString(5, servicetype);
            p.setString(6, customertype);
            p.setString(7, roofmaterial);
            p.setString(8, orientation);
            p.setString(9, installation);
            p.setString(10, description);
            p.setString(11, date);
            p.setString(12, reply);
            p.setString(13, status);
           
            p.executeUpdate();
            response.sendRedirect("SolarEnergy");
            
            }  
              catch (Exception e){
                  e.printStackTrace();
                  out.println("Error!!!");
              }
        }
               
               
            
          
        }
    }