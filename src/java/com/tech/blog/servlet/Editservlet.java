/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.tech.blog.servlet;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entites.Message;
import com.tech.blog.entites.User;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.helper.Helper;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author HELLO
 */

@MultipartConfig
public class Editservlet extends HttpServlet {

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
            out.println("<title>Servlet Editservlet</title>");            
            out.println("</head>");
            out.println("<body>");
        
            
            
            String useremail= request.getParameter("user_email");
            String username= request.getParameter("user_name");
            String userpassword = request.getParameter("user_password");
            Part part = request.getPart("image");
            
            String imageName = part.getSubmittedFileName();
            
            HttpSession s = request.getSession();
            User user = (User)s.getAttribute("currentuser");
            user.setEmail(useremail);
            user.setName(username);
            user.setPassword(userpassword);
            String old = user.getProfile();
            user.setProfile(imageName);
            
            
            UserDao userdao = new UserDao(ConnectionProvider.getConnection());
            
      boolean ans = userdao.upadateUser(user);
            
      
          
     if(ans) {
     
         out.println("Upadeted to db");
         
         String path = request.getRealPath("/")+"pics"+File.separator+user.getProfile();
         
        
         String oldpath = request.getRealPath("/")+"pics"+File.separator+old;
       
         if(!old.equals("default.png")){
         
                 Helper.deleteFile(oldpath);
         }
         
     
        
         if(Helper.saveFile(part.getInputStream(), path)){
         
                Message msg= new Message("Profile Updated...","success","alert-success");
              
                s.setAttribute("msg", msg);
             
            
         
         }else{
         
              Message msg= new Message("Something went Wrong...","error","alert-danger");
              
                s.setAttribute("msg", msg);
             
             
         }
            
            
      
         
      }   
      
      else{
       Message msg= new Message("Something went Wrong...","error","alert-danger");
              
                s.setAttribute("msg", msg);
             
         
         
      }
            
         response.sendRedirect("profile.jsp");
     
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

    private Connection ConnectionProvider() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
