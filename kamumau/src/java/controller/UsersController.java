/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.User;

/**
 *
 * @author x201
 */
@WebServlet(name = "UsersController", urlPatterns = {"/UsersController"})
public class UsersController extends HttpServlet {
    private final static String add_action ="new";
    private final static String login_action = "login";
    private final static String logout_action = "logout";
    private final static String list_action = "list";
    private String message="";

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
            String action = request.getParameter("action");
            if(action==null){
                action= "list";
            }
            try{
                switch (action){
                    case "new":
                        ShowNewForm(request, response);
                        break;
                    case "create":
                        createUser(request, response);
                        break;
                    case "login":
                        doLogin(request, response);
                        break;
                    case "logout":
                        doLogout(request, response);
                    case "welcomepage":
                        showWelcomePage(request, response);
                    default:
                        showLoginForm(request, response);
                        break;
                }
            }
            catch (SQLException ex){
                throw new ServletException(ex);
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

    private void doLogin(HttpServletRequest request, HttpServletResponse response) 
    throws SQLException, IOException,ServletException{
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        User user= new User();
        user.setEmail(email);
        user.setPassword(password);
        logout(request, response);
        if(user.doLogin()){
            setLoggedIn(user, request, response);
            showWelcomePage(request, response);
        }
        
    }

    private void doLogout(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException,IOException,SQLException{
        logout(request, response);
        showLoginForm(request, response);
    }

    private void showLoginForm(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException,IOException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("users/login.jsp");
        dispatcher.forward(request, response);
    }

    private void showWelcomePage(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private void logout(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private void setLoggedIn(User user, HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private void ShowNewForm(HttpServletRequest request, HttpServletResponse response) 
    throws ServletException,IOException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("users/signup.jsp");
        dispatcher.forward(request, response);
    }

    private void createUser(HttpServletRequest request, HttpServletResponse response) 
    throws SQLException,IOException,ServletException{
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String retpassword = request.getParameter("retpassword");
        String fullname = request.getParameter("fullname");
        String address = request.getParameter("address");
        String bankname = request.getParameter("bankname");
        String accountno = request.getParameter("accountno");
        
        User user = new User();
        user.setEmail(email);
        user.setPassword(password);
        user.setRetpassword(retpassword);
        user.setFullname(fullname);
        user.setAddress(address);
        user.setBankname(bankname);
        user.setAccountno(accountno);
        if(user.create()){
            message="new user added";
            request.setAttribute("message", message);
            response.sendRedirect("user?action="+add_action);
        }
        else{
            message= "new user failed to add";
            request.setAttribute("message", message);
            request.getRequestDispatcher("user?action="+add_action).include(request, response);
        }
        
    }

}
