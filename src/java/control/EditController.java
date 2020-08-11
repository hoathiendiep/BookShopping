/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.CategoryDao;
import dao.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.User;

/**
 *
 * @author Lenovo
 */
@WebServlet(name = "EditController", urlPatterns = {"/edit"})
public class EditController extends BaseRequiredLoginController {

    @Override
    protected void processGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("edit.jsp").forward(request, response);
    }

    @Override
    protected void processPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        Boolean gender = request.getParameter("gender").equals("male");
        String phone = request.getParameter("phone");
        String dob = request.getParameter("dob");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String uname = ((User) request.getSession().getAttribute("user")).getUsername();
        String pwd = request.getParameter("pwd");
        pwd = (pwd == null || pwd.equals(""))?((User) request.getSession().getAttribute("user")).getPassword():pwd;
        new UserDao().updateData(uname, pwd, fname, lname, email, dob, phone, address, gender);
        request.getSession().setAttribute("user", new UserDao().getByUserName(uname));
        request.setAttribute("update", true);
        ArrayList<Category> cateList = new CategoryDao().getData();
        request.setAttribute("cateList", cateList);
        request.getRequestDispatcher("edit.jsp").forward(request, response);
    }

}
