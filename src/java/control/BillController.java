/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.CategoryDao;
import dao.OrderDao;
import dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.SecureRandom;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Item;
import model.ShoppingCart;
import model.User;

/**
 *
 * @author Lenovo
 */
@WebServlet(name = "BillController", urlPatterns = {"/bill"})
public class BillController extends BaseRequiredLoginController {

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        shoppingCart = (ShoppingCart) request.getSession(true).getAttribute("cart");
        ArrayList<Category> cateList = new CategoryDao().getData();
        request.setAttribute("cateList", cateList);
        request.getRequestDispatcher("bill.jsp").forward(request, response);
    }

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double total = (double) shoppingCart.total();
        ArrayList<Item> lst = shoppingCart.getCart();
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");

        String orderId = ranDomId(new OrderDao().orderId());
        User user = ((User) request.getSession().getAttribute("user"));
        int id = new UserDao().getId(user.getUsername());
        new OrderDao().insertOrder(id, orderId, total, fname, lname, phone, email, address);

        new OrderDao().insertDetails(lst, orderId);
        request.getSession().setAttribute("cart", null);
        request.getRequestDispatcher("inform.jsp").forward(request, response);
    }
    private ShoppingCart shoppingCart;

    private static final String ALPHA = "qwertyuiopasdfghjklzxcvbnm";
    private static final String ALPHA_NUMERIC_STRING = "0123456789" + ALPHA + ALPHA.toUpperCase();

    private String ranDomId(ArrayList<String> lstId) {
        SecureRandom rnd = new SecureRandom();
        int len = 6;
        StringBuilder sb = new StringBuilder(len);
        do {
            for (int i = 0; i < len; i++) {
                sb.append(ALPHA_NUMERIC_STRING.charAt(rnd.nextInt(ALPHA_NUMERIC_STRING.length())));
            }
            if (lstId == null) {
                break;
            }
        } while (lstId.contains(sb.toString()));
        return sb.toString();
    }

}
