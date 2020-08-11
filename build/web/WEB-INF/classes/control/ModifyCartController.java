/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.ProductDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Item;
import model.Product;
import model.ShoppingCart;

/**
 *
 * @author Lenovo
 */
@WebServlet(name = "ModifyCartController", urlPatterns = {"/modify"})
public class ModifyCartController extends BaseRequiredLoginController {
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true); 
        ShoppingCart cart =(ShoppingCart)session.getAttribute("cart");
        Product product = new ProductDao().getById(Integer.parseInt(request.getParameter("id")));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        cart.resetQuantity(new Item(product, 0), quantity);
        response.sendRedirect("cart");
    }

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

}
