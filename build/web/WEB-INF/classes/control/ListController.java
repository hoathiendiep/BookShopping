/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.*;
import dao.*;

/**
 *
 * @author Lenovo
 */
@WebServlet(name = "ListController", urlPatterns = {"/list"})
public class ListController extends HttpServlet {

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
        String book = request.getParameter("book");
        Integer authorId = request.getParameter("author") == null || request.getParameter("author").equals("") ? null : Integer.parseInt(request.getParameter("author"));
        Integer publishId = request.getParameter("publish") == null || request.getParameter("publish").equals("") ? null : Integer.parseInt(request.getParameter("publish"));
        Integer brandId = request.getParameter("brand") == null || request.getParameter("brand").equals("") ? null : Integer.parseInt(request.getParameter("brand"));
        String cateId = request.getParameter("cateId") == null ? "-1" : request.getParameter("cateId");

        ArrayList<Category> cateList = new CategoryDao().getData();
        ArrayList<Brand> brandList = new BrandDao().getByIdCate(Integer.parseInt(cateId));
        int sizeList = new ProductDao().getRecords(-1,-1,Integer.parseInt(cateId), brandId, book, publishId, authorId,false,false).size();

        ArrayList<Author> authorList = new AuthorDao().getData();
        ArrayList<Publisher> publishList = new PublisherDao().getData();
        Boolean desc = request.getParameter("desc") != null;
        Boolean asc = request.getParameter("asc") != null;

        int total = 6;
        String spageid = request.getParameter("page");
        int pageid = Integer.parseInt(spageid);

        if (pageid != 1) {
            pageid = pageid - 1;
            pageid = pageid * total + 1;
        }

        ArrayList<Product> list = new ProductDao().getRecords(pageid, total, Integer.parseInt(cateId), brandId, book, publishId, authorId, asc, desc);

        request.setAttribute("book", book);
        request.setAttribute("author", authorId);
        request.setAttribute("publish", publishId);
        request.setAttribute("brand", brandId);
        request.setAttribute("cateId", cateId);

        request.setAttribute("cateList", cateList);
        request.setAttribute("brandList", brandList);
        request.setAttribute("productsList", list);
        request.setAttribute("authorList", authorList);
        request.setAttribute("publishList", publishList);
        int totalPage = (sizeList - 1) / total + 1;
        request.setAttribute("totalPage", totalPage);
        request.setAttribute("sizelist", sizeList);
        request.getRequestDispatcher("list.jsp").forward(request, response);
    }

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
