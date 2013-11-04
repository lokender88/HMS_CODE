/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shms.authentication;

import com.shms.dbmodel.Userdetails;
import info.common.CommonDBConnection;
import info.common.UserTypes;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author lokendarp
 */
public class LoginAuthentication extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
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
        HttpSession session = request.getSession(true);;
        String str_userName = request.getParameter("username");
        String str_password = request.getParameter("pwd");

        Session hsession = null;
        Transaction tx = null;
        try {
            hsession = CommonDBConnection.getSessionFactory().getCurrentSession();
            if (hsession != null && hsession.isOpen()) {
                tx = hsession.beginTransaction();

                List list = hsession.createQuery("from Userdetails where idUserDetails='" + str_userName + "' and userDetailsPassword='" + str_password + "'").list();
                if (list != null && !list.isEmpty()) {
                    
                    Userdetails usersDetailsObject = (Userdetails) list.get(0);
                    String str_authType = usersDetailsObject.getUserDetailsDesignation();
                    session.setAttribute("session_userId", usersDetailsObject.getIdUserDetails());
                    session.setAttribute("session_userFirstName", usersDetailsObject.getUserDetailsFirstName());
                    session.setAttribute("session_userLastName", usersDetailsObject.getUserDetailsLastName());
                    session.setAttribute("session_userDesignation", str_authType);
                   
                    if (str_authType != null && str_authType.equals(UserTypes.ADMINISTRATOR)) {
                        response.sendRedirect("Admin_UserCreationForm.jsp");
                    } else if (str_authType != null && str_authType.equals(UserTypes.DOCTOR)) {
                    } else if (str_authType != null && str_authType.equals(UserTypes.LABASSISTANT)) {
                    } else if (str_authType != null && str_authType.equals(UserTypes.LABMANAGER)) {
                    } else if (str_authType != null && str_authType.equals(UserTypes.MANAGEMENT)) {
                    } else if (str_authType != null && str_authType.equals(UserTypes.PHARMACYASSISTANT)) {
                    } else if (str_authType != null && str_authType.equals(UserTypes.PHARMACYMANAGER)) {
                    } else if (str_authType != null && str_authType.equals(UserTypes.RECEPTIONIST)) {
                        response.sendRedirect("PatientRegistration.jsp");
                    } else {
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            tx.rollback();
            session.setAttribute("session_loginmessage", "Cannot establish connection with DB");
            response.sendRedirect("index.jsp");
        } finally {
            if (hsession != null && hsession.isOpen()) {
                try {
                    hsession.close();
                } catch (Exception e) {
                }
                out.close();
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
