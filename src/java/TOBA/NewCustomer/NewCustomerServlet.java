/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TOBA.NewCustomer;

import TOBA.Data.Account;
import TOBA.infrastructure.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import TOBA.infrastructure.User;
import TOBA.Data.UserDB;


//@WebServlet(name = "NewCustomerServlet", urlPatterns = {"/NewCustomerServlet"})
public class NewCustomerServlet extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String url = "/New_customer.jsp";
        
        // Get current action
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zipCode = request.getParameter("zipCode");
        String email = request.getParameter("email");
      
        String message;
   
        if (firstName.isEmpty() && lastName.isEmpty() && phone.isEmpty() &&
           address.isEmpty() && city.isEmpty() && state.isEmpty() &&
            zipCode.isEmpty() && email.isEmpty()) {
            message = "Please fill out all the Form Fields";
        } else {
            User user = new User(firstName, lastName, phone, address,
                                    city, state, zipCode, email);
            Account checking = new Account(user, 25.00, Account.AccountType.CHECKING);
            user.addAccount(checking);
            UserDB.insert(user);
            
            
            
            
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            message = "";
            url = "/success.jsp";
        }
    
       
        
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
     
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
    }

}
